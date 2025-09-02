#
# Copyright (c) 2019-2023 NVIDIA CORPORATION & AFFILIATES.
#
# source and gcno files for coverage use
#

.ONESHELL:
SHELL = /bin/bash
.SHELLFLAGS += -e

MAIN_TARGET = sonic_src_cov.tar.gz

$(addprefix $(DEST)/, $(MAIN_TARGET)): $(DEST)/% :
	pushd /sonic
	DEBUG_IMG="y" \
	DEBUG_SRC_ARCHIVE_DIRS="$(DBG_SRC_ARCHIVE)" \
	DEBUG_SRC_ARCHIVE_FILE="$(MAIN_TARGET)" \
	scripts/dbg_files.sh
	mv $(MAIN_TARGET) $(DEST)/$(MAIN_TARGET)
	popd
