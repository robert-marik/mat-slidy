% Funkce
% Robert Mařík
% podzim 2019

# Motivace pro pojem funkce

#### Funkce jedné proměnné

Je dán vetknutý nosník na konci zatížený svislou silou $F$. Deformace nosníku $\delta$ na konci souvisí (skalární veličina) s velikostí zatěžující síly (skalární veličina). Pro studium problému je vhodné mít převodní pravidlo, které pro každé zatížení udává deformaci. Toto pravidlo bude z matematického úhlu pohledu funkce (funkce jedné proměnné). Může mít například formu
$$\delta=\frac 1k F,$$
kde $k$ je konstanta pro daný nosník (tuhost).

#### Funkce více proměnných

Tuhost nosníku závisí na jeho tvaru a fyzikálních charakteristikách. Například pro nosník obdélníkového průřezu délky $L$, výšky $h$ a šířky $w$ může mít tvar
$$k=\alpha\frac{w h^3}{L^3},$$
kde $\alpha$ je konstanta pro daný nosník (souvisí s použitým materiálem). Třem nezávislým hodnotám přiřazujeme jednu hodnotu. Toto je funkce tří proměnných.

#### Vektorová funkce jedné proměnné

Letecký radar [https://www.flightradar24.com](https://www.flightradar24.com) ukazuje aktuální polohu letadel. Každé letadlo, které je ve vzduchu, je v čase $t$ v místě popsaném dvěma zeměpisnými souřadnicemi. Pro rekonstrukci pohybu můžeme let chápat jako pravidlo, které jedné hodnotě (čas $t$) přiřadí dvojici hodnot (souřadnice). Protože tuto dvojici můžeme chápat i jako polohový vektor, nazývá se taková funkce vektorová funkce jedné proměnné.

#### Vektorové pole

Meteoradar [https://mapy.in-pocasi.cz/](https://mapy.in-pocasi.cz/) má možnost zobrazit vítr. Každému místu v ČR (popsáno dvěma souřadnicemi, tj. dvourozměrným vektorem) je přidělen dvourozměrný vektor rychlosti větru. Toto je příklad dvourozměrné vektorové funkce dvou proměnných, zkráceně mluvíme o dvourozměrném vektorovém poli.






# Funkce jedné proměnné

> Definice (funkce jedné proměnné).
  Buďte $A$ a $B$ neprázdné podmnožiny množiny reálných čísel.
  Pravidlo $f$, které každému prvku množiny $A$ přiřadí jediný prvek
  množiny $B$ se nazývá *funkce* (přesněji: *reálná
    funkce jedné reálné proměnné*).  Zapisujeme 
  $f:A\to B$.  Skutečnost, že prvku $a\in A$ je přiřazen
  prvek $b\in B$ zapisujeme  $f(a)=b$. Přitom říkáme,
  že $b$ je *obrazem prvku* $a$ při zobrazení $f$, resp. že $a$
  je *vzorem prvku* $b$ při zobrazení $f$.

> Poznámka (terminologie).  Množina $A$ z definice
  funkce se nazývá *definiční obor funkce $f$*.  Označujeme 
  $\mathrm D(f)$ (resp.  $\mathrm{Dom}(f)$). Je-li $M$ podmnožina definičního oboru, definujeme množinu $f(M)$ jako množinu všech obrazů bodů množiny $M$. Množina $f(\mathrm{Dom}(f))=b$ se nazývá *obor
    hodnot funkce $f$*.  Označujeme  $\mathrm H(f)$ (resp.
  $\mathrm{Im}(f)$).
>
>  Je-li $y=f(x)$ nazýváme proměnnou $x$ též *nezávislou
    proměnnou* a proměnnou $y$ *závislou proměnnou*.
  *Grafem* funkce rozumíme množinu všech uspořádaných dvojic
  $[x,y]\in\mathbb R^2$ s vlastností $y=f(x)$.


# Přímá a nepřímá úměrnost

Výsadní postavení při popisu dějů a jevů v přírodě mají přímá a
nepřímá úměrnost, známé ze střední školy.

> Definice (přímá a nepřímá úměrnost). Veličina $y$ je *přímo úměrná* veličině $x$ jestliže existuje konstanta $k$ taková, že platí $$y=kx.$$
Veličina $y$ je *nepřímo úměrná* veličině $x$ jestliže existuje konstanta $k$ taková, že platí $$y=\frac kx.$$


**Příklad.**

* Při pohybu konstantní rychlostí je dráha $s$ úměrná času $t$. Příslušnou konstantou úměrnosti je rychlost $v$, tj. $s=vt$.
* Při pohybu po předem stanovené dráze $s$ je čas nepřímo úměrný rychlosti $v$. Platí $t=\frac sv$.
* Při periodickém pohybu je frekvence $f$ nepřímo úměrná periodě $T$. Příslušnou konstantou úměrnosti je jednička, tj. $f=\frac 1T$.
* Objem $V$ koule o poloměru $r$ je přímo úměrný třetí mocnině poloměru. Příslušnou konstantou úměrnosti je objem koule o poloměru $1$. Platí tedy $V=\frac 43 \pi r^3$.


> Poznámka (podobnost). Dva útvary jsou podobné, jestli jeden vznikne z druhého zvětšením všech délek na jejich $k$-násobek. Pro $k$-krát zvětšený útvar platí, že všechny jeho rozměry jsou $k$-krát větší, všechny jeho plochy jsou $k^2$-krát větší a všechny jeho objemy jsou $k^3$-krát větší. Podobné útvary jsou vždy definovány jedním parametrem, například u kruhu a koule stačí zadat poloměr. U krychle stačí zadat délku jedné strany nebo délku stěnové uhlopříčky nebo délku tělesové uhlopříčky. U válce, který má stejnou výšku jako průměr podstavy stačí zadat výšku nebo poloměr podstavy. U kužele s vrcholovým úhlem $45^\circ$ stačí zadat výšku nebo poloměr podstavy a je tím dán celý kužel. U takových těles platí pro jakýkoliv povrch (povrch koule, povrch kužele, povrch pláště kužele, povrch válce, povrch válcové plochy, ...)
$$S=k_1r^2$$ a pro jakýkoliv objem
$$V=k_2r^3,$$ kde $k_1$ a $k_2$ jsou konstanty a $r$ vhodný délkový parametr.  Tyto konstanty mají dokonce pěknou interpretaci - odpovídají obsahu nebo objemu pro $r=1$ a ve většině případů je známe, protože například pro kouli nebo kužel máme přesný vzorec založený na poloměru.
Díky tomuto je dokonce možné snadno najít vztahy mezi objemem a povrchem $$V=k_3 S^{2/3}$$ a $$S=k_4 V^{3/2}.$$ Tyto vztahy je snadné si pamatovat, stačí se řídit tím, že mocnina musí být taková, aby vycházely správné jednotky. Metodami středoškolské matematiky dokonce dokážeme dokonce konstanty $k_1$ až $k_4$ najít pro jednotlivá tělesa jako je koule apod. Často nás však přesná hodnota konstanty nezajímá a jde nám jenom o charakter funkční závislosti, o přímou úměrnost mezi vhodnými mocninami. Vztahy stejného typu platí například i pro kužel s konstantním úhlem u vrcholu. To je možné využít při skladování sypkého materiálu (písek nasypaný na hromadu zaujme tvar kužele, úhel u vrcholu je daný vlastnostmi písku) nebo vyprazdňování nádrže ve tvaru trychtýře. Podobnost nacházíme i v živé přírodě, výrazná je například u ryb, kdy velká ryba je často tvarově blízká zvětšené malé rybě (viz S. Vogel, Comparative biomechanics, kap. 3). Formálně je podobné úvahy možno zobecnit pomocí [Buckinghamova $\Pi$ teorému](http://geo.mff.cuni.cz/seismosoft/Pi-teorem.pdf).


# Vlastnosti funkcí jedné proměnné (prostá funkce)

Někdy jsme v situaci, že známe výsledek po působení nějaké funkce a
potřebujeme zrekonstruovat vstupní hodnotu. Řešíme tedy pro zadanou
funkci $f$ a hodnotu $y_0$ rovnici $$f(x)=y_0.$$ Řešení této rovnice,
pokud existuje, nemusí být určeno jednoznačně. Pro funkce, pro které
je určeno jednoznačně, zavádíme následující pojem.

> Definice (prostá funkce).
  Nechť $f$ je funkce a $M\subseteq \mathrm{Dom}(f)$ podmnožina definičního oboru funkce $f$.   Řekneme, že funkce $f$ je *prostá*,
  jestliže každý obraz má jen jediný vzor, tj. pro každé $y_0\in f(M)$
  existuje jediné $x\in M$ s vlastností $f(x)=y_0$.
  Nespecifikujeme-li množinu $M$, máme na mysli, že uvedená vlastnost
  platí na celém definičním oboru funkce $f$.

> Věta (rovnice s prostou funkcí). Pokud je $f$ prostá funkce a platí $$f(x)=f(a),$$ potom platí $x=a.$

**Příklad.** Funkce $\frac 1x$ je prostá a proto z rovnosti $\frac 1x = \frac 15$ 
plyne $x=5$.

**Příklad.** Funkce $x^2$ není prostá a proto z rovnosti $x^2 = 7^2$ neplyne $x=7$.


# Vlastnosti funkcí jedné proměnné (inverzní funkce)

> Definice (inverzní funkce).   Nechť funkce $f: A\to B$ je prostá. Pravidlo, které každému $x$   z množiny $f(A)$ přiřadí to (jediné) $y$, pro které platí $f(y)=x$ se nazývá *inverzní funkce* k funkci $f$, označujeme   $\mathbf{f^{-1}}$.


> Poznámka. Symbol $f^{-1}(x)$ lze tedy chápat buď jako hodnotu inverzní funkce
  k funkci $f$ v bodě $x$, nebo jako převrácenou hodnotu k číslu
  $f(x)$, tj jako $[f(x)]^{-1}=\frac{1}{f(x)}$. Nebude-li z kontextu
  zřejmé, o kterou variantu se jedná, musíme toto upřesnit.

**Příklad.** Funkce $y=x^2$ není prostá na $\mathbb R$ a proto zde nemá inverzní funkci. Pokud definiční obor funkce $y=x^2$ zúžíme na nezáporná čísla, tj. požadujeme $x\geq 0$, je taková funkce prostá a má inverzní funkci. Protože tato úloha má praktický význam, vyplatí se pro tuto inverzní funkcí zavést speciální označení. Jak dobře víme, inverzní funkcí je druhá odmocnina, tj. funkce $y=\sqrt x$.

# Vlastnosti funkcí jedné proměnné (parita)

V následující definici se budeme zajímat o to, jestli existuje nějaký
vztah mezi funkční hodnotou v bodě $x$ z definičního oboru a v bodě
opačném.

> Definice (parita funkce).   Nechť funkce $f$ splňuje následující podmínku:   $x\in\mathrm{Dom}(x)\implies (-x)\in\mathrm{Dom}(f)$.
> 
> * Řekneme, že funkce $f$ je *sudá*
  pokud platí $f(-x)=f(x)$.
* Řekneme, že funkce $f$ je *lichá*
  pokud platí $f(-x)=-f(x)$.
* Řekneme, že funkce $f$ má *paritu*, je-li
  sudá nebo lichá.


Graf sudé funkce je osově souměrný podle osy $y$.  Graf liché funkce
je středově souměrný podle bodu $[0,0]$.

Sudé a liché funkce jsou, díky svým vlastnostem, v jistém smyslu pěkné. V matematice se často snažíme zapsat nějaký objekt pomocí podobných pěkných objektů. Uvidíme toto například později při popisu deformace. Jako ukázku přístupu si můžeme už teď ukázat následující snadnou (a pravděpodobně málo užitečnou) větu.


> Věta (o rozkladu funkce na součet sudé a liché funkce). Platí $$f(x)=\frac{f(x)+f(-x)}2 + \frac{f(x)-f(-x)}2.$$
Každou funkci definovanou na $(-\infty,\infty)$ je možné takto rozložit na součet sudé a liché funkce.

**Příklad.** Pro funkci $f(x)=e^x$ dostáváme
$$e^x=\frac{e^x+e^{-x}}2-\frac{e^x-e^{-x}}2.$$ Dvě funkce na pravé
straně mají význam v aplikacích a nazývají se hypebolický kosinus,
$\cosh x$, a hyperbolický sinus, $\sinh x$.

**Příklad.** Je-li funkce $f(x)$ polynom, potom rozkladem na sudou a lichou část dostaneme polynomy, které jsou tvořeny členy původního polynomu tak, že sudá část obsahuje právě členy se sudým exponentem a lichá část právě členy s lichým exponentem.


# Vlastnosti funkcí jedné proměnné (monotonie)

V následující definici jsou nejdůležitější pojmy
rostoucí a  klesající funkce. Názorně
řečeno, jsou to funkce které zachovávají (rostoucí) nebo obracejí
(klesající) směr nerovnosti při aplikaci funkce na obě strany
nerovnice.

> Definice (monotonie funkce).   Nechť $f$ je funkce a $M\subseteq \mathrm{Dom}(f)$ podmnožina definičního oboru   funkce $f$.
> 
> * Řekneme, že funkce $f$ je na množině $M$ *rostoucí*
>  jestliže pro každé $x_1, x_2\in M$ s vlastností $x_1<x_2$, platí
>  $f(x_1)<f(x_2)$.
>  * Řekneme, že funkce $f$ je na množině $M$ *klesající*
>  jestliže pro každé $x_1, x_2\in M$ s vlastností $x_1<x_2$, platí
>  $f(x_1)>f(x_2)$.
>  * Řekneme, že funkce $f$ je na množině $M$ *(ryze) monotonní*
>  je-li buď rostoucí, nebo klesající na $M$.
>
> Nespecifikujeme-li množinu $M$, máme na mysli, že uvedená vlastnost platí na celém definičním oboru funkce $f$.

> Poznámka (monotonie z hlediska řešitelnosti nerovnic). Je-li funkce $f$ rostoucí nebo klesající, je i prostá a nerovnice uvedené v předchozí definici jsou dokonce ekvivalentní. Můžeme tedy na obě strany nerovnice aplikovat tutéž rostoucí funkci, nebo rostoucí funkci z obou stran nerovnice vynechat.
>
>* Je-li $f$ rostoucí, platí $$x_1\leq x_2 \iff f(x_1)\leq f(x_2).$$
>* Je-li $f$ klesající, platí $$x_1\leq x_2 \iff f(x_1)\geq f(x_2).$$
>* Stejné vztahy platí i pro ostré nerovnosti.

Tyto poučky použijeme vždy, když rozvažujeme, zda můžeme k oběma
stranám nerovnice přičíst stejné číslo (můžeme), zda můžeme obě strany
nerovnice vynásobit stejným nenulovým číslem (můžeme, ale pokud
násobíme záporným číslem, obrací se směr nerovnosti), zda můžeme obě
strany nerovnice logaritmovat logaritmem o stejném základě (můžeme,
ale v případě logaritmu a základě menším než $1$ se obrací směr
nerovnosti), umocnit (nemůžeme, leda bychom měli dodatečnou informaci
například o tom, že obě strany nerovnice jsou kladné nebo obě strany
nerovnice jsou záporné) apod. Takových situací je mnoho a protože není
v lidských silách si všechny pamatovat, stačí je míst spojeny s
definicí rostoucí a klesající funkce.

**Příklad.** Funkce $\ln x$ a $\sqrt x$ jsou rostoucí a proto z nerovnic $$\ln x>\ln 6$$ a $$\sqrt x>\sqrt 6$$ plyne $$x>6.$$ Zejména v druhém případě je nutné si uvědomit, že používáme definici rostoucí funkce a poznámku připojenou za tuto definici. Nestačí říct, že umocňujeme obě strany nerovnice, jak by někdo mohl tento krok dezinterpretovat. Umocněním obou stran nerovnice se obecně může změnit obor pravdivosti, proto tato operace u nerovnic není povolena. My máme speciální případ nerovnice s nezápornými stranami.

**Příklad.** Funkce $\frac 1x$ a $y=x^2$ nejsou ani rostoucí ani klesající a proto z žádné z nerovností
$$\frac 1x \leq \frac 15$$
a
$$x^2 \leq 5^2$$
neplyne ani $x\leq 5$ ani $x\geq 5$.

**Příklad.** Funkce $\sqrt x$ nabývá nezáporných hodnot a funkce $\frac 1x$ je klesající na $(0,\infty)$. Proto z nerovnosti
$$\frac 1{\sqrt x} \leq \frac 15$$
plyne $$\sqrt x\geq 5=\sqrt {25}.$$ Druhá mocnina je na intervalu $(5,\infty)$ rostoucí a proto odsud plyne dále $$x\geq 25.$$


# Funkce více proměnných

Funkce má na vstupu více proměnných, na výstupu reálné číslo. Některé pojmy, jako například monotonie, ztrácejí ve světě funkcí více proměnných smysl, například monotonie nebo inverzní funkce. Proměnné značíme pomocí jejich fyzikálního označení. Bez fyzikálního kontextu zpravidla používáme funkce dvou, tří, nebo $n$ proměnných v následujícím tvaru.

* $f:\mathbb R^2\to\mathbb R$, $f(x,y)$ Geometricky můžeme chápat jako výšku přiřazenou bodu v rovině a výsledkem je [plocha ve 3D](https://sagecell.sagemath.org/?z=eJxNzc0OwiAQBOA7Ce-wN34CPbTxyM34HqhUm4AQQN19e1tTEy-Tb-YyL1-lIKE4m2tO0CgVGkrMvS-PGyyp5Nph69OVM87as87-EqYjuH2VB42adMAiLWo9WlpDGZBo7Gi-op8w-nOITqAwQLtpdbvntzv52IL6uxi2WaoP-CUxIw==&lang=python&interacts=eJyLjgUAARUAuQ==), nebo barvu přiřazenou bodu v rovině a výsledkem je [obarvená rovina](https://sagecell.sagemath.org/?z=eJw1iksKhDAQBfeCd-hdEmw3jtvcwrUSRZmBHlvaD-nbG_wsHlUFL6KChyOINRHVuDybbBLnY6FtVcY0bT95NvC88S7dQrxZuD-AkFjWWF-qtyJMPyLfyD4iUOhHWp8YmFj6IG_-w-LNdz2MOwFGSShb&lang=sage&interacts=eJyLjgUAARUAuQ==).
* $f:\mathbb R^3\to\mathbb R$, $f(x,y,z)$ Geometricky můžeme chápat jako barvu přiřazenou bodu v prostoru a výsledkem je obarvený prostor.
* $f:\mathbb R^n\to\mathbb R$, $f(x_1,x_2,\dots,x_n)$ Geometrická představa zde není možná, chápeme čistě abstraktně. 

# Vektorové funkce

Výstupem funkce je vektor. Vstupem je buď reálné číslo (funkce jedné proměnné), nebo vektor. V prvním případě se jedná o parametrickou křivku v [rovině](https://sagecell.sagemath.org/?z=eJxTVghILErMTS0pykzOrlSoSkxJzEtUyC7KLMtO5OXi5SqxLUss0lAvUdfk5SqAq4wvyMkv0YhOzi_WKNHUUSjOzAPSsToKGgY6BZmamgDCkhs_&lang=sage&interacts=eJyLjgUAARUAuQ==) nebo v [prostoru](https://sagecell.sagemath.org/?z=eJxTVghILErMTS0pykzOrlSoSkxJzEtUyC7KLMtO5OXi5SqxLUss0lAvUdfk5SqAq4wvyMkvMU7RiC7RSs4v1ijR1FEo0SrOzAOxSmJ1FDQMdMy0CjI1NQHngx4S&lang=sage&interacts=eJyLjgUAARUAuQ==), ve druhém případě bývá zpravidla na vstupu stejný počet veličin jako na výstupu a jedná se o vektorové pole (každému bodu v rovině je přiřazen [rovinný vektor](https://sagecell.sagemath.org/?z=eJyr0KnUqbItSyzSUK9QqFSoUtfk5SrIyS-JL0tNLskvik_LTM1J0dDQrdSp0NRR0KjQ0TXUMQSxKqGsxOICoMr4osSSzHxbQ00A7BcYPA==&lang=sage&interacts=eJyLjgUAARUAuQ==), každému bodu v prostoru je přiřazen [prostorový vektor](https://sagecell.sagemath.org/?z=eJwrzUtJTcvMS00BABLKA7M=&lang=sage&interacts=eJyLjgUAARUAuQ==)). Vektory zapisujeme pomocí jejich komponent následovně.
$$\vec F=(P,Q,R)=P\vec i+Q\vec j+R\vec k = P\vec e_1+Q\vec e_2+R\vec e_3$$


\iffalse

# Koncept (různé pojetí rychlosti)

<div class='obtekat'>

![Rychlost chápeme v různých kontextech. Podle kontextu se mění i jednotky, ve kterých rychlost určujeme.  Zdroj: pixabay.com](rychlost.jpg)

</div>



* Jak rychle (v kilometrech za hodinu) se pohybuje atlet, kůň nebo baseballový balon?
* Jak rychle (v metrech za rok) roste strom do výšky?
* Jak rychle (v kubických metrech za rok) roste strom (tj. jak rychle přibývá na objemu)?
* Jak rychle (ve stupních Celsia za hodinu) klesá teplota uvnitř stavby?
* Jak rychle (ve stupních Celsia na centimetr) se mění teplota ve vnější zdi oddělující vytopený dům a venkovní prostředí?
* Jak rychle (v newtonech na metr) klesá gravitační síla při vzdalování se od Země?
* Jak rychle (v Kč na litr) rostou náklady výrobce pivovaru při zvyšování produkce?
* Jak rychle (v metrech krychlových na metr) klesá hustota vzduchu s výškou nad zemí?
* Jak rychle (v litrech na kilometr za hodinu) roste spotřeba auta při vyšší průměrné cestovní rychlosti?


# Koncept (průměrná rychlost a okamžitá)

<div class='obtekat'>

![Průměr za kratší interval dává podrobnější informaci.  Zdroj: pixabay.com](mikroskop.jpg)

</div>

Průměrnou rychlost určujeme tak, že změnu sledované veličiny
přepočteme na jednotku času (u závislosti na čase), délky (u
závislosti na poloze) nebo obecně na jednotku veličiny, na které
sledovaná veličina závisí.

Průměrná rychlost s jakou se mění funkce $f$ na intervalu $[x,x+h]$ je dána vztahem $$\frac{f(x+h)-f(x)}h.$$

Průměrná rychlost pracuje jenom s informací v koncových bodech intervalu a proto bohužel neobsahuje informaci, co přesně se děje uvnitř intervalu, přes který průměrujeme. Počítáme-li ale průměr přes stále kratší interval, nevýhoda průměrné
rychlosti mizí. Cílem je počítat průměr přes interval prakticky
nerozlišitelný od nuly. To by dalo okamžitou rychlost. [Numerický experiment](https://sagecell.sagemath.org/?z=eJyNkEtOwzAQhveVeoeRZak2MS0tCyQk36ELWKVplTi2HJQ6wU7ABXEQxIoDIA5RuBeTFpDYYcm_Z8b65nWXe2CTCBZyKECBm_DxyDf3QaYpoYZFTokgS__5vv148W7_Cn6nbN2EDlwONI0iJjajArqbKdDVyvhcPSKWWH460E8WeSDLz2ddKts87N8g1E3fagWtb4BaeUZJlo1HpvFgoHLAoshPYlKIuF4M1nqRFOgr9M_xXgiYz6KYz7DGnItw6zssIyBU7vDG4we_HI8AD44iUyMYw2bkT1cycj6zfBqqbVtXZrcxfV0znh2Rzu--4UMCyf4FY6AvAsN5-BHWUem2-5OJXLtSm8rpkvx2F-QgSYqKMmyiy4tasyEqwOq81H4zTHHley0A97vVB5t_AUUzhdA=&lang=sage&interacts=eJyLjgUAARUAuQ==) ukazuje, že u některých funkcí toto funguje pěkně, u některých bohužel ne.


Pokud průměrujeme za stále kratší čas, čitatel i jmenovatel se blíží k
nule a jsou potíže s interpretací zlomku. Nulou totiž není možné
dělit. Musíme vytvořit koncept, který umožní sledovat, co se děje s
funkčními hodnotami funkce, pokud se vstupními daty jdeme "na krev" ke
kraji definičního oboru.

K vyřešení problému použijeme pojem limita na další přednášce. Výsledkem je pojem derivace představený ve cvičení v tomto týdnu.

\fi

