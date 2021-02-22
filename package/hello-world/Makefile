OBJS=hello-world.o

all:	hello-world

helloworld:	$(OBJS)
	$(CC) $(LDFLAGS) -o hello-world $(OBJS)

$(OBJS): %.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $<
