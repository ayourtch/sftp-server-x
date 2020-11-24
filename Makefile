OBJS=base64.o  cleanup.o  fatal.o  freezero.o  log.o  misc.o  platform-tracing.o  recallocarray.o  sftp-common.o  sftp-server-main.o  sftp-server.o  sshbuf-getput-basic.o  sshbuf-misc.o  sshbuf.o  ssherr.o  strlcat.o  strlcpy.o  strmode.o  strtonum.o  xmalloc.o pwcache.o entropy.o


SOURCES  := $(wildcard *.c)
INCLUDES := $(wildcard *.h)
OBJECTS  := $(SOURCES:.c=.o)

.c.o:

all:	$(OBJECTS)
	gcc -o sftp-test-server ${OBJECTS}

