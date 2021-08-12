CMAKE = /tools/cmake/redhat/8/3.21.1/bin/cmake

export PATH := /tools/conan/redhat/7/1.34.1/bin/:${PATH}
export LD_LIBRARY_PATH=/tools/gcc/redhat/8/10.1.0/lib64

.PHONY:	clean all debug release

all: debug release

debug:
	@echo "debug"
	$(CMAKE) -S . -B build/debug -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=.
	$(CMAKE) --build build/debug

release:
	@echo "release"
	$(CMAKE) -S . -B build/release -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=.
	$(CMAKE) --build build/release

clean:
	@find . -name "*~" -delete
	@rm -rf bin/ build/

