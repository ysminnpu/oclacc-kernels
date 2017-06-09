#SUBDIRS=failing

include Makefile.include

INC=-I$(OCLACC_DIR)/include/CL -include opencl_spir.h
SPIR=-cl-std=CL2.0

cl_src=$(wildcard *.cl)
bc=$(patsubst %.cl,%.bc,$(cl_src))
llvm=$(patsubst %.cl,%.ll,$(cl_src))

dot=$(wildcard *.dot)
png=$(patsubst %.dot,%.png,$(dot))
svg=$(patsubst %.dot,%.svg,$(dot))

all: $(bc) $(llvm) $(png) $(svg)

SPIRCFLAGS := -cc1 -O3 -triple spir64-unknown-unknown $(SPIR) -cl-spir-compile-options "$(SPIR)"

%.bc: %.ll
	$(SPIRCC) $(SPIRCFLAGS) -emit-llvm-bc $(INC) $< -o $@

%.ll: %.cl
	$(SPIRCC) $(SPIRCFLAGS) -emit-llvm $(INC) $< -o $@

%.png: %.dot
	dot -Tpng $< > $@

%.svg: %.dot
	dot -Tsvg $< > $@

clean:
	rm -f $(bc) $(llvm)

distclean:
	rm -f *.dot *.png *.svg

#SPIRCFLAGS += -g

all: $(bc) $(llvm)
