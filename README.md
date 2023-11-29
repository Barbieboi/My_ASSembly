# My_ASSembly
codici_assembly AeSO 23/24
## built on **WSL2 Ubuntu 22.04.3**  
- pacchetti necessari:  
  - `gcc-arm-linux-gnueabihf`  
  - `qemu`  

Ad ogni cartella in `./src` è associato un eseguibile, per compilarlo è necessario chiamare `~$ make NomeCartella`  
  
`pippobaudo@Desktop:My_ASSembly$ make foo `  
creerà l'eseguibile `foo` nella cartella corrente    

Chiamare `~$ make` dalla shell per creare tutti gli eseguibili  
  
Il makefile è di default in silent mode, chiamare con `~$ make VERBOSE=1` per ridefinire il comportamento  
Il makefile dispone anche delle opzioni: 
- `clean` che elimina i file oggetto  
- `purge` che elimina i file oggetto e gli esegubili  
  
Lanciare gli eseguibili con `~$ qemu-arm NomeEseguibile` ed eventuali argomenti richiesti  



  
