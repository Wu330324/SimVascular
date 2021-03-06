#include "svModelCreate.h"
#include "ui_svModelCreate.h"

#include "svModel.h"
#include "svDataNodeOperation.h"
#include "svModelElementFactory.h"

#include <mitkDataStorage.h>
#include <mitkDataNode.h>
#include <mitkNodePredicateDataType.h>
#include <mitkUndoController.h>
#include <mitkImage.h>

#include <QMessageBox>
#include <QFileDialog>

#include <iostream>
using namespace std;

svModelCreate::svModelCreate(mitk::DataStorage::Pointer dataStorage, mitk::DataNode::Pointer selectedNode, int timeStep)
    : ui(new Ui::svModelCreate)
    , m_DataStorage(dataStorage)
    , m_SelecteNode(selectedNode)
    , m_TimeStep(timeStep)
    , m_CreateModel(true)
    , m_ModelFolderNode(NULL)
{
    m_Interface=new svDataNodeOperationInterface;

    ui->setupUi(this);
    connect(ui->buttonBox, SIGNAL(accepted()), this, SLOT(CreateModel()));
    connect(ui->buttonBox, SIGNAL(rejected()), this, SLOT(Cancel()));
    connect(ui->lineEditModelName, SIGNAL(returnPressed()), this, SLOT(CreateModel()));

    ui->comboBoxType->clear();

    std::vector<std::string> types=svModelElementFactory::GetAvailableTypes();
    for(int i=0;i<types.size();i++)
        ui->comboBoxType->addItem(QString::fromStdString(types[i]));

    move(400,400);
}

svModelCreate::~svModelCreate()
{
    delete ui;
}

void svModelCreate::SetFocus( )
{
    ui->lineEditModelName->setFocus();
}

void svModelCreate::CreateModel()
{
    mitk::NodePredicateDataType::Pointer isModelFolder = mitk::NodePredicateDataType::New("svModelFolder");
    mitk::NodePredicateDataType::Pointer isModelNode = mitk::NodePredicateDataType::New("svModel");
    mitk::DataNode::Pointer modelNode=NULL;

    if(m_SelecteNode.IsNull())
        return;

    mitk::DataNode::Pointer node=m_SelecteNode;

    if(isModelFolder->CheckNode(node)){
        m_ModelFolderNode=node;
    }else if(isModelNode->CheckNode(node)){
        modelNode=node;
        mitk::DataStorage::SetOfObjects::ConstPointer rs = m_DataStorage->GetSources(node);
        if(rs->size()>0){
            m_ModelFolderNode=rs->GetElement(0);
        }else{
            return;
        }
    }else{
        return;
    }

    std::string modelName=ui->lineEditModelName->text().trimmed().toStdString();


    if(modelName==""){
        QMessageBox::warning(NULL,"Model Empty","Please give a model name!");
        return;
    }

    mitk::DataNode::Pointer exitingNode=m_DataStorage->GetNamedDerivedNode(modelName.c_str(),m_ModelFolderNode);
    if(exitingNode){
        QMessageBox::warning(NULL,"Model Already Created","Please use a different model name!");
        return;
    }

    QString currentType=ui->comboBoxType->currentText().trimmed();
    int currentIndex=ui->comboBoxType->currentIndex();

    svModel::Pointer solidModel=svModel::New();
    solidModel->SetDataModified();
//    int timeStep=m_TimeStep;

    if(currentIndex<0 || currentType=="")
        return;

    solidModel->SetType(currentType.toStdString());

    mitk::DataNode::Pointer solidModelNode = mitk::DataNode::New();
    solidModelNode->SetData(solidModel);
    solidModelNode->SetName(modelName);

//    m_DataStorage->Add(solidModelNode,m_ModelFolderNode);
    mitk::OperationEvent::IncCurrObjectEventId();

    bool undoEnabled=true;
    svDataNodeOperation* doOp = new svDataNodeOperation(svDataNodeOperation::OpADDDATANODE,m_DataStorage,solidModelNode,m_ModelFolderNode);
    if(undoEnabled)
    {
        svDataNodeOperation* undoOp = new svDataNodeOperation(svDataNodeOperation::OpREMOVEDATANODE,m_DataStorage,solidModelNode,m_ModelFolderNode);
        mitk::OperationEvent *operationEvent = new mitk::OperationEvent(m_Interface, doOp, undoOp, "Add DataNode");
        mitk::UndoController::GetCurrentUndoModel()->SetOperationEvent( operationEvent );
    }
    m_Interface->ExecuteOperation(doOp);

    hide();
}

void svModelCreate::Cancel()
{
    hide();
}

