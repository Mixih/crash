###################################################
#            BEGIN MAKEFILE SETTINGS              #
###################################################
CSTD       := -std=c11
CXXSTD     := -std=c++17
DBGCONF    := -g3 -Og -DDEBUG_ENA_ALL
CFLAGS     += $(DBGCONF) -Wall -Wextra -pedantic
CXXFLAGS   += $(DBGCONF) -Wall -Wextra -pedantic
INCLUDES   +=
LDFLAGS    += $(DBGCONF)
LDLIBS     +=
LDLIBS_END +=

###################################################
#            BEGIN MAKEFILE SOURCES               #
###################################################
# Add all subdirectories here separated by the : char
vpath %.c src
vpath %.cpp src

# Project name (sets outputted bins)
PROJ_NAME := crash

# Project deps
# add all object dependencies here without the .o extension
PROJ_OBJS += main.c

AUTOGEN_SOURCES := parse.tab.cpp lex.yy.cpp
###################################################
#            BEGIN MAKEFILE INCLUDES              #
###################################################
include Makefile.in

###################################################
#            BEGIN MAKEFILE CUSTOM RULES          #
###################################################

