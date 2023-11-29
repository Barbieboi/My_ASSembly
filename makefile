CC=arm-linux-gnueabihf-gcc
ARMFLAGS = -static -ggdb3
LDLIBS=-lm

ifndef VERBOSE
.SILENT:
endif

.PHONY: all purge

DIR:=./src/%

EXECS:= count_zero  headins     mergeList 	printList   sum \
		fact    	killme   mul_array   negative    reverse     sum_array \
		foo     	maplist    	myatoi_map  principale  searchList  trasforma \

all : $(EXECS)

#conta quanti zeri vengono dati come argomento 
count_zero:%: $(DIR)/count_zero.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#calcola il fact di un numero passato come argomento
fact: %: $(DIR)/fact.s $(DIR)/main_fact.s $(DIR)/rec_fact.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#funzione casuale test
foo: %: $(DIR)/foo.c $(DIR)/foo.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#head insertion su una lista di interi
headins: %: $(DIR)/main_headins.c $(DIR)/headins.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#map su una lista di interi
maplist: %: $(DIR)/main_maplist.c $(DIR)/maplist.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#merge di due liste 
mergeList: %: $(DIR)/main_merge_list.c $(DIR)/merge_list.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#moltiplica tutti gli interi in un array per un intero
mul_array: %: $(DIR)/main_mul_array.c $(DIR)/mul_array.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#Implementazione della funzione di libreria atoi e di una map su array di stringhe che la utilizza
myatoi_map: %: $(DIR)/main_map.c $(DIR)/map.s $(DIR)/myatoi.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#controlla qunati numeri negativi ci sono in un array dentro .data
negative:  %: $(DIR)/negative.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#Seconda prova in itinere 23/25
principale: %: $(DIR)/main_principale.c $(DIR)/principale.s $(DIR)/somma.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#stampa il contetnuto di una lista di interi
printList: %: $(DIR)/main_printl.c $(DIR)/printl.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#inverte una stringa
reverse: %: $(DIR)/main_reverse.c $(DIR)/reverse.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#cerca un elemento in una lista di interi
searchList: %: $(DIR)/main_searchl.c $(DIR)/searchl.s mylib.o
	$(CC) $^ -o $@ $(ARMFLAGS)

#somma due interi passati come argomento
sum: %: $(DIR)/main_sum.c $(DIR)/sum.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#somma le coponenti di una array e stampa il risultato
sum_array: %: $(DIR)/main_sum_array_v2.s $(DIR)/sum_arr.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#prova in itinere anno BOH
trasforma: %: $(DIR)/main_trasforma.c $(DIR)/trasforma.s $(DIR)/cambia.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#Stampa "Uccidimi" sul terminale 
killme: ./src/kill_me.s
	$(CC) $^ -o $@ $(ARMFLAGS)

#libreria con utilty varie
mylib.o: ./src/mylib/mylib.c ./src/mylib/mylib.h
	$(CC) $< -c $@ 

clean:
	rm -f *.o

purge :
	rm -f *.o
	rm -f $(EXECS)

