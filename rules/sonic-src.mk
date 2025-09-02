#
# Copyright (c) 2019-2023 NVIDIA CORPORATION & AFFILIATES.
# source and gcno files for coverage use
#
.ONESHELL:
SHELL = /bin/bash
.SHELLFLAGS += -e

SONIC_SRC_FILES = sonic_src_cov.tar.gz
$(SONIC_SRC_FILES)_SRC_PATH = $(SRC_PATH)/sonic-src-cov

$(SONIC_SRC_FILES)_DEPENDS += $(SWSS) $(LIBSWSSCOMMON) $(SYNCD)

SONIC_MAKE_FILES += $(SONIC_SRC_FILES)

MLNX_FILES += $(SONIC_SRC_FILES)

export SONIC_SRC_FILES

