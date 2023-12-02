# Esercizio Assembler ARMv7  
Una lista è organizzata in elementi di tipo node_t che contengono due soli campi. Il primo campo (4 byte) contiene il puntatore ad una stringa di caratteri (NULL terminated), il secondo campo (4 byte) contiene il puntatore al successivo elemento della lista oppure NULL nel caso sia l'ultimo elemento.  
  
Si richiede di realizzare una funzione principale in ARMv7 che abbia la seguente firma:  

`int principale(node_t *lista);`  
  
che riceve il puntatore al primo elemento della lista e restituisce un intero calcolato come la somma dei valori di tutti i caratteri numerici contenuti nelle stringhe puntate dagli elementi della lista. Per intendersi, il valore del carattere '1' sarà 1, '2' sarà 2 e così via fino a '9' che sarà 9. I caratteri non appartenenti all'insieme ['0'-'9'] devono essere considerati come caratteri di valore zero. Si osserva che in ASCII il range di caratteri ['0'-'9'] corrisponde ai valori decimali che vanno da 48 (per lo '0') a 57 (per il '9').

Si richiede di organizzare il codice in modo che la somma dei caratteri numerici di una singola stringa sia calcolata da una funzione a parte invocata da principale. La funzione si chiamerà somma e avrà la seguente firma:

`int somma(char *s);`

che prende come parametro il puntatore ad una stringa (NULL terminated) e restituisce l'intero calcolato come già detto sommando i valori numerici corrispondenti ai caratteri ['0'-'9'].

Trovate in allegato al compito un file main.c con cui potete provare la vostra soluzione usando il cross-compilatore su una vostra macchina. Potete scaricare i file (ovviamente vuoti) principale.s e somma.s che contengono già i preamboli da passare all'assemblatore e che vanno riempiti con il codice delle due funzioni, ciascuna nel suo file corrispondente. Per compilare con cross-compiler:

`$ arm-linux-gnueabihf-gcc main.c principale.s somma.s -static`  
`$ qemu-arm a.out`  
  
E' presente in allegato anche un file main_cpulator qualora usiate lo strumento web cpulator. In questo caso editate il file aggiungendo le implementazioni delle due funzioni in fondo al testo per provarle tramite il tool web. Utilizzare l'esecuzione passo-passo o un breakpoint sull'ultima istruzione del main con il comando continue per vedere quanto vale alla fine il registro r0.
  
**OPZIONALE**  
Facoltativamente si richiede di cambiare l'esercizio in modo che il contributo di un singolo carattere sia anch'esso calcolato come funzione. In questo caso somma dovrà chiamare una funzione calcola con firma:

`int calcola(char c);`

che prende come parametro un carattere e ritorna il suo corrispondente valore numerico se il carattere rappresenta una cifra decimale tra 0 e 1, zero altrimenti. La funzione calcola dovrà quindi essere chiamata dentro l'implementazione di somma in questa versione alternativa. Se si sceglie di svolgere questa versione opzionale, che corrisponderà un bonus, sottomettere la versione giusta di somma che chiama calcola.