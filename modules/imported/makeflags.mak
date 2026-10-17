IMPORTED_ARCH ?= $(shell uname -i 2>/dev/null || uname -m)
# Astra Linux 1.7 / kernel 6.1 adaptation: some minimal containers/distros have
# no `uname -i` (returns "unknown"); normalize to a supported architecture.
ifeq ($(filter x86_64 i386,$(IMPORTED_ARCH)),)
IMPORTED_ARCH := $(shell uname -m | sed 's/^i.86$$/i386/')
endif

include $(TOP)/modules/imported/makeflags-$(IMPORTED_ARCH).mak
