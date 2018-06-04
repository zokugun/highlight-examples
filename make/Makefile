# Comments
# This is a comment
include foo # This is another comment

# Targets
kbd.o command.o files.o : command.h
display.o insert.o search.o files.o : buffer.h

.PHONY: clean
clean:
        rm *.o temp

# Variables
objects = main.o kbd.o command.o display.o \
          insert.o search.o files.o utils.o

edit : $(objects)
        cc -o edit $(objects)

$(objects) : defs.h

%oo: $$< $$^ $$+ $$*

foo : bar/lose
        cd $(@D) && gobble $(@F) > ../$@

# Strings
STR = 'A string!'

HELLO = 'hello \
world'

HELLO2 = "hello \
world"

# Directives
include foo *.mk $(bar)

vpath %.c foo

override define two-lines =
foo
$(bar)
endef

ifeq ($(CC),gcc)
  libs=$(libs_for_gcc)
else
  libs=$(normal_libs)
endif

# Functions
whoami    := $(shell whoami)
host-type := $(shell arch)

y = $(subst 1,2,$(x))

dirs := a b c d
files := $(foreach dir,$(dirs),$(wildcard $(dir)/*))

reverse = $(2) $(1)
foo = $(call reverse,a,b)

$(foreach prog,$(PROGRAMS),$(eval $(call PROGRAM_template,$(prog))))