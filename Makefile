#
# Extension template for PostgreSQL
#
# Refer to https://www.postgresql.jp/document/9.5/html/extend-pgxs.html

#MODULES    =
MODULE_big = pg_mod_sample
#PROGRAM    =

SRCS       = $(MODULE_big).c
# The linked object files.
OBJS       = $(SRCS:.c=.o)

# Name of extension
# The module will be Installed to prefix/share/extension.
EXTENSION  = $(MODULE_big)

# The directory whrere DATA AND DOCS are installed.
#MODULEDIR  =

# The files nstalled to prefix/share/$MODULEDIR.
DATA       = $(EXTENSION)--1.0.sql

# The files installed to prefix/doc/$MODULEDIR.
#DOCS       = README.pg_mod_sample

# The script files installed to prefix/bin.
#SCRIPTS    =

# The script files installed to prefix/bin, which must be built at first.
#SCRIPTS_built =

# Test cases for regression test.
REGRESS    = pg_mod_sample

# The options passed to pg_regress.
#REGRESS_OPTS = --bindir=/path/to/bindir

# The resources removed by 'make clean' command.
#EXTRA_CLEAN  =

# The flags for CPPFLAGS.
#PG_CPPFLAGS  =

# The link files added to PROGRAM.
#PG_LIBS      =

# The link files added to MODULE_big.
#SHLIB_LINK   =

# The path to pg_config for postgresql installation.
#PG_CONFIG    =

# The description of extension.
PGFILEDESC = "pd_mod_sample - module sample for postgresql"


ifdef PG_PORT
REGRESS_OPTS += --port $(PG_PORT)
endif

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/$(EXTENSION)
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
