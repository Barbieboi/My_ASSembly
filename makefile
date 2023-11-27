CC=arm-linux-gnueabihf-gcc
CPPFLAGS = -static -ggdb3

VPATH:= ./src


EXECS:= mul_array searchlist sum_list printl merge zeros array hello my_sum foo negative my_fact kill_me myatoi

all:$(EXECS)

mul_array: main_mul_array.c mul_array.s
	$(CC) $(CPPFLAGS) $^ -o $@

myatoi: main.c myatoi.s map.s map_ho.s
	$(CC) $(CPPFLAGS) $^ -o $@

searchlist:main_searchl.c searchl.s
	$(CC) $(CPPFLAGS) $^ -o $@

sum_list:main_sum_list.c sum_list.s
	$(CC) $(CPPFLAGS) $^ -o $@

printl: main_print.c printl.s
	$(CC) $(CPPFLAGS) $^ -o $@

merge: main_merge_list.c merge_list.s
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


clean:
	rm -f $(EXECS)
