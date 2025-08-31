# Main program is libsystool.${LSuf}

PROG =	libsystool.${LSuf}

include ../make.${Compiler_Version}

BD =../${PSrcDir}/src

include ../systool_mak.include

SRCS_f90 = sys/unix/nullFunc.f90 sys/unix/winAPI_fd.f90 sys/unix/args.f90 \
	  sys/unix/winAPI_mod.f90 sys/unix/SYStool/FINI_mod.f90 \
	  sys/unix/SYStool/INI_mod.f90 sys/unix/SYStool/sysfunc.f90

OBJS_f90 := $(subst .f90,.o,$(SRCS_f90))

OBJS :=  $(OBJS_f90) 

DIRS = sys/unix sys/unix/SYStool

all: $(DIRS) $(PROG) separator

separator:
	@echo ==========================================================================

$(DIRS): FORCE
	$(shell [ -d "$@" ] || mkdir -p "$@")

FORCE:

$(PROG): $(OBJS) $(LIBDEPENDS)
	$(LD) $(PROG) $(OBJS) $(LIBS) $(LDFLAGS)

$(OBJS_f90): %.o:$(filter /\%.f90,$(SRCS_f90))
	$(FC) -o $@ $(FCFLAGS) $< 


sys/unix/winAPI_fd.o:$(BD)/sys/unix/winAPI_fd.f90  \
	  lib/SCIPUFFlib/FileMgr/inc/basic_fd.o \
	  lib/SCIPUFFlib/SCIPUFF/inc/param_fd.o

sys/unix/nullFunc.o:$(BD)/sys/unix/nullFunc.f90  sys/unix/winAPI_fd.o

sys/unix/args.o:$(BD)/sys/unix/args.f90  sys/unix/winAPI_fd.o

sys/unix/winAPI_mod.o:$(BD)/sys/unix/winAPI_mod.f90  sys/unix/winAPI_fd.o \
	  lib/SCIPUFFlib/SCIPUFF/inc/search_fd.o

sys/unix/SYStool/FINI_mod.o:$(BD)/sys/unix/SYStool/FINI_mod.f90  \
	  sys/unix/winAPI_fd.o

sys/unix/SYStool/INI_mod.o:$(BD)/sys/unix/SYStool/INI_mod.f90  \
	  sys/unix/SYStool/FINI_mod.o

sys/unix/SYStool/sysfunc.o:$(BD)/sys/unix/SYStool/sysfunc.f90  \
	  lib/SCIPUFFlib/FileMgr/inc/basic_fd.o \
	  lib/SCIPUFFlib/SCIPUFF/inc/default_fd.o \
	  lib/SCIPUFFlib/SCIPUFF/inc/param_fd.o \
	  lib/SCIPUFFlib/SCIMgr/inc/SCIPresults_fd.o \
	  sys/unix/SYStool/INI_mod.o sys/unix/winAPI_fd.o \
	  sys/unix/winAPI_mod.o


# Entry for " make clean " to get rid of all object and module files 
clean:
	rm -f $(OBJS) $(PROG)  maxlength_fd.mod winapi_fd.mod \
	  command_args.mod swinapi.mod fini.mod ini.mod
