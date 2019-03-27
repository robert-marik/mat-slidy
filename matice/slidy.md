% Lineární algebra (operace s vektory a maticemi)
% Robert Mařík
% 2.4.2019

# Vektory a operace s nimi

Vektorem rozumíme uspořádanou $n$-ti objektů, pro které má smysl
operace sčítání a násobení číslem. Počet komponent v této $n$-tici se
nazývá dimenze vektoru. Tyto komponenty jsou zpravidla čísla nebo
skalární funkce. Aby se s vektory dalo rozumně pracovat, musí tvořit
vhodnou strukturu. Například každý vektor musí mít neutrální prvek a
každý vektor musí mít opačný prvek.


> Definice (vektory, vektorový prostor).
> Množinu $V$ uspořádaných $n$-tic  $(a_1,
  a_2,\dots, a_n)$ s operacemi sčítání a násobení reálným číslem
  definovanými
  $$
  \begin{gathered}
    (a_1, a_2,\dots, a_n)+(b_1, b_2,\dots, b_n)=(a_1+b_1,
    a_2+b_2,\dots, a_n+b_n)\\
    c\cdot (a_1, a_2,\dots, a_n)=(c\cdot a_1, c\cdot a_2,\dots,c\cdot a_n)
  \end{gathered}
  $$
  pro všechna $c\in\mathbb R$ a $(a_1, a_2,\dots, a_n),(b_1, b_2,\dots,
  b_n)\in V$ nazýváme *vektorovým
    prostorem*. Prvky tohoto prostoru nazýváme *vektory*. Prvky $a_1, \dots,
  a_n$ nazýváme *složky vektoru* $(a_1,a_2,\dots, a_n)$. Číslo
  $n$ nazýváme *dimenze prostoru $V$*.

Vektorový prostor, jehož komponenty jsou uspořádané $n$-tice reálých čísel označujeme $\mathbb R^n$.

Často pracujeme se sloupcovými vektory. Zápis je potom přehlednější.
$$
\begin{pmatrix}
  1\\-2\\1
\end{pmatrix}
+
3
\begin{pmatrix}
  -1\\5\\2
\end{pmatrix}
=
\begin{pmatrix}
  1-3\\-2+15\\1+6
\end{pmatrix}
=
\begin{pmatrix}
  -2\\13\\7
\end{pmatrix}
$$

Neutrálním prvkem vzhledem ke sčítání vektorů je *nulový vektor*, jehož
všechny komponenty jsou nulové. Vektor, ke kterému přičteme nulový
vektor, se nezmění.


# Vektory ve 2D a 3D -- geometrie

<div class='obtekat'>

![Modrý vektor je součtem ostatních tří vektorů. U černého vektoru je pravoúhlý trojúhelník pro výpočet délky pomocí Pythagorovy věty.](vektor.png)

</div>


Dvourozměrné vektory s komponentami danými reálnými čísly můžeme
reprezentovat graficky pomocí orientovaných úseček. Ve zvolené
soustavě souřadnic a při zvoleném výchozím bodu vektor znázorníme
takovou orientovanou úsečkou, že komponenty vektoru označují změnu
směru vzhledem k jednotlivým souřadnicím. Pokud tyto vektory označují
změnu polohy, mluvíme o vektorech posunutí. Sčítání vektorů poté
odpovídá posunutí počátečního bodu druhého vektoru do koncového bodu
prvního vektoru a nahrazení dvou částečných posunutí jedním
celkovým. Je přirozené zavést délku vektoru $\vec u=
\begin{pmatrix}
  u_1\\u_2
\end{pmatrix}$ pomocí Pythaghorovy věty vzorcem $|\vec
u|=\sqrt{u_1^2+u_2^2}$. Násobení vektoru kladným číslem poté odpovídá
změně délky vektoru. Násobení záporným číslem odpovídá změně délky a
otočení směru.


# Sčítání vektorů a integrace cesty u migrujících živočichů

<div class='obtekat'>

![Pouštní mravenec umí skvěle sčítat vektory. Bez této schopnosti by nenašel cestu domů. Zdroj: pixabay.com](mravenec.jpg)

</div>


Staří námořníci navigovali tak, že zaznamenávali směr a rychlost
pohybu. Z těchto informací je možné určit relativní polohu vzhledem k
výchozímu bodu. Podobnou strategii si vyvinuli živočichové žijící v
oblasti bez viditelných orientačních bodů například pouštní mravenci
Cataglyphis fortis. Při hledání potravy registrují vzdálenost a změnu
směru. Tím vlastně registrují vektor posunutí. Jednotlivé vektory
posunutí po sečtení dávají celkové posunutí a tím je dána i nejkratší
cesta zpět. Stačí výsledné celkové posunutí obrátit. V jistém smyslu
tedy mravenec dokáže sčítat vektory a tuto schopnost používá k přežití
v komplikovaném prostředí.

Další informace: [Wikipedia, Path integration](https://en.wikipedia.org/wiki/Path_integration)

# Pootočení vektoru

<div class='obtekat'>

![Jednotkové vektory ve směru os pootočíme o úhel $\theta$ a výsledek vyjádříme jako lineární kombinaci původních vektorů.](otoceni.png)

</div>


Ve dvourozměrném vektorovém prostoru uvažujme jednotkové vektory ve směru souřadných os $\vec e_1=(1,0)$ a $\vec e_2=(0,1)$.
Pokud pootočíme vektory o úhel $\theta$ v kladném směru, mají pootočené vektory $\vec f_1$, $\vec f_2$ souřadnice
$$\vec f_1=(\cos \theta,\sin\theta)$$ (plyne přímo z definice funkcí sinus a kosinus na jednotkové kružnici) a
$$\vec f_2=(-\sin\theta,\cos\theta)$$ (plyne z předchozího přičtením úhlu $\frac\pi 2$ a využitím identit $\cos\left(\theta+\frac\pi 2\right)=-\sin\theta$ a $\sin\left(\theta+\frac\pi 2\right)=\cos\theta$). Pomocí lineární kombinace můžeme psát
$$
\begin{aligned}
\vec f_1&=\cos(\theta) \vec e_1 +\sin(\theta)\vec e_2,\\
\vec f_2&=-\sin(\theta)\vec  e_1 +\cos(\theta)\vec e_2.
\end{aligned}
$$
Je-li úhel $\theta$ malý, platí (viz cvičení z derivací) $\sin\theta\approx\theta$, $\cos\theta\approx 1$ a dostáváme
$$
\begin{aligned}
\vec f_1&= (1,\theta) = \vec e_1 +\theta\vec  e_2,\\
\vec f_2&= (-\theta,1) = -\theta\vec e_1 +\vec e_2.
\end{aligned}
$$

# Lineární kombinace, lineární závislost a nezávislost vektorů

> Definice (lineární kombinace).
> Nechť $\vec u_1$, $\vec u_2$, $\dots$ $\vec u_k$ je
konečná posloupnost vektorů z vektorového prostoru $V$. Vektor
$\vec u$, pro který platí
$$
  \vec u=t_1\vec u_1+t_2\vec u_2+\cdots +t_k \vec u_k,
$$
kde $t_1$, $t_2$, $\dots$, $t_k$ jsou nějaká reálná čísla, se nazývá
*lineární kombinace* vektorů $\vec u_1$, $\vec u_2$, $\dots$, $\vec u_k$.
Čísla $t_1$, $t_2$, $\dots$, $t_k$ nazýváme *koeficienty lineární kombinace*.

V $n$-rozměrném prostoru existuje $n$-tice vektorů, pomocí
nichž můžeme dostat libovolný vektor jako lineární kombinaci. Taková
$n$-tice se nazývá *báze*. Dá se ukázat, že bází je nekonečné mnoho a
pro zadanou bázi a vektor je vyjádření vektoru pomocí bázových
vektorů jednoznačné až na pořadí. Nejjednodušší báze je tvořena
jednotkovými vektory, které mají všechny komponenty kromě jedné
nulové. Například pro bázové vektory $\vec e_1=(1,0)$ a $\vec e_2=(0,1)$
dvourozměrného vektorového prostoru a pro vektor $\vec v=(4,\pi)$ platí
$$\vec v=(4,\pi)=(4,0)+(0,\pi) = 4 (1,0) +\pi (0,1) = 4\vec e_1+\pi \vec e_2.$$
Koeficienty lineární kombinace se nazývají souřadnice. Například
souřadnice vektoru $\vec v=(4,\pi)$ v uvažované bázi jsou
$\begin{bmatrix} 4\\\pi \end{bmatrix}_{e_1,e_2}$. Pro bázové vektory $\vec e'_1=(2,0)$ a $\vec
e'_2=(0,\pi)$ platí
$$\vec v=(4,\pi)=2(2,0)+1(0,\pi)=2e'_1+e'_2$$
a souřadnice vektoru $\vec v=(4,\pi)$ v nové bázi jsou $\begin{bmatrix} 2\\1 \end{bmatrix} _{e'_1,e'_2}$. Tady vidíme
výhodu "pěkné volby" bázových vektorů.

Výsledekm triviální lineární kombinace, tj. lineární kombinace s
nulovými koeficienty, je nulový vektor.  Pokud vektory bázi netvoří,
nemusí být vyjádření lineární kombinace jednoznačné. Dokonce tedy
nulový vektor můžeme dostat i jinak, než jako triviální lineární
kombinaci. Ukazuje se, že je důležité rozlišovat mezi těmito případy a
proto si na rozličení zavedeme nové pojmy, lineární závislost a
nezávislost.


> Definice (lineární závislost a nezávislost).
>  Řekneme, že vektory $\vec u_1$, $\vec u_2$, $\dots$, $\vec u_k$ jsou
  *lineárně závislé*, jestliže existuje alespoň jedna
  netriviální lineární kombinace těchto vektorů, jejímž
  výsledkem je nulový vektor, tj. existují-li reálná čísla $t_1$,
  $t_2$, $\dots$, $t_k$, z nichž alespoň jedno je různé od nuly, taková,
  že platí
$$
    \vec o=t_1\vec u_1+t_2\vec u_2+\cdots +t_k \vec u_k.
$$
   V opačném případě říkáme, že vektory jsou *lineárně nezávislé*.

Platí následující.

* Vektory, které tvoří bázi, jsou lineárně nezávislé.
* Je-li vektorů větší počet, než je dimenze prostoru, jsou tyto vektory lineárně závislé.
* Je-li v posloupnosti vektorů některý vektor násobkem jiného vektoru nebo lineární kombinací ostatních vektorů, jedná se o lineárně závislou posloupnost vektorů.

Ve výše uvedených případech poznáme lineární závislost snadno. Mimo
tyto případy je to snadné pouze pro dvojici vektorů, které jsou
lineárně závislé právě tehdy když je jeden vektor násobkem druhého. V
tom případě říkáme, že vektory mají stejný směr.

# Migrace mezi městem a venkovem pomocí vektorů


\iffalse 

<div class='obtekat'>

![Markovovy řetězce umožňují modelování migrace mezi městem a venkovem. Zdroj: pixabay.com](city.jpg)

</div>

\fi

Na příkladě si ukážeme, kdy je přirozené paracovat s lineárními
kombinacemi vektorů. Pokusíme se matematicky modelovat migraci mezi
městem a venkovem. Matematicky se tento přístup používá vždy, když je
možné rozdělit jednotlivé části systému do konečného počtu navzájem
disjunktních stavů a jednotlivé části mohou měnit svůj stav, přičemž
pravděpodobnost změny je dána pouze současným stavem a ne například
historií předchozích stavů.

**Slovní formulace:** Každý rok měříme velikosti populací ve městě a na
venkově. Na počátku $60\%$ populace žije ve městě a $40\%$ na venkově. Každý
rok zůstane $95\%$ městské populace ve městě a $5\%$ se stěhuje na
venkov. Podobně $97\%$ obyvatelstva venkova zůstává a $3\%$ se stěhuje
do města.

**Matematický model:**
Procentuální složení zaznamenáváme ve formě
vektoru. Na počátku bude $$ X_0=
\begin{pmatrix}
  0.6 \\ 0.4
\end{pmatrix}.
$$
Po jednom roce je rozložení populace dáno vektorem
$$ X_1=
\begin{pmatrix}
  0.95 \\ 0.05 
\end{pmatrix}
0.6
+
\begin{pmatrix}
  0.03 \\ 0.97
\end{pmatrix}
0.4
.
$$
Intenzita migrace jednotlivými směry je ve sloupcových vektorech na
pravých stranách. Koeficienty v této lineární kombinaci jsou
koeficienty vektoru $X_0$.

Podobně, rozložení po dvou letech bude dáno lineární
kombinací s koeficienty, danými vektorem $X_1$.
Pokud bychom potřebovali znát rozložení populace po $k$ letech,
situace se komplikuje. Dostali bychom rekurentní vzorec, který je
nutno stále opakovat. Pro odstranění tohoto nepohodlí se zavádí pojem
matice, viz níže.

   
# Matice a jejich lineární kombinace

> Definice (matice). *Maticí řádu $m\times n$*  rozumíme schema
$$
A=
\begin{pmatrix}
a_{11}& a_{12}& a_{13}& \cdots{}& a_{1n}\\
a_{21}& a_{22}& a_{23}& \cdots{}& a_{2n}\\
\vdots{}& \vdots{}& {}& \ddots{}& \vdots{}\\
a_{m1}& a_{m2}& \cdots{}& \cdots{}& a_{mn}
\end{pmatrix}
$$
kde $a_{ij}$ pro $i=1..m$ a $j=1..n$ jsou reálná čísla nebo funkce. Množinu
všech matic řádu $m\times n$, jejichž prvky jsou reálná čísla, označujeme symbolem $\mathbb R^{m\times n}$.
Zkráceně zapisujeme též
${A=(a_{ij})}$.
>
> Je-li $m=n$ nazývá se matice $A$ *čtvercová
  matice*, jinak *obdélníková matice*. Je-li $A$ čtvercová
matice, nazýváme prvky tvaru $a_{ii}$, tj. prvky, jejichž řádkový
a sloupcový index jsou stejné, *prvky hlavní diagonály*.

Pro matice definujeme sčítání a násobení číslem stejně jako u vektorů,
tj. po složkách. Má potom smysl mluvit o lineární kombinaci matic a o
jejich lineární závislosti či nezávislosti. Tyto operace přirozeně
přebírají všechny důležité vlastnosti operace sčítání, jako jsou
asociativita, komutativita, existence neutrálního prvku nebo existence
opačného prvku.


V této fázi je vlastně jedno, jestli prvky jsou uspořádány jako
řádkový nebo sloupcový vektor nebo jako matice. Odlišení matic a
vektorů provedeme zavedením maticového součinu.

# Maticový součin

> Definice (součin matic).
  Buďte $A=(a_{ij})$ matice řádu $m\times n$ a $B=(b_{ij})$ matice
  řádu $n\times p$. *Součinem matic* $A$ a $B$
    (v tomto pořadí) rozumíme matici $G=(g_{ij})$ řádu $m\times p$,
  kde
$$
    g_{ij}=a_{i1}b_{1j}+a_{i2}b_{2j}+\cdots +a_{in}b_{nj}
$$
  pro všechna
  $i=1..m$, $j=1..p$. Zapisujeme $${G=AB}$$ (v tomto pořadí).
  >
  >Slovy: v $j$-tém sloupci matice $AB$ je lineární kombinace sloupců matice $A$, přičemž koeficienty této lineární kombinace jsou prvky z $j$-tého sloupce matice $B$.


Na maticový součin můžeme pohlížet i pomocí pojmů  známých z analytické geometrie. Prvky v součinu matic jsou skalárními součiny řádků první matice se sloupci druhé matice.

Maticový součin
  
  * je asociativní $$(AB)C=A(BC)=ABC,$$
  * je distributivní vzhledem ke sčítání $$A(B+C)=AB+AC\qquad \text {a}\qquad (B+C)A=BA+CA,$$
  * není však komutativní ($AB$ je obecně různé od $BA$, proto v předchozím máme roznásobování závorky zleva i zprava),

Můžeme tedy měnit uzávorkování, můžeme
roznásobovat závorky, nesmíme však měnit pořadí matic při násobení.

Maticové násobení má neutrální prvek, čtvercovou matici $I$, která má
jedničky v hlavní diagonále a nuly mimo tuto diagonálu. Mají-li
čtvercové matice $A$ a $I$ stejný počet řádků a sloupců,
platí $$AI=IA=A.$$


# Migrace mezi městem a venkovem pomocí matic


\iffalse 

<div class='obtekat'>

![Markovovy řetězce umožňují modelování migrace mezi městem a venkovem. Zdroj: pixabay.com](city.jpg)

</div>

\fi

Budeme pokračovat v příkladě s migrací. Viděli jsme, že po jednom roce je tedy rozložení populace dáno vektorem
$$ X_1=0.6
\begin{pmatrix}
  0.95 \\ 0.05 
\end{pmatrix}
+0.4
\begin{pmatrix}
  0.03 \\ 0.97
\end{pmatrix}.
$$
Koeficienty vektoru $X_0=\begin{pmatrix}
  0.6\\0.4
\end{pmatrix}$ jsou koeficienty v této lineární
kombinaci.
To lze zapsat jako maticový součin
$$ X_1= \begin{pmatrix}   0.95 & 0.03 \\ 0.05 & 0.97 \end{pmatrix}
\begin{pmatrix}
  0.6\\0.4
\end{pmatrix}.
$$
Pro matici $A=\begin{pmatrix}   0.95 & 0.03 \\ 0.05 & 0.97 \end{pmatrix}$
platí $$X_1=AX_0$$ a dále
$$X_2=AX_1=A(A X_0)=(AA)X_0=A^2 X_0.$$
Po $k$ letech je rozložení populace dáno vektorem $$X_k=A^k X_0.$$
Takový rekurentní vzorec se nazývá *Markovův řetězec* nebo též stavový
automat, protože řídí přepínání mezi dvěma stavy (obyvatel města,
obyvatel vesnice).

(Podle D. Lay, Linear algebra)

# Růst populace pomocí Leslieho matice

\iffalse 

<div class='obtekat'>

![Patrick Holt Leslie (1900-1972) roku 1945 publikoval v časopisu
Biometrika On the use of matrices in certain population mathematics. V
něm sestavil a analyzoval model růstu počtu samic v populaci potkanů
(Rattus norvegicus); jeho model ovšem může být stejně dobře použit pro
lidskou nebo jinou populaci. Zdroj: pixabay.com](potkan.jpg)

</div>

\fi

Leslieho model používá matice pro modelování vývoje populace, který
zohledňuje věkovou strukturu populace. Model předpokládá, že populace
je rozdělena do několika věkových kategoriií a v každé kategorii je
dána pravděpodobnost dožití se do další kategorie a průměrný počet
potomků. Situace je podobná jako u Markovova řetězce s tím, že
nenulový prvek matice bude jenom tam, kde dochází k přesunu do další
věkové kategorie nebo tam, kde kumulujeme počet nově narozených
jedinců v nejnižší věkové kategorie pro jednotlivé věkové skupiny
rodičů.

Příslušný model například pro populaci rozdělenou do tří věkových
kategorií by byl dán rovnicí
$$\begin{pmatrix} x_1(k+1) \\ x_2(k+1) \\ x_3 (k+1)
\end{pmatrix}
=
\begin{pmatrix}
  f_1 & f_2 & f_3 \\ p_1 & 0 & 0\\ 0 & p_2 & 0
\end{pmatrix} \begin{pmatrix} x_1(k) \\ x_2(k) \\ x_3 (k)
\end{pmatrix}
$$

Opakovaným násobením získáme věkovou strukturu populace v další
generaci a toto se opakuje podobně jako u Markovova řetězce.

Původně byl odvozen pro modelování populace samic, dá se
však adaptovat na populaci obecně.


Další informace:

* [Z. Pospíšil, Maticové populační modely](http://portal.matematickabiologie.cz/index.php?pg=analyza-a-modelovani-dynamickych-biologickych-dat--maticove-populacni-modely--prolog--leslieho-model-rustu-populace#pro14)

# Matice jako zobrazení

<div class='obtekat'>

![Příklad transformace dané maticí. Zachovává se například rovnoběžnost a středy úseček. Přímky se zobrazují na přímky.](transformace.png)

</div>

Je-li $A$ čtvercová matice, můžeme každému vektoru $X$ přiřadit vektor
$Y=AX$ a tím definovat zobrazení $n$-rozměrného prostoru do sebe. Dá
se ukázat, že takto dostaneme všechna zobrazení, která zobrazují úsečky na úsečky, počátek nechávají v počátku  a jsou pěkná v tom smyslu, že zachovávají středy úseček, rovnoběžnost a lineární kombinaci vektorů. [Ukázka zobrazení ve 2D](https://sagecell.sagemath.org/?z=eJxtUU9LwzAUvxf6HQIe1nTPrd2mByGH7SIeCqV4K51kNXPR2FfSON0-vUk71ooN5JGX37_wcjyjPrEgjyAqII8vNbY1mt1BPLt3p663GPW9NfvkRsufIM8XLTuCReGATQ_EsJyvOmi-bEFzEIazWs6Xvpf2xBKboIXodgGNrC5N2N9bl9H7AXvr8skNqTW-i49S-F42lgC3veSPKwzSWiONhjsb39ujJgmRFcnXsIEUMsjCFNIwKx58j9iFO83PJ5Yn4VGUBnUgKXEi6URHN9uiIz4lj6xGWZmgkwApUaFmEy1eJ0AaeRZsFdFpjer0htU4i6v6wJn9GDpVshJjJNrH2T3tItuHXEOu_J36Ev8FXf5FspdKsWf9JQbho_rmgN8kSAZdYO2sqqntYF40NxJZTH8BrAC_iQ==&lang=sage&interacts=eJyLjgUAARUAuQ==).

Podobně je možné definovat i zobrazení mezi prostory jiných dimenzí. Například [projekce 3D objektu do 2D](https://sagecell.sagemath.org/?z=eJx9UbFugzAU3JH4B492MQFDSSUkDyytOmTtYlkVSklricapQTTp1_fZJqQhqEgY37u75-dj-NHmxLFIaSqpYOPKYE1XBWWrtd15DBwJgxdryN-4gIISIFeCSYl22iCF1B4NlpcoQkIUSf6PJAzCYFP3attw8Vn3Rh2xsAO4EeBI-EpC0UT5kpsD5rmiLq4FKva2mCWZ3c94Wxl56iQ3fpZ0X6bHGTkPNuGFo84cNPLqq5I1uHvbKCobhQ-gDAMEj4uWi-puaLa9NliRS2Zj7BJZuxU_b574Qbend73HjhQl_Cu0U23LH-u2a4jXTR1cgBnN6b0czxvbRLM-aaTKLFIy8vABYAFvzJbaL_jX5Vzopd2H_sYV-QPATFHdHeC6rwaS0JwBPjbd6PwFZwa9tw==&lang=sage&interacts=eJyLjgUAARUAuQ==). Protože zobrazení zachovává rovnoběžnost, není možné takto jednoduše obdržet například perspektivu. Zde si pomáháme trikem, že přidáme další souřadnici, více viz Wikipedie a heslo [Camera matrix](https://en.wikipedia.org/wiki/Camera_matrix).

Například matice $$R=
\begin{pmatrix}
  \cos\theta & -\sin \theta\\
  \sin\theta & \cos\theta
\end{pmatrix}
$$
zobrazí vektory $e_1=(1,0)$ a $e_2=(0,1)$ na
$$\begin{pmatrix}
  \cos\theta & -\sin \theta\\
  \sin\theta & \cos\theta 
\end{pmatrix}
\begin{pmatrix}
  1\\0
\end{pmatrix}
=
\begin{pmatrix}
  \cos\theta \\
  \sin\theta
\end{pmatrix}
$$
a
$$\begin{pmatrix}
  \cos\theta & -\sin \theta\\
  \sin\theta & \cos\theta 
\end{pmatrix}
\begin{pmatrix}
  0\\1
\end{pmatrix}
=
\begin{pmatrix}
  -\sin\theta \\
  \cos\theta
\end{pmatrix}.
$$
Proto matice $R$ definuje zobrazení, které pootočí rovinu o úhel
$\theta$ a nazývá se matice rotace. Matice malých rotací je (použitím
lineární aproximace $\sin\theta\approx \theta$ a $\cos \theta\approx 1$ v
okolí nuly)
$$R_0=
\begin{pmatrix}
  1 & - \theta\\
  \theta & 1
\end{pmatrix}.
$$
Tuto matici budeme potřebovat při studiu deformace při odvození matematického popisu malých deformací.

# Vlastní čísla a vlastní vektory

U zobrazování vektorů pomocí maticového násobení nás velice zajímá, které směry se zachovávají, tj. kdy bude obrazem vektoru jeho násobek.

> Definice (vlastní vektor a vlastní hodnota matice). Řekneme, že nenulový vektor $\vec u$ je *vlastním vektorem* matice $A$ příslušným *vlastní hodnotě* $\lambda$, jestliže platí $$A \vec u=\lambda \vec u.$$

Vlastní čísla se nazývají též vlastní hodnoty matice. Každý nenulový
vlastní násobek vlastního vektoru je vlastní vektor příslušný téže
vlastní hodnotě.

<div class='obtekat'>

![Dřevo není izotropní materiál a nemá stejné vlastnosti v každém směru. Existují ale tři výrazné směry, vzhledem k nimž se dají mechanické a fyzikální vlastnosti popsat snadněji, než vhledem ke směrům ostatním. Matematicky se jedná o vlastní vektory příslušných maticových fyzikálních veličin. Zdroj: http://woodpoint.sk](drevo.png)

</div>


**Příklad.** Matice rotace nemá žádnou vlastní hodnotu, pootočením se změní směr všech vektorů.

**Příklad.** Matice $\begin{pmatrix} 3 & 0\\ 0 & 3 \end{pmatrix}$ (trojnásobek jednotkové matice) zobrazuje každý vektor na trojnásobek a všechny vektory jsou vlastními vektory této matice. Příslušná vlastní hodnota je $3$.

**Příklad.** Matice $\begin{pmatrix} 3 & 0\\ 0 & 0 \end{pmatrix}$ má vlastní vektor $(1,0)$ příslušný vlastní hodnotě $3$ a
vlastní vektor $(0,1)$ příslušný vlastní hodnotě $0$.

**Příklad.** Platí $\begin{pmatrix} 3 & -2\\ -1 & 4 \end{pmatrix} \begin{pmatrix}   2\\1 \end{pmatrix} = \begin{pmatrix}   4\\2 \end{pmatrix}$
a matice $\begin{pmatrix} 3 & -2\\ -1 & 4 \end{pmatrix}$ má vlastní vektor $(2,1)$ příslušný vlastní hodnotě $2$.

Vlastní vektory jsou nesmírně důležité, protože definují směry, podél
nichž se zobrazení chová "pěkně". Tímto zobrazením může být třeba to,
jak se působení vnější síly na těleso projeví na deformaci tohoto
tělesa nebo jak se gradient teploty nebo vlhkosti projeví na proudění
tepla či vody ve dřevě, půdě nebo jiném materiálu. Pro pravidelně
rostlé dřevo je snadné tyto směry určit. Pro zkroucené dřevo nebo při
studiu proudění vody, vzduchu či ropy v půdě to již snadné není a je
nutné tyto směry vypočítat. To se naučíme později. V aplikacích často
bývá matice "symetrická podle diagonály" a u takové matice vlastní
vektory existují. Co se přesně myslí pod pojmem "symetrická matice" si
uvedeme na následujícím slidu.


# Transponovaná matice

> Definice (transponovaná matice).  Buď $A=(a_{ij})\in\mathbb R^{m\times n}$ matice. Matice, která vznikne
  záměnou řádků matice $A$ za sloupce se nazývá *matice     transponovaná k\ matici $A$*. Matici
  transponovanou označujeme symbolem $A^T$. Platí tedy
  $A^T\in\mathbb R^{n\times m}$ a
  $$     A^T=(a_{ji}), $$
  kde $a_{ij}$  jsou prvky matice $A$.


**Příklad.** Matice transponovaná k matici $A=
\begin{pmatrix}
  1& -2& 3\\
  0& 1 &3\\
  2& 1 &9
\end{pmatrix}$ je $A^T=\begin{pmatrix}  1& 0 &2 \\  -2& 1& 1\\  3 &3 &9 \end{pmatrix}.$

**Příklad.** Skalární součin sloupcových vektorů (chápaných jako matice) $u= \begin{pmatrix}   1\\-2\\ a \end{pmatrix}$
a $v= \begin{pmatrix}   2\\-4\\ 1 \end{pmatrix}$
je možno zapsat jako maticový součin $$u^T v= \begin{pmatrix}   1& -2 & a \end{pmatrix} \begin{pmatrix}   2\\-4\\ 1 \end{pmatrix} =(a+10).$$

**Příklad.** Matice, která se nemění transponováním,
tj. $a_{ij}=a_{ji}$ se nazývá **symetrická**. Matice, která splňuje
$a_{ij}=-a_{ji}$ se nazývá **antisymetrická**. Pro libovolnou čtvercovou
matici $A$ platí
$$A=\frac{A+A^T}2+\frac{A-A^T}2.$$ První matice v tomto součtu je symetrická a druhá antisymetrická. Takto je možné rozložit matici na součet symetrické a antisymetrické matice. Například matice
$$A=
\begin{pmatrix}
  -4 & 7 \\ -1 & 2
\end{pmatrix}
$$
má tento rozklad ve tvaru 
$$A=
\begin{pmatrix}
  -4 & 3 \\ 3 & 2
\end{pmatrix}
+
\begin{pmatrix}
  0 & 4 \\ -4 & 0
\end{pmatrix}.
$$
Tento trik použijeme pro odvození tvaru tenzoru malých deformací.


Následující větu využijeme později.

> Věta (souvislost transponování matice a maticového součinu). Pro čtvercové matice platí $$(AB)^T=B^T A^T.$$




# Tenzor malých deformací


\iffalse 

<div class='obtekat'>

![Metodami lineární algebry kombinovanými s diferenciálním počtem dokážeme ve zobrazení identifikovat tenzor malých deformací, složku související jenom se změnou tvaru. Odfiltrujeme tak posun či rotaci, které se změnou tvaru nesouvisí. Zdroj: pixabay.com](deformace.jpg)

</div>

\fi


Zobrazení roviny do sebe, kterým je možné popsat deformaci tělesa působením síly je možné popsat dvojicí funkcí $u_1(x_1,x_2)$, $u_2(x_1,x_2)$. Lineární aproximace těchto funkcí v okolí bodu $(x_1,x_2)$ dávají (viz závěr prezentace z přednášky věnované derivací, kdy ještě vpravo pro stručnost vynecháváme argument $(x_1,x_2)$)
$$\begin{aligned}
  u_{1}(x_{1}+\Delta x_{1}, x_{2}+\Delta x_{2})&\approx u_{1}+\frac{\partial u_{1}}{\partial x_{1}}\Delta x_{1}+\frac{\partial u_{1}}{\partial x_{2}}\Delta x_{2},\\
  u_{2}(x_{1}+\Delta x_{1}, x_{2}+\Delta x_{2})&\approx u_{2}+\frac{\partial u_{2}}{\partial x_{1}}\Delta x_{1}+\frac{\partial u_{2}}{\partial x_{2}}\Delta x_{2},
  \end{aligned}
  $$ což je možné zapsat maticově jako
  $$ \begin{pmatrix}
    u_1 (x_{1}+\Delta x_{1}, x_{2}+\Delta x_{2}) \\
        u_1 (x_{1}+\Delta x_{1}, x_{2}+\Delta x_{2}) 
      \end{pmatrix}
      \approx
      \begin{pmatrix}
        u_1\\u_2
      \end{pmatrix}+
      \begin{pmatrix}
        \frac{\partial u_{1}}{\partial x_{1}} & \frac{\partial u_{1}}{\partial x_{2}}\\
        \frac{\partial u_{2}}{\partial x_{1}} & \frac{\partial u_{2}}{\partial x_{2}}
      \end{pmatrix}
      \begin{pmatrix}
      \Delta x_1 \\ \Delta x_2   
      \end{pmatrix}.
      $$
      Člen $\begin{pmatrix} u_1\\u_2 \end{pmatrix}$ je posunutí, proto nás zajímá až druhý člen, obsahující deformaci. Pokud 
      matici $$D=      \begin{pmatrix}
        \frac{\partial u_{1}}{\partial x_{1}} & \frac{\partial u_{1}}{\partial x_{2}}\\
        \frac{\partial u_{2}}{\partial x_{1}} & \frac{\partial u_{2}}{\partial x_{2}}
      \end{pmatrix}
      $$
       rozdělíme stejným obratem jako na předešlém slidu na součet symetrické a
antisymetrické matice, dostaneme
\dm$$D=  \begin{pmatrix}         \frac{\partial u_{1}}{\partial x_{1}} &  \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}+\frac{\partial u_{2}}{\partial x_{1}}\right)\\         \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}+\frac{\partial u_{2}}{\partial x_{1}}\right)& \frac{\partial u_{2}}{\partial x_{2}}       \end{pmatrix}       +   \begin{pmatrix}         0 &  \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}-\frac{\partial u_{2}}{\partial x_{1}}\right)\\        - \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}-\frac{\partial u_{2}}{\partial x_{1}}\right)&  0       \end{pmatrix}.$$
      Druhá část je deformace související s pootočením, což snadno
nahlédneme, pokud tuto informaci sečteme s identitou reprezentovanou
jednotkovou maticí na
$$ \begin{pmatrix}
        1 & \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}-\frac{\partial u_{2}}{\partial x_{1}}\right)\\
       - \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}-\frac{\partial u_{2}}{\partial x_{1}}\right)& 1
      \end{pmatrix}
      $$
      abychom měli celou část zobrazení (ne jenom deformaci). Porovnáním s maticí malých rotací
      $$R_0=
\begin{pmatrix}
  1 & - \theta\\
  \theta & 1
\end{pmatrix}
$$
získáme přímo pootočení. To nás však nezajímá. V teorii deformace nás zajímá matice
$$ \begin{pmatrix}
        \frac{\partial u_{1}}{\partial x_{1}} & \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}+\frac{\partial u_{2}}{\partial x_{1}}\right)\\
        \frac 12\left(\frac{\partial u_{1}}{\partial x_{2}}+\frac{\partial u_{2}}{\partial x_{1}}\right)& \frac{\partial u_{2}}{\partial x_{2}}
      \end{pmatrix}
      $$
      popisující změnu tvaru a nazývaná [*tenzor malých deformací*](https://cs.wikipedia.org/wiki/Deformace#Tenzor_mal%C3%BDch_deformac%C3%AD). Ten se ještě někdy rozděluje na součet vhodného konstantního násobku jednotkové matice (souvisí se zvětšením nebo zmenšením, tj. se změnou objemu) a deviátor (souvisí se zmenou tvaru bez započtení zvětšení či zmenšení).

[Obrázky a online výpočty.](https://sagecell.sagemath.org/?z=eJxtkkFvozAQhe-R8h9G6qFQCA10s4dKPtDLag9cVrmhKHJg2roBD7JNduHX7xiiNFKCBLbH731jP_EAaQJ_aDw2sgY6YKURnJHavpNpZYWgJZCjCrUCCXZo0RlVHam_Vqnl4gGyb85FdstSIzlDHdMqaR0jazwp6cjw5ALzuEI6xRaDncERteu_FHyhphbGFnUfQ2eIgUeDtvGHs1gpJ1sEy7JakzvSiU_ZesyEPI1kBhGU63i9i8v0_E35u042cZr89LN5zXvhcpELNhv1LyjLhOVJtpm06028SrLdpNiKPJlu2JHFgCtve767CPIo34bPmV_LubA6F3yJMxCT0Hsr9j1nT6rmOyo37M89swnG4czK1eTydg4JClAayjye6TFMEj-wxg9s270uF8APHYwcB1EGRXTbInw6YcXZByoEz1WeO-W0m92_i1-iI6VdMHNiqKghIx4N1o8xWDWi-LEOo46a4YP0fZVsuk8pOOQwapTGe6Lwux2_0dxyOsilyUV_aHq8Ncz9z5Z31TRia3q8an7Xbz_pLwQ6KGKo1YdyVryEV1sBsxlhO05pb_hPIpGG_wFT7gPz&lang=sage&interacts=eJyLjgUAARUAuQ==)


# Rozložení teploty na tepelně vodivé desce


\iffalse 

<div class='obtekat'>

![Rozložení teploty na tepelně vodivé desce je možné přibližně zkoumat metodami lineární algebry. Zdroj: pixabay.com](deska.png)

</div>

\fi

Uvažujme čtvercovou desku, kterou si rozdělíme sítí na $12$ uzlových bodů
(rohy zanedbáme) jak je uvedeno na obrázku.  V uzlových bodech na
okraji desky je teplota zadána (okrajová podmínka), zajímá nás
rozložení teploty v ostatních uzlových bodech.

Učiníme (poměrně realistický) předpoklad, že teplota v každém uzlovém
bodě je díky tepelné vodivosti desky ovlivněna sousedníi uzlovými
body. Každý sousední bod má stejný vliv, proto teplota v uzlovém bodě
bude přibližně rovna aritmetickému průměru teplot v sousedních
bodech. Kvantitativně zformulováno, platí 
$$
\begin{aligned}
  x_1&=\frac 14(30+x_2+x_4)\\
  x_2&=\frac 14(60+x_1+x_3)\\
  x_3&=\frac 14(70+x_2+x_4)\\
  x_4&=\frac 14(40+x_1+x_3)
\end{aligned}
$$
anebo po úpravě
$$
\begin{aligned}
  4x_1-x_2-\qquad x_4&=30\\
  -x_1+4x_2-x_3\qquad&=60\\
  \qquad-x_2+4x_3-x_4&=70\\
  -x_1\qquad-x_3+4x_4&=40
\end{aligned}
$$
Dostali jsme soustavu lineárních rovnic o čtyřech neznámých.
Tuto úlohu je možno zformulovat pomocí lineární kombinace
$$
\begin{pmatrix}
  4\\-1\\0\\-1
\end{pmatrix} x_1
+
\begin{pmatrix}
  -1\\4\\-1\\0
\end{pmatrix} x_2
+
\begin{pmatrix}
  0\\-1\\4\\-1
\end{pmatrix} x_3
+
\begin{pmatrix}
  -1\\0\\-1\\4
\end{pmatrix} x_4
=
\begin{pmatrix}
  30\\60\\70\\40
\end{pmatrix} 
$$
nebo pomocí maticového násobení (s vynechanými nulami uvnitř matice)
$$
\begin{pmatrix}
 \phantom{-}4&-1&&-1\\
 -1& \phantom{-}4&-1&\\
 &-1& \phantom{-}4&-1\\
 -1&&-1& \phantom{-}4
\end{pmatrix}
\begin{pmatrix}
  x_1\\x_2\\x_3\\x_4
\end{pmatrix}
=
\begin{pmatrix}
  30\\60\\70\\40
\end{pmatrix}.
$$
Úloha je tedy převoditelná na úlohu řešení soustavy lineárních
rovnic. Pro podrobnější popis použijeme stejnou myšlenku, ale mnohem
více uzlových bodů. Postup je stejný, pouze vznikne soustava s více
neznámými a více rovnicemi. 


Poznámka: Rovnice popisující vedení tepla je poměrně komplikovaně
řešitelná a proto se zpravidla převádí na problém lineární
algebry. Výše uvedený postup se nazývá metoda konečných diferencí, ale
jsou i další metody, například metoda konečných prvků. Společným
znakem je rozdělení oblasti našeho zájmu na velké množství bodů a
aproximace fyzikálních zákonů pro sledovaný jev v každém bodě pomocí
lineární rovnice. Tím vznikne úloha na řešení soustavy rovnic. Tato
soustava je velmi řídká, má hodně nul. Je tedy možné ji rychle vyřešit
i v případě tisíců rovnic. Používá se k modelování proudění tepla nebo
vody, k modelování mechanického namáhání od jednoduchých nosníků po
komplikované stroje nebo stromy.

