% Lineární algebra (soustavy lineárních rovnic)
% Robert Mařík
% 16.4.2019



# Varianty zápisu soustavy lineárních rovnic


Uvažujme následující tři problémy: 

1. Najděte všechna reálná čísla $x_1$, $x_2$, splňující dvojici rovnic $$ \begin{aligned}   4x_1&+5x_2=7\\   \phantom{4}x_1&-2x_2=4 \end{aligned} $$
1. Najděte všechna reálná čísla $x_1$, $x_2$, splňující vektorovou rovnici $$   \begin{aligned} \begin{pmatrix}       4\\1     \end{pmatrix}     x_1     +     \begin{pmatrix}       5\\-2     \end{pmatrix}     x_2     =     \begin{pmatrix}       7\\4     \end{pmatrix}   \end{aligned}$$
1. Najděte všechna reálná čísla $x_1$, $x_2$, splňující maticovou rovnici $$\begin{aligned}     \begin{pmatrix}       4&5\\1&-2     \end{pmatrix}     \begin{pmatrix}       x_1\\x_2     \end{pmatrix}     =     \begin{pmatrix}       7\\4     \end{pmatrix}   \end{aligned} $$

Všechny problémy jsou ekvivalentní a jedná se o jiný zápis téhož.
Jednou však používáme soustavu rovnic, vektory a jejich lineární
kombinaci a jednou matice a maticový součin!

# Soustava lineárních rovnic

> Definice (soustava lineárních rovnic).
*Soustavou $m$ lineárních rovnic  o $n$ neznámých* nazýváme
soustavu rovnic $$ \tag{1}
\begin{gathered}
  a_{11}x_1+a_{12}x_2+a_{13}x_3+\cdots+a_{1n}x_n=b_1 \\
  a_{21}x_1+a_{22}x_2+a_{23}x_3+\cdots+a_{2n}x_n=b_2 \\
  a_{31}x_1+a_{32}x_2+a_{33}x_3+\cdots+a_{3n}x_n=b_3 \\
  \vdots \\
  a_{m1}x_1+a_{m2}x_2+a_{m3}x_3+\cdots+a_{mn}x_n=b_m 
\end{gathered} $$
Proměnné $x_1$, $x_2$, \dots, $x_n$ nazýváme *neznámé*. Reálná
čísla $a_{ij}$ nazýváme *koeficienty levých stran*, reálná
čísla $b_j$ *koeficienty pravých stran* soustavy rovnic.
*Řešením soustavy rovnic* rozumíme uspořádanou $n$-tici
reálných čísel $[t_1, t_2, \ldots, t_n]$ po jejichž dosazení za
neznámé (v\ tomto pořadí) do soustavy dostaneme ve všech rovnicích
identity.




> Definice (matice soustavy). Matici 
  $$
   A=\left(
    \begin{matrix}
      a_{11}& a_{12}& a_{13}& \cdots{}& a_{1n}\\
      a_{21}& a_{22}& a_{23}& \cdots{}& a_{2n}\\
      \vdots{} &\vdots{}& {} &\ddots{}& \vdots{}\\
      a_{m1}& a_{m2}& a_{m3}& \cdots{}& a_{mn}\\      
    \end{matrix}\right)
  $$
nazýváme *maticí soustavy* (1).
Matici $$
A_r=\left(
  \begin{array}{ccccc|c}
    a_{11}& a_{12}& a_{13}& \cdots{}& a_{1n}&b_1\\
    a_{21}& a_{22}& a_{23}& \cdots{}& a_{2n}&b_2\\
    \vdots{} &\vdots{}& {} &\ddots{}& \vdots{}&\vdots\\
    a_{m1}& a_{m2}& a_{m3}& \cdots{}& a_{mn}&b_m\\
  \end{array}
\right)
$$
nazýváme *rozšířenou maticí soustavy* (1).



# Vektorový zápis soustavy lineárních rovnic

  Soustavu (1) lze ekvivalentně přepsat do vektorového
  tvaru
$$    \begin{pmatrix}
      a_{11}\\a_{21}\\\vdots\\a_{m1}
    \end{pmatrix}
    x_1+
    \begin{pmatrix}
      a_{12}\\a_{22}\\\vdots\\a_{m2}
    \end{pmatrix}
    x_2+
    \begin{pmatrix}
      a_{13}\\a_{23}\\\vdots\\a_{m3}
    \end{pmatrix}
    x_3+\cdots+
    \begin{pmatrix}
      a_{1n}\\a_{2n}\\\vdots\\a_{mn}
    \end{pmatrix}
    x_n=
    \begin{pmatrix}
      b_{1}\\b_{2}\\\vdots\\b_{m}
    \end{pmatrix}.
 $$
  Vidíme tedy, že se vlastně jedná o\ problém, vyjádřit vektor složený
  z\ čísel na pravé straně soustavy rovnic jako  lineární
  kombinaci vektorů, které tvoří sloupce  matice
  soustavy.


# Maticový zápis soustavy lineárních rovnic
  
Soustavu (1) lze ekvivalentně přepsat do maticového
tvaru pomocí  maticového součinu
$$
\left(
    \begin{matrix}
      a_{11}& a_{12}& \cdots{}& a_{1n}\\
      a_{21}& a_{22}&  \cdots{}& a_{2n}\\
      \vdots{} &\vdots{} &\ddots{}& \vdots{}\\
      a_{m1}& a_{m2}&  \cdots{}& a_{mn}\\
    \end{matrix}\right) 
\left(  \begin{matrix}
    x_1\\x_2\\ \vdots \\x_n
  \end{matrix}
\right)    = \left(  \begin{matrix}
    b_1\\b_2\\ \vdots \\b_m
  \end{matrix}
\right).
$$
  Tento tvar se používá často v\ inženýrských výpočtech pro
  úspornost. Symbolicky zpravidla píšeme soustavu lineárních rovnic ve
  tvaru 
$$
    A\vec x=\vec b,
    $$
    nebo $$AX=B$$
  kde $A$ je  matice soustavy a $\vec b$ resp. $B$ je vektor pravých stran.


# Hodnost matice

Matice řádu $m\times n$ obsahuje celkem $m\cdot n$ čísel. Jedná se tedy
o\ relativně komplikovaný objekt. V\ matematice se často snažíme
složitější objekty nějakým způsobem charakterizovat pomocí objektů
jednodušších, např. pomocí čísel. Jedno už známe, determinant. Dalším 
z\ těchto čísel je hodnost matice, kterou si nadefinujeme nyní.

> Definice (hodnost matice).
  Buď $A$ matice. *Hodností matice* rozumíme
  maximální počet lineárně nezávislých řádků matice.
  Hodnost matice $A$ označujeme ${h(A)}$.

Poznámka: Hodnost je v anglické literatuře označována jako *rank*.

Schodovitý tvar jsme si představili u determinantu. U matice ve
schodovitém tvaru je určení determinantu velmi jednoduché. Podobný
efekt vidíme i u hodnosti.

> Definice (schodovitý tvar).
  Řekneme, že matice $A$ je ve *schodovitém tvaru*, jestliže
  případné nulové řádky jsou uspořádány na konci matice a nenulové
  jsou uspořádány tak, že každý následující řádek začíná větším počtem
  nul než řádek předchozí.


> Věta (hodnost matice ve schodovitém tvaru).
   Hodnost matice, která je ve schodovitém
  tvaru je rovna počtu jejích nenulových řádků.


**Příklad.**  Matice $A=   \begin{pmatrix}     2&2&2&3&-1&5\\     0&0&1&0&0&3\\     0&0&0&-1&2&1\\     0&0&0&0&0&0   \end{pmatrix}$ je ve schodovitém tvaru a $h(A)=3$. Matice   $B=  \begin{pmatrix}     2&2&2&3&-1&5\\      0&0&1&0&0&3\\      0&0&3&-1&2&1    \end{pmatrix}$ není ve  schodovitém tvaru a její  hodnost na první pohled nepoznáme.

# Výpočet hodnosti

Výpočet hodnosti se provádí postupným nahrazením zadané matice maticí, která má stejnou hodnost, ale postupně se přibližuje schodovitému tvaru. Uvedeme si jenom základní postup. Tento se sice dá vylepšit, pro nás je však důležité, že i bez jakýchkoliv vylepšení vždy vede k cíli. (Alespoň teoreticky.)

> Věta (řádkové operace zachovávající hodnost matice).
>  Následující operace nemění hodnost matice:
>
>  1. vynechání řádku složeného ze samých nul, nebo vynechání řádku,
    který je tožný s\ jiným řádkem, nebo vynechání řádku, který je
    násobkem jiného řádku,
 1. vynásobení nebo vydělení libovolného řádku nenulovým číslem,
 1. záměna pořadí řádků,
 1. ponechání jednoho řádku beze změny a opakované přičtení
    libovolných násobků tohoto řádku k\ nenulovým násobkům ostatních
    řádků matice.
>
>  Libovolnou matici lze konečným počtem těchto úprav převést do schodovitého tvaru.

Následující věta udává, že veškerá tvrzení, uvedená v souvislosti s
hodností pro řádky matice, se dají přeformulovat i pro sloupce matice.

> Věta. 
  Transponování nemění  hodnost matice.

# Existence a jednoznačnost řešení soustavy lineárních rovnic  


V případě, že matice soustavy je čtvercová již víme, že řešení je
určeno jednoznačně právě tehdy, když má matice soustavy matici
inverzní.  O počtu řešení v obecném případě obdélníkové matice, kdy
matici inverzní nemá smysl uvažovat, nám dávjí informaci dvě
následující věty.  První se týká existence řešení a druhá identifikuje
případ, kdy řešení je určeno jednoznačně.

> Věta (Frobeniova věta, Kronecker-Capelliho věta). Soustava lineárních rovnic je řešitelná právě tehdy, když její matice soustavy a rozšířená matice soustavy mají stejnou hodnost.


> Věta (jednoznačnost řešení). Nechť soustava lineárních rovnic má řešení. Toto řešení je právě jedno, pokud je společná hodnost matice soustavy a rozšířené matice soustavy rovna počtu neznámých. V opačném případě je společná hodnost matice a rozšířené matice soustavy menší než počet neznámých. 

# Gaussova eliminace

# Gaussova-Seidelova iterační metoda

# Výpočet vlastních vektorů

# Transformace symetrické matice na diagonální tvar

      

