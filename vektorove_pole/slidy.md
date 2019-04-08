% Vektorová pole a jejich tok
% Robert Mařík
% 7.5.2019

# Vektorové pole

Vektorové pole je vektorová funkce, dvou nebo tří proměnných. Můžeme
si ji představit jako zobrazení, které každému bodu v rovině nebo v
prostoru přiřadí vektor. Proto je vhodné tyto veličiny použít při
popisu proudění. Ať už hmatatelných látek (tekutina, elektrony) nebo
obecnější veličiny (teplo, elektrická intenzita). Pro popis proudění
jevů vždy využíváme vhodné veličiny. V případě popisu látkového
prostředí se jeví jako vhodnou veličinou například rychlost
jednotlivých částic nebo molekul, ale ani toto nemusí být vždy
optimální.  Například při toku vody v půdě se molekuly vody
"prodírají" volnými cestami mezi zrnky půdy nebo horniny a efektivní
rychlost toku vody je nižší než rychlost jednotlivých molekul. To
znamená, že na takový pohyb nemá smysl aplikovat Newtonovy pohybové
zákony tak jak je známe z fyziky části a tuhých těles.

Tok stavové veličiny danou plochou vyjadřuje, kolik stavové veličiny
projde touto plochou za jednotku času, přepočteno na jednotku povrchu
plochy.

# Tok a gradient

Tok veličiny je způsoben nějakým hnacím faktorem. Například vítr (tok
molekul vzduchu) je vyvolán nerovnoměrným rozložením vzduchu (jeho
hustoty a tím i tlaku) v prostoru a směruje z míst s vyšším tlakem do
míst s tlakem nižším.  Větší rozdíl tlaků způsobí větší vítr a tím
větší tok vzduchu. Toto platí i pro jiné proudění.

Nerovnoměrnost v prostorovém rozložení charakterizuje gradient. Viz
[úvodní přednáška o derivacích](http://user.mendelu.cz/marik/mt/mat-slidy/derivace/index.html#(13)).

V ustáleném stavu je pro široké rozmezí fyzikálních problémů závislost
intenzity toku na gradientu lineární.  A protože nulovému gradientu a
nulovému rozdílu v hodnotách "hnacího faktoru" odpovídá nulový tok, bude
tato lineární funkce přímou úměrností.


## Fickův zákon (difúze)

V roce 1855 německý lékař A. Fick objevil, že difuzní tok $\vec J$
(množství látky které projde při difúzi jednotkovou plochou za
jednotku času) je úměrný gradientu koncentrace $c$ této
látky. Matematicky vyjádřeno pomocí moderní terminologie to znamená, že platí
$$\vec J=-D\nabla c. $$
Veličina $D$ se nazývá difuzní koeficient. Pokud má $\vec J$ stejný
směr jako $\nabla c$, je $D$ skalární veličina. Pokud směry nejsou
stejné, je $D$ matice. Tato matice se navíc při změně báze
transformuje speciálním způsobem, tak jako vektory. Takové objekty
nazýváme tenzory. Z fyzikálních důvodů je tenzor $D$ symetrický.

Níže shrneme důležité praktické příklady.

## Darcyho zákon (proudění podzemní vody)

V letech 1855 a 1856 francouzský inženýr H. Darcy pokusy prokázal
přímou úměru mezi rozdílem tlaků na koncích
trubice naplněné porézní zeminou (jednalo se vlastně o rozdíl výšek
pro šikmou trubici) a rychlost proudění vody touto trubicí. Tok
(množství vody, která proteče jednotkovou plochou za jednotku času) je
dán vztahem $$\vec q=-K\nabla p,$$ kde $p$ je tlak a $K$ je koeficient
vodivosti (někdy též koeficient filtrace), v obecném případě
symetrický tenzor, v izotropním případě, kdy $\vec q$ a $\nabla p$
mají stejný směr, veličina skalární.

## Fourierův zákon (vedení tepla)

Fourierův zákon se týká vedení tepla a vyjadřuje, že 
že vektor hustoty tepelného toku $\vec q$ je úměrný gradientu teploty $\nabla T$
a má opačný směr, tj. 
 $$\vec q=-k\nabla T.$$ Veličina $k$ opět může být symetrickým
 tenzorem, je-li materiál anizotropní.


## Soretův efekt (termodifúze)

Tok tepla je vyvolaný nerovnoměrným rozložením tepla. Difúze chemické
látky je vyvolána nerovnoměrným rozložením koncentrace této
látky. Většinou je hybatelem procesu nerovnoměrnost v rozložení látky,
která se tímto procesem transportuje. Nemusí to však být
vždy. Příkladem je termodifúze, což je pohyb prvků vyvolaný
nerovnoměrným rozložením teploty. Například při difúzi vody ve dřevě s
nerovnoměrným rozložením teploty je tok dán vztahem $$\vec J=-D\nabla c - s D \nabla T, $$
kde $s$ je koeficient termodifúze. Narozdíl od předchozích zákonů, u
Sortetova efektu dochází k transportu nejenom ve
směru maximálního poklesu (záporného gradientu) teploty, ale někdy i ve směru 
gradientu teploty. Viz Wikipedia a heslo Thermophoresis.

# Divergence

Divergence je veličina, která udává tok vektorového pole z uvažovaného
místa všemi směry. Protože záleží na objemu, ze kterého tok sledujeme,
je tento tok vztažený na jednotku objemu. 

* Pro vektorovou funkci $$\vec F=(P,Q,R)=P\vec i + Q\vec j + R\vec k,$$ kde $P$, $Q$ a $R$ jsou funkce tří proměnných $x$, $y$ a $z$ definujeme
divergenci vztahem
	  $$\mathop{\mathrm{div}}\vec F=\nabla\cdot\vec F=\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z}.$$
* Pro vektorovou funkci dvou proměnných definujeme divergenci analogicky, pouze chybí třetí člen. [Online výpočet a obrázek.](https://sagecell.sagemath.org/?z=eJyNUstqwzAQvBv8D0uS1jJRipO7rv2JOhjFlhOBbBn5USkh_96V4iZpoVBh0K52RqOdtaWOntnEDUksODgnaRzFUU2sP08Z2Thq145mKeBaQivaUemJg9EDLwVIqOQkzFG0pYij5U_ezAq8G-sPsN-_sQ_wLAH-QbaRLQXbcEvBhdhhDAw2Wwr4hc0DUaFmpJJ1TeqPbE9tup6T7Z66e7Lbo3D61sumU7J2RT0qRbD1cjTq8S7YPLjnZ65L6b22exbJPPBRy541tx4Iwd_-pD_JaWgUMYtVfhBH2V64ksdWVFfIJ1HC-yuDlx7yHPI4Qlfyhg8n3V3CbpoL9nm9_guJNt6RwDxStNVdbbV4CSyi-CAswd4Zds_8T4EGUbgde1d_V-bS7NhzDZdvslN6KFB30KaopVAVCY7M06bekDnG2zAKM_Yj9qmjYczulvK-w3sKwwepGY661EoblhzUKJL0C_Io15w=&lang=sage)


Pokud při ustáleném proudění je v některém místě kladná divergence,
znamená to, že v tomto místě musí být zdroj této veličiny. Proto se
vektorové pole, jehož divergence je rovna nule, se nazývá **nezřídlové
pole**. Ze střední školy z fyziky umíme modelovat vektorové pole
pomocí siločar. Siločáry nezřídlového pole nikde nezačínají ani
nekončí a jsou to uzavřené křivky. Stacionární magnetické pole je
nezřídlové (rozříznutím tyčového magnetu vzniknou dva magnety,
nevznikne samostatný jižní pól a severní pól magnetu.)

# Výpočet divergence

# Rovnice kontinuity

Předpokládejme, že tok vektorového pole přenáší nějakou stavovou
veličinu, veličinu, která charakterizuje stav látky nebo
tělesa. Množství této veličiny v jednotkovém objemu tělesa označíme
$\rho$. V obecném případě stavová veličina může vznikat nebo zanikat a
tedy mohou být přítomny zdroje nebo spotřebiče této stavové
veličiny. Jejich vydatnost (přesněji množství stavové veličiny, které
vyprodukují v jednotkovém objemu za jednotku času) označíme $\sigma$,
přičemž spotřebiče bereme jako zdroje se zápornou vydatností.

Daným místem může protékat vektorové pole a celková bilance, množství,
které vyteče za jednotku času z jednotkového objemu sníženo o
množství, které doteče, nemusí být nulové. Tato celková bilance je
vyjádřena divergencí vektorového pole.

Někdy se stavová veličina může v daném místě kumulovat, nebo může
ubývat. Rychlost s jakou množství stavové veličiny v daném místě
přibývá je dáno parciální derivací $\frac{\partial \rho}{\partial t}$.

Rovnice kontinuity je matematické vyjádření zákona zachování. Udává,
že pro libovolnou část tělesa je rychlost změny množství stavové
veličiny dáno celkovou vydatností zdrojů v této části snížené o tok z
této části tělesa ven. Pro přesné odvození pro libovolnou část objemu
nemáme bohužel matematické prostředky (tok vyjádřený pomocí plošného
integrálu, celkové množství tělesa promocí trojného integrálu a věty
pro převod plošného integrálu na trojný), ale pokusíme se tedy o
jakousi bilanci v obecném místě tělesa pomocí hustoty stavové veličiny
a divergence. Podle výše uvedeného platí
$$\frac{\partial \rho}{\partial t}
=\sigma-\mathop{\mathrm{div}}  \vec j
$$
neboli $$\frac{\partial
\rho}{\partial t}+\mathop{\mathrm{div}}\vec j = \sigma.$$
Tato rovnice se nazývá *rovnice kontinuity* a díky své obecnosti
popisuje širokou škálu problémů týkajících se živé i neživé přírody. V
matematice často rovnice uvažujeme v právě tomto tvaru.  Při
praktickém použití většinou preferujeme názornou interpretaci
jednotlivých veličin a proto se v rovnici mohou objevit další
konstanty úměrnosti, které umožní sladit jednotky a fyzikální
interpretaci členů.

# Rovnice kontinuity v praxi


## Vedení tepla

Důležitým speciálním případem rovnice kontinuity je vedení tepla, kdy
dochází k přenosu energie a rovnice kontinuity vyjadřuje, že energie
nemizí ani se netvoří. Proto má rovnice vedení tepla zpravidla nulový
člen vyjadřující vydatnost zdrojů a tvar        
$$\rho c\frac{\partial T}{\partial t}+\mathop{\mathrm{div}}\vec j = 0,$$
kde $T$ je teplota, $\vec j$ tok tepla. Konstanty $\rho$ a $c$ jsou
hustota a měrná tepelná kapacita a slouží k přepočtení množství
dodaného tepla na na lápe měřitelnou veličinu, na změnu teploty.
Pokud k tomuto tvaru rovnice kontinuity přidáme Fourierův zákon,
získáme
$$\rho c\frac{\partial T}{\partial t}=\mathop{\mathrm{div}} (k\nabla T).$$ 
To je zobecnění rovnice vedení tepla v jedné dimenzi, kterou jsme
odvodili primitivními prostředky v úvodní přednášce.

V některých případech nemusí být člen charakterizující zdroje
nulový. teplo může vznikat například při tření nebo při průchodu
elektrického proudu transformací z jiného druhu energie.

## Proudění vody ve dřevě

Jedná se o rovnici kontiunity pro koncentraci vody $c$. Příslušným
konstitutivním zákonem je Fickův zákon a rovnice neobsahuje zdroje
(vlhkost proudí ven, neztrácí se). Příslušná rovnice popisující tento
proces má tvar
$$\frac{\partial c}{\partial t}=\mathrm{\mathop{div}}(D\nabla c)\tag{*}$$
anebo (po započtení Soretova efektru)
$$\frac{\partial c}{\partial t}=\mathrm{\mathop{div}}(D\nabla c+sD\nabla T).$$
Ve druhém případě musíme tuto rovnici uvažovat společně s rovnicí
vedení tepla a mít tedy úlohu na soustavu dvou rovnic pro dvě
modelovaná pole.

V případě dřeva volíme souřadné osy souhlasně s charakteristickými směry ve dřevě a matice $D$ je poté diagonální. Proto se (*) redukuje na
$$
\frac{\partial c}{\partial t}=\frac{\partial }{\partial x}\left(D_x\frac{\partial c}{\partial x}\right)+\frac{\partial }{\partial y}\left(D_y\frac{\partial c}{\partial y}\right)+\frac{\partial }{\partial z}\left(D_z\frac{\partial c}{\partial z}\right)
$$
 Považujeme-li složky matice $D$ za konstanty (nemusely by být, protože pokud se v čase dřevo zabavuje vlhkosti, mění se jeho fyzikální vlstnosti), je možné psát rovnici ve tvaru
$$
\frac{\partial c}{\partial t}=D_x\frac{\partial^2 c}{\partial x^2}+D_y\frac{\partial^2 c}{\partial y^2}+D_z\frac{\partial^2 c}{\partial z^2},
$$
protože derivace konstantního násobku je násobek derivace.


## Mechanika kontinua

V mechanice kontinua podobně jako u vedení tepla neuvažujeme zdroje. Rovnice kontinuity popisující proudění dané rychlostí $\vec u$ má poté tvar
$$\frac{\partial \rho}{\partial t} + \mathop{\mathrm{div}} (\rho \vec {u}) = 0,$$
kde $\rho$ je hustota. 
Tato rovnice napsána pro vzduch je jednou z rovnic používaných při [modelování vývoje počasí](http://www-history.mcs.st-and.ac.uk/HistTopics/Weather_forecasts.html)

Pro nestlačitelnou tekutinu je hustota dále konstantní a odsud
dostáváme $$\mathop{\mathrm{div}} \vec u =0.$$ Důsledkem této rovnice
je zvýšení rychlosti molekul pohybující se nestlačitelné tekutiny při
proudění místem s menším průřezem.

## Proudění podzemní vody 

Proudění podzemní vody s volnou hladinou je popsáno rovnicí
$$\mathop{\mathrm{div}}(K\nabla h)=0,$$
kde $h$ je [piezometrická
hladina](https://cs.wikipedia.org/wiki/Hladina_podzemn%C3%AD_vody) -
veličina používaná v hydrologii k
tomu, abychom do jednoho jednoduše modelovatelného faktoru (má rozměr
stejný jako délka) započítali všechny veličiny mající vliv na
proudění podzemní vody, od rozdílu nadmořských výšek, přes kapilární a osmotické
jevy až po vnější síly vyvolané tlakem geologických vrstev a jiné.

Nejobecnější tvar rovnice kontinuity pro podzemní vodu má se zapojením
Darcyho zákona tvar
$$\mathop{\mathrm{div}} (\kappa \nabla h\rho)=-S\rho\frac{\partial h}{\partial t}+P\rho,$$
kde $\kappa$ je tenzor filtrace, $\rho$ je hustota vody, $S$ je měrná
objemová zásobnost (kolik vody je v jednotkovém množství půdy) a $P$
je celkový objem ze zdrojů. Často je vertikální proudění zadnebatelné
a úloha není trojrozměrná, ale ve skutečnosti dvourozměrná a klademe
$\frac{\partial h}{\partial z}=0$.

# Vedení tepla v homogenním izotropním materiálu a ve dřevě

# Pohyb vody v půdě a ve dřevě
