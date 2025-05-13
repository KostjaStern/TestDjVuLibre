
GCC = g++
MACROS = -D HAVE_CONFIG_H=1
FLAGS = -framework CoreFoundation
# -I <dir>                Add directory to the end of the list of include search paths
# -L <dir>                Add directory to library search path
# -D <macro>=<value>      Define <macro> to <value> (or 1 if <value> omitted)

ODIR = obj
SDIR = ./src
INC = -I ./inc

# ./inc
# /usr/local/include
# /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1
# /Library/Developer/CommandLineTools/usr/lib/clang/17/include
# /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include
# /Library/Developer/CommandLineTools/usr/include
# /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks (framework directory)
# End of search list.

#

# /Library/Developer/CommandLineTools/SDKs/MacOSX15.4.sdk/System/Library/Frameworks/CoreFoundation.framework/Versions/Current/Headers
# ECHO = echo

# AC_CHECK_DECL([__APPLE__],[have_os_apple=yes],[have_os_apple=no])
# 
# if HAVE_OS_APPLE
# libdjvulibre_la_LDFLAGS += -framework CoreFoundation
# endif
# 
#
# if test x$have_os_apple = xyes && test -d /opt/local ; then
#    CPPFLAGS="$CPPFLAGS -I/opt/local/include"
#    LDFLAGS="$LDFLAGS -L/opt/local/lib"
# elif test x$have_os_apple = xyes && test -d /sw ; then
#    CPPFLAGS="$CPPFLAGS -I/sw/include"
#    LDFLAGS="$LDFLAGS -L/sw/lib"
#fi



# BSEncodeByteStream.cpp djvudump.cpp DjVuGlobalMemory.cpp GUnicode.cpp IW44EncodeCodec.cpp JB2EncodeCodec.cpp

SRC_FILES = Arrays.cpp atomic.cpp BSByteStream.cpp BSEncodeByteStream.cpp ByteStream.cpp DataPool.cpp ddjvuapi.cpp debug.cpp DjVmDir.cpp DjVmDir0.cpp DjVmDoc.cpp \
        DjVmNav.cpp DjVuAnno.cpp DjVuDocEditor.cpp DjVuDocument.cpp djvudump.cpp DjVuDumpHelper.cpp DjVuErrorList.cpp DjVuFile.cpp DjVuFileCache.cpp DjVuGlobal.cpp \
        DjVuGlobalMemory.cpp DjVuImage.cpp DjVuInfo.cpp DjVuMessage.cpp DjVuMessageLite.cpp DjVuNavDir.cpp DjVuPalette.cpp DjVuPort.cpp DjVuText.cpp DjVuToPS.cpp \
        GBitmap.cpp GContainer.cpp GException.cpp GIFFManager.cpp GMapAreas.cpp GOS.cpp GPixmap.cpp GRect.cpp GScaler.cpp GSmartPointer.cpp GString.cpp GThreads.cpp \
        GUnicode.cpp GURL.cpp IFFByteStream.cpp IW44EncodeCodec.cpp IW44Image.cpp JB2EncodeCodec.cpp JB2Image.cpp JPEGDecoder.cpp miniexp.cpp MMRDecoder.cpp MMX.cpp \
        UnicodeByteStream.cpp XMLParser.cpp XMLTags.cpp ZPCodec.cpp


SRC = $(patsubst %,$(SDIR)/%,$(SRC_FILES))

# warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]

# CPP_FILES := $(H_FILES:.h=.cpp)
# sets ‘bar’ to ‘a.c b.c l.a c.c’

# g++ -o result test.cpp
# ./result

# gcc copy.c delete.c extension.c list.c your_app.c -o you_app

# _OBJS = a_chsrc.o a_csv.o a_enc.o a_env.o a_except.o \
#        a_date.o a_range.o a_opsys.o
# OBJS = $(patsubst %,$(ODIR)/%,$(_OBJS))



# $(ODIR)/%.o: $(SDIR)/%.cpp 
#    $(CC) -c $(INC) -o $@ $< $(CFLAGS) 

# $(OUT): $(OBJS) 
#    ar rvs $(OUT) $^

#.PHONY: clean


djvudump:
	$(GCC) $(SRC) $(INC) $(MACROS) $(FLAGS) -g  -o ./bin/djvudump_app 

all: djvudump
