CC=arm-linux-gnueabihf-gcc
CPPFLAGS = -static -ggdb3

VPATH:= ./src

.PHONY: purge clean

EXECS:= maplist  headins  mul_array  searchlist  printl merge zeros array hello my_sum foo negative my_fact kill_me myatoi

all:$(EXECS) clean

maplist: main_maplist.c maplist.s mylist.o
	$(CC) $(CPPFLAGS) $^ -o $@

headins: main_headins.c headins.s mylist.o
	$(CC) $(CPPFLAGS) $^ -o $@

mul_array: main_mul_array.c mul_array.s
	$(CC) $(CPPFLAGS) $^ -o $@

myatoi: main.c myatoi.s map.s map_ho.s
	$(CC) $(CPPFLAGS) $^ -o $@

searchlist:main_searchl.c searchl.s mylist.o
	$(CC) $(CPPFLAGS) $^ -o $@

printl: main_print.c printl.s mylist.o
	$(CC) $(CPPFLAGS) $^ -o $@

merge: main_merge_list.c merge_list.s mylist.o
	$(CC) $(CPPFLAGS) $^ -o $@

zeros: count_zero.s
	$(CC) $(CPPFLAGS) $^ -o $@

array: main_sum_array_v2.s sum_arr.s
	$(CC) $(CPPFLAGS) $^ -o $@

hello: helloworld.s
	$(CC) $(CPPFLAGS) $^ -o $@

my_sum:main_sum.c pippo.s sum.s
	$(CC) $(CPPFLAGS) $^ -o $@

foo:foo.c foo.s
	$(CC) $(CPPFLAGS) $^ -o $@

negative:negative.s
	$(CC) $(CPPFLAGS) $^ -o $@

my_fact:rec_fact.s fact.s main_fact.s
	$(CC) $(CPPFLAGS) $^ -o $@

killme: kill_me.s
	$(CC) $(CPPFLAGS) $^ -o $@

mylist.o:mylist.c mylist.h
	$(CC) $(CPPFLAGS) -c $< 


purge:
	rm -f $(EXECS)
	rm -f *.o
clean:
	rm -f *.o
