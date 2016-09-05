BUILDDATE=`date +%F`
mkdir -p tar_output
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_TCLTK_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_TCLTK_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_PYTHON_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_PYTHON_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_FREETYPE_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_FREETYPE_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_GDCM_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_GDCM_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_VTK_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_VTK_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_ITK_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_ITK_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_OPENCASCADE_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_OPENCASCADE_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MMG_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_MMG_DIR
REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MITK_DIR-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/REPLACEME_SV_MITK_DIR

REPLACEME_TAR --transform='s,REPLACEME_NO_FIRST_SLASH_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR/,,g' -cvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.everything-BUILD${BUILDDATE}.tar.gz  REPLACEME_SV_TOPLEVEL_BINDIR/REPLACEME_SV_COMPILER_BIN_DIR/REPLACEME_SV_ARCH_DIR

