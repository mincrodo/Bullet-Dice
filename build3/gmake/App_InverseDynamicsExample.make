# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release64
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/App_InverseDynamicsExample
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_InverseDynamicsExample_gmake_x64_release
  DEFINES   += -DB3_USE_STANDALONE_EXAMPLE
  INCLUDES  += -I../../src
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../../bin/libBulletInverseDynamicsUtils_gmake_x64_release.a ../../bin/libBulletInverseDynamics_gmake_x64_release.a ../../bin/libBullet3Common_gmake_x64_release.a ../../bin/libBulletDynamics_gmake_x64_release.a ../../bin/libBulletCollision_gmake_x64_release.a ../../bin/libLinearMath_gmake_x64_release.a
  LDDEPS    += ../../bin/libBulletInverseDynamicsUtils_gmake_x64_release.a ../../bin/libBulletInverseDynamics_gmake_x64_release.a ../../bin/libBullet3Common_gmake_x64_release.a ../../bin/libBulletDynamics_gmake_x64_release.a ../../bin/libBulletCollision_gmake_x64_release.a ../../bin/libLinearMath_gmake_x64_release.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/App_InverseDynamicsExample
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/App_InverseDynamicsExample_gmake_x64_debug
  DEFINES   += -D_DEBUG=1 -DB3_USE_STANDALONE_EXAMPLE
  INCLUDES  += -I../../src
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -ffast-math -m64
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../bin -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../../bin/libBulletInverseDynamicsUtils_gmake_x64_debug.a ../../bin/libBulletInverseDynamics_gmake_x64_debug.a ../../bin/libBullet3Common_gmake_x64_debug.a ../../bin/libBulletDynamics_gmake_x64_debug.a ../../bin/libBulletCollision_gmake_x64_debug.a ../../bin/libLinearMath_gmake_x64_debug.a
  LDDEPS    += ../../bin/libBulletInverseDynamicsUtils_gmake_x64_debug.a ../../bin/libBulletInverseDynamics_gmake_x64_debug.a ../../bin/libBullet3Common_gmake_x64_debug.a ../../bin/libBulletDynamics_gmake_x64_debug.a ../../bin/libBulletCollision_gmake_x64_debug.a ../../bin/libLinearMath_gmake_x64_debug.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/InverseDynamicsExample.o \
	$(OBJDIR)/main_console_single_example.o \
	$(OBJDIR)/b3ResourcePath.o \
	$(OBJDIR)/TimeSeriesCanvas.o \
	$(OBJDIR)/TimeSeriesFontData.o \
	$(OBJDIR)/InvertedPendulumPDControl.o \
	$(OBJDIR)/tinystr.o \
	$(OBJDIR)/tinyxml.o \
	$(OBJDIR)/tinyxmlerror.o \
	$(OBJDIR)/tinyxmlparser.o \
	$(OBJDIR)/tiny_obj_loader.o \
	$(OBJDIR)/LoadMeshFromCollada.o \
	$(OBJDIR)/LoadMeshFromObj.o \
	$(OBJDIR)/Wavefront2GLInstanceGraphicsShape.o \
	$(OBJDIR)/BulletUrdfImporter.o \
	$(OBJDIR)/MyMultiBodyCreator.o \
	$(OBJDIR)/URDF2Bullet.o \
	$(OBJDIR)/UrdfParser.o \
	$(OBJDIR)/urdfStringSplit.o \
	$(OBJDIR)/b3ImportMeshUtility.o \
	$(OBJDIR)/stb_image.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking App_InverseDynamicsExample
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning App_InverseDynamicsExample
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	-$(SILENT) cp $< $(OBJDIR)
else
	$(SILENT) xcopy /D /Y /Q "$(subst /,\,$<)" "$(subst /,\,$(OBJDIR))" 1>nul
endif
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
endif

$(OBJDIR)/InverseDynamicsExample.o: ../../examples/InverseDynamics/InverseDynamicsExample.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/main_console_single_example.o: ../../examples/StandaloneMain/main_console_single_example.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3ResourcePath.o: ../../examples/Utils/b3ResourcePath.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/TimeSeriesCanvas.o: ../../examples/RenderingExamples/TimeSeriesCanvas.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/TimeSeriesFontData.o: ../../examples/RenderingExamples/TimeSeriesFontData.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/InvertedPendulumPDControl.o: ../../examples/MultiBody/InvertedPendulumPDControl.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinystr.o: ../../examples/ThirdPartyLibs/tinyxml/tinystr.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxml.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxml.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxmlerror.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxmlerror.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tinyxmlparser.o: ../../examples/ThirdPartyLibs/tinyxml/tinyxmlparser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/tiny_obj_loader.o: ../../examples/ThirdPartyLibs/Wavefront/tiny_obj_loader.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/LoadMeshFromCollada.o: ../../examples/Importers/ImportColladaDemo/LoadMeshFromCollada.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/LoadMeshFromObj.o: ../../examples/Importers/ImportObjDemo/LoadMeshFromObj.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/Wavefront2GLInstanceGraphicsShape.o: ../../examples/Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/BulletUrdfImporter.o: ../../examples/Importers/ImportURDFDemo/BulletUrdfImporter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/MyMultiBodyCreator.o: ../../examples/Importers/ImportURDFDemo/MyMultiBodyCreator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/URDF2Bullet.o: ../../examples/Importers/ImportURDFDemo/URDF2Bullet.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/UrdfParser.o: ../../examples/Importers/ImportURDFDemo/UrdfParser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/urdfStringSplit.o: ../../examples/Importers/ImportURDFDemo/urdfStringSplit.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/b3ImportMeshUtility.o: ../../examples/Importers/ImportMeshUtility/b3ImportMeshUtility.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/stb_image.o: ../../examples/ThirdPartyLibs/stb_image/stb_image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)