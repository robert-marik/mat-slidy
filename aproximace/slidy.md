% Derivace & friends II
% Robert Mařík
% 2019

\iffalse

# Koncept (jak dělá derivace funkci předvídatelnou)

<div class='obtekat'>

![Pokud má funkce derivaci, dokážeme předvídat její chování. Nevidíme však daleko dopředu nebo dozadu, informace platí jenom v lokálně.  Zdroj: pixabay.com](tarot-3691074_640.jpg)

</div>

V minulé přednášce jsme si ukázali, že pokud má funkce $f$  a pokud se veličina $x$ změní z hodnoty $x_0$ o hodnotu $\Delta x$ (tj. nová hodnota je $x_0+\Delta x$), potom se $f$ mění přibližně o $f'(x_0)\Delta x$. 

Nyní tento koncept rozšíříme. Nejprve se budeme snažit aproximovat celou funkci (a ne jenom její změnu) a poté budeme aproximaci zpřesňovat.

# Lineární aproximace v 1D

> Věta.
Buď $f:\mathbb R\to\mathbb R$ funkce, která má derivaci. V okolí bodu $x_0$ platí přibližný vzorec $$f(x)\approx f(x_0)+ f'(x_0)(x-x_0)$$ neboli
$$f(x)\approx f(x_0)+ \frac{\mathrm df(x_0)}{\mathrm dx}(x-x_0).$$


Výše uvedený vzorec není těžké rozšifrovat.

* Veličina $f(x)$ je funkční hodnota v  bodě $x$, tu chceme odhadnout.
* Veličina $f(x_0)$ je známá funkční hodnota v  bodě $x_0$, to je výchozí bod pro odhad.
* veličina $f'(x_0)(x-x_0)$ je odhad změny veličiny $f$ vyvolané změnou veličiny $x$ z $x_0$ o  $\Delta x=x-x_0$ tak, jak jsme jej  používali v minulé přednášce.

**Příklad (růst stromu).** Strom má v roce 2019 výšku 3 metry a roste rychlostí 0.5 metru za rok. V roce $x$ je jeho výška dána vzorcem $$h(x)=3+0.5(x-2019).$$

**Příklad (aproximace důležitých funkcí v okolí nuly).** Ve cvičení ukážeme platnost následujících přiližných vzorců, které platí pro $x$ blízké k nule.
$$\sin x\approx x, \quad \cos x\approx 1,\qquad (1+x)^n=1+nx.$$
 
<div class='obtekat'>

![Vrcholek hory Chimborazo je místo nejvzdálenější od středu Země. Roli hraje nadmořská výška a zploštění Země. Gravitační zrychlení zde je nejmenší.  Zdroj: pixabay.com](chimborazo.jpg)

</div>

**Příklad (potenciální energie v tíhovém poli Země).**
Gravitační potenciál $V$ ve vzdálenosti $r$ od středu koule o hmotnosti $M$ je dán vztahem $$V(r)=-G\frac Mr,$$ kde $G$ je gravitační konstanta. Najdeme lineární aproximaci v bodě $R$.

Dosazením obdržíme $$V(R)=-G\frac MR=-GMR^{-1}$$ a derivováním
$$\frac{\mathrm dV}{\mathrm dr}=GMr^{-2}, \quad \frac{\mathrm
dV(R)}{\mathrm dr}=GMR^{-2}.  $$ Odsud poté získáme lineární
aproximaci $$V(r)\approx -GMR^{-1}+GMR^{-2}(r-R)$$ Pro Zemi jako kouli
o poloměru $R$ je $r-R$ výška nad Zemí a aproximaci je možno po
přeznačení napsat ve tvaru $$V(r)\approx V_0 +gh.$$ V tomto označení
je $V_0=-GMR^{-1}$ konstanta související s volbou nulové hladiny
potenciálu a vzhledem k libovolnosti volby nulové hladiny je tato
hodnota nepodstatná. Veličina $g=GMR^{-2}$ je tíhové zrychlení
vyjádřené pomocí gravitační konstanty $G$ a parametrů Země. Veličina $gh$ je potenciál v tíhovém poli Země. Tuto veličinu známe lépe ze vzorce pro potenciální energii tělesa o hmotnosti $m$, který má tvar $$E=mgh.$$


# Koncept (je možné chtít více?)

<div class='obtekat'>

![Pokud se rychlost růstu snižuje, je lineární aproximace nadhodnocená a funkční hodnoty jsou ve skutečnosti nižší.](tecna.png)

</div>


Lineární aproximace vychází z předpokladu, že rychlost růstu (nebo
poklesu) se příliš nemění. Někdy můžeme mít dodatečnou informaci o
tom, jak se tato rychlost změní. Například pokud se bude rychlost
zpomalovat, bude skutečná hodnota funkce menší než lineární
aproximace. 

Zajímá nás tedy přirozeně rychlost s jakou se mění rychlost,
tj. derivace derivace.



# Taylorův polynom (polynomiální aproximace) v 1D a derivace vyšších řádů.

> Definice (druhá a další vyšší derivace).
Druhou derivací rozumíme derivaci derivace. Označujeme $f''(x)$ nebo $\frac{\mathrm d^2 f}{\mathrm dx^2}$. Podobně $k$-tou derivací rozumíme derivaci $(k-1)$-ní derivace. Označujeme $f^{(k)}(x)$ nebo $\frac{\mathrm d^k f}{\mathrm dx^k}$. Platí tedy $$\frac {\mathrm d^2}{\mathrm dx^2}=\frac {\mathrm d}{\mathrm dx} \left(\frac {\mathrm d}{\mathrm dx}\right),\quad  
\frac {\mathrm d^k}{\mathrm dx^k}=\frac {\mathrm d}{\mathrm dx}
\left(\frac {\mathrm d^{k-1}}{\mathrm dx^{k-1}}\right).  $$

**Příklad.** Exponenciální funkce $e^x$ má všechny derivace stejné. U
mocninné funkce se každým derivováním sníží exponent. Je-li exponentem
přirozené číslo, od určitého řádu bude derivace nulová. Polynomy tedy
mají všechny derivace od jistého řádu rovny nule.
