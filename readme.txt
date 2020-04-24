===============================================================================
Tema 2 MN - Google PageRank
Nume: Minea Radu-Stefan
Seria: CA
Grupa: 314CA
===============================================================================
Timpul petrecut pe tema: ~ 2 zile
===============================================================================
Rulare/Testare

Este nevoie de Octave pentru a testa acest program.

1. Utilizatorul deschide terminalul 
  << Ctrl + Alt + T >>
2. Instalarea Octave: 
  << sudo apt-get install octave >>
3. Deschiderea Octave
4. Testarea functiilor introducand parametri mentionati in antetul functiilor
===============================================================================
Descrierea proiectului

> Tema exploreaza vechiul algoritm Google PageRank, cu ajutorul caruia se
determina ce pagini se afisau pe ecranul utilizatorului pentru un query dat.
===============================================================================
Structura proiectului

* Cerinta 1 - Iterative

> Citirea listei de "vecini" - metoda readMatrix()
  + Citirea se realizeaza citind din fisier linie cu linie
> Aflarea vectorului de link-uri (L)
> Calcularea PageRank-ului se realizeaza prin formulele la care se face
referire in enuntul temei
  + Iteratiile se opresc pana cand diferenta dintre doi vectori de Pagerank
  consecutivi este mai mica decat eroarea data (eps)

* Cerinta 2 - Algebraic
> Foarte asemanator cu metoda Iterative()
> Inversul matricei se calculeaza cu ajutorul Gram-Schmidt, ce transforma o
matrice A intr-una ortogonala Q si una superior-triunghiulara R, astfel:
  << A = Q * R
    Q * R * (A ^ -1) = I_n
    R * (A ^ -1) = Q' * I_n >>
    + Cea din urma relatie reprezinta un sistem superior triunghiular, usor
    de rezolvat prin metoda SST()

* Cerinta 3 - PageRank
> Pentru a sorta vectorul PR_1 si a retine indicii initiali, am concatenat
vectorului PR_1 acea coloana de indici.
  + Ulterior, am sortat noul PR_1 dupa coloana ce continea PageRank-urile
  + Apartenenta - implementata conform "functiei membru" prezentata in enunt

===============================================================================
Limitari

*
===============================================================================
Feedback

> A fost o tema placuta, ce m-a determinat sa citesc mai multe despre PageRank,
Fuzzy logic, algoritmi de cautare.
