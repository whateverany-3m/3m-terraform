3M_ROOT := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
MK_ROOT := $(3M_ROOT)/3m-common/make

include $(MK_ROOT)/ci.mk
