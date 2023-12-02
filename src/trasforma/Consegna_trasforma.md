# AESO – Terza prova di verifica intermedia – 19 novembre 2021  
Si richiede di scrivere una procedura `void trasforma(char *s, char * from, char * to, int N)`
che trasforma una stringa di caratteri ASCII, terminata dal carattere di codice 0, secondo il
seguente algoritmo:  
per ogni carattere della stringa `s`
- se il carattere appare nel vettore `from[N]` alla posizione `j`, si sostituisce il
- carattere nella stringa originaria con il carattere che compare nel vettore
`to[N]` alla stessa posizione `j`;
- se il carattere non compare nel vettore `from[N]` non si effettua alcuna
sostituzione.  

Il vettore `from[N]` non è necessariamente ordinato. Se avessimo due vettori da 3 posizioni ciascuno:  
-  `char from[] = {‘u’, ‘n’, ‘b’};`
-  `char to[] = {‘a’, ‘b’, ‘c’};`  

la trasforma della stringa `“buongiorno!”` produrrebbe come risultato la stringa `“caobgiorbo!”`
Si richiede che trasforma venga implementata utilizzando una seconda funzione “ausiliaria”  

- `char cambia(char c, char * from, char * to, int N)`  

che cerchi `c` in `from[]` e in caso lo trovi (per esempio alla posizione `j`) restituisca `to[j]`, diversamente restituisca `c`.  
Per testare il codice, supponendo che le due funzioni siano definite nei file trasforma.s e cambia.s possiamo utilizzare il seguente file `main_trasforma.c`:  

Compilando I tre file con `gcc –o main main_trasforma.c trasforma.s cambia.s` ed eseguendo il programma, si ottiene una stampa che dice se il codice calcola quanto richiesto su una serie di stringhe campione.