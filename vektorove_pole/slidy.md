% Vektorová pole a jejich tok
% Robert Mařík
% 30.4.2019

# Vektorové pole

<div class='obtekat'>

![Vektorové pole vykreslené v náhodných bodech v prostoru.](3d_pole.png)

</div>


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
zákony tak jak je známe z fyziky částic a tuhých těles.

Tok stavové veličiny danou plochou vyjadřuje, kolik stavové veličiny
projde touto plochou za jednotku času, přepočteno na jednotku povrchu
plochy.

# Tok a gradient obecně

Tok veličiny je způsoben nějakým hnacím faktorem. Například vítr (tok
molekul vzduchu) je vyvolán nerovnoměrným rozložením vzduchu (jeho
hustoty a tím i tlaku) v prostoru a směruje z míst s vyšším tlakem do
míst s tlakem nižším.  Větší rozdíl tlaků způsobí "větší vítr" a tím
větší tok vzduchu. Toto platí i pro jiné proudění.

Nerovnoměrnost v prostorovém rozložení charakterizuje gradient. Viz
[úvodní přednáška o
derivacích](http://user.mendelu.cz/marik/mt/mat-slidy/derivace/index.html#(13)). Pro
potřeby matematické formulace fyzikálních zákonů gradient uvažujeme jako sloupcový
vektor.

V ustáleném stavu je pro široké rozmezí fyzikálních problémů závislost
intenzity toku na gradientu lineární.  A protože nulovému gradientu a
nulovému rozdílu v hodnotách "hnacího faktoru" odpovídá nulový tok,
bude tato lineární funkce přímou úměrností.

V dalším shrneme důležité praktické příklady, kdy je tok úměrný gradientu.
Konstanta úměrnosti je obecně pouze konstantou pro daný problém a dané
hodnoty parametrů. Může se měnit s velikostí studovaného objektu
(například obsah průřezu geologické vrstvy, kterou proudí voda), s
fyzikálními vlastnostmi proudící látky (např. viskozita nebo hustota
tekutiny, stlačitelnost vzduchu), s fyzikálními vlastnostmi prostředí
(např. velikost pórů v pórovitém prostředí nebo vlhkost dřeva). Proto
je možné tyto zákony najít v různých tvarech, s různými členy a
případnými přídavnými konstantami, které například odseparují vliv
proudící látky a vliv prostředí. Vždy záleží na konkrétní situaci,
zvyklostech v příslušném podoboru, nebo na přístupu autora. Není proto
naší ambicí vést výklad dopodrobna, všímejme si jenom základních
myšlenek.

# Tok a gradient v konkrérních případech

Zákony uvedené níže byly často odvozeny v jednorozměrném případě. V
moderní formulaci používáme obecný vektorový zápis, který zohledňuje i
směr. Konstanta úměrnosti potom zprostředkovává vztah mezi dvěma
vektory. Jedná se tedy z matematického pohledu o matici, která umožní
nejenom změnit délku vektoru a jeho jednotku, ale i směr. Tato matice
se navíc při změně báze transformuje speciálním způsobem, tak jako
vektory. Takové objekty nazýváme **tenzory**. Níže budeme pojmem
tenzor rozumět matici $3\times 3$ nebo $2\times 2$, podle
kontextu. (Obecněji je možno považovat skalární veličiny a vektory za
tenzory nižších řádů, toto my však dělat nebudeme.)

## Fickův zákon (difuze)

V roce 1855 německý lékař A. Fick objevil, že difuzní tok $\vec J$
(množství látky které projde při difúzi jednotkovou plochou za
jednotku času) je úměrný gradientu koncentrace $c$ této
látky. Matematicky vyjádřeno pomocí moderní terminologie to znamená, že platí
$$\vec J=-D\nabla c. $$
Veličina $D$ se nazývá difuzní koeficient. Pokud má $\vec J$ stejný
směr jako $\nabla c$, je $D$ skalární veličina. Pokud směry nejsou
stejné, je $D$ tenzor. Z fyzikálních důvodů je tenzor $D$ symetrický.

Difuzí se například dřevo zbavuje vlhkosti při vysoušení.

## Darcyho zákon (proudění podzemní vody)


\iffalse

<div class='obtekat'>

![Vodárna [Káraný](http://www.vodarnakarany.cz/) infiltruje vodu do podzemí. Znalost, co se tam s vodou děje a kudy a jak teče je nezbytná. Základním zákonem pro popis tohoto děje je Darcyho zákon. Zdroj: nase-voda.cz, Nina Havlová](karany.jpg)

</div>

\fi

V letech 1855 a 1856 francouzský inženýr H. Darcy pokusy prokázal
přímou úměru mezi rozdílem tlaků na koncích
trubice naplněné porézní zeminou (jednalo se vlastně o rozdíl výšek
pro šikmou trubici) a rychlost proudění vody touto trubicí. Tok
(množství vody, která proteče jednotkovou plochou za jednotku času) je
dán vztahem $$\vec q=-K\nabla p,$$ kde $p$ je tlak a $K$ je koeficient
vodivosti (někdy též koeficient filtrace), v obecném případě
symetrický tenzor, v izotropním případě, kdy $\vec q$ a $\nabla p$
mají stejný směr, veličina skalární.

Někdy se tento zákon neformuluje pomocí gradientu tlaku, ale pomocí
gradientu jiné veličiny, kterou zavádíme v hydrologii pro názorné
studium efektů, souvisejících s prouděním vody. Nejčastěji se jedná o
*vodní potenciál* a  hydraulickou výšku či 
[piezometrickou
hladinu](https://cs.wikipedia.org/wiki/Hladina_podzemn%C3%AD_vody). Piezometrická hladina je veličina používaná k tomu, abychom do jednoho
jednoduše modelovatelného faktoru (má rozměr stejný jako délka)
započítali všechny veličiny mající vliv na proudění podzemní vody, od
rozdílu nadmořských výšek, přes kapilární a osmotické jevy až po
vnější síly vyvolané tlakem geologických vrstev a jiné. Jedná se
vlastně o celkovou energii vody s tím, že některé části považujeme za
zanedbatelné. Například často neuvažujeme
kinetickou energii nebo osmózu a kapilární jevy.


## Fourierův zákon (vedení tepla)

Fourierův zákon se týká vedení tepla a vyjadřuje, 
že vektor hustoty tepelného toku $\vec q$ je úměrný gradientu teploty $\nabla T$
a má opačný směr, tj. 
$$\vec q=-D\nabla T.$$ 
Je-li materiál anizotropní, což je neobecnější
případ, je veličina $D$ symetrickým
tenzorem. Je-li materiál izotropní, je
$k$ skalární veličinou, případně skalární veličina násobená
jednotkovou maticí, pokud potřebujeme zachovat její maticový chrakter.


## Soretův efekt (termodifúze)

Tok tepla je vyvolaný nerovnoměrným rozložením teploty. Difúze chemické
látky je vyvolána nerovnoměrným rozložením koncentrace této
látky. Většinou je hybatelem procesu nerovnoměrnost v rozložení látky,
která se tímto procesem transportuje. Nemusí to však být
vždy. Příkladem je termodifúze, což je pohyb prvků vyvolaný
nerovnoměrným rozložením teploty. Například při difúzi vody ve dřevě s
nerovnoměrným rozložením teploty je tok dán vztahem $$\vec J=-D\nabla c - sD\nabla T, $$
kde $s$ je koeficient termodifúze. Na rozdíl od předchozích zákonů, u
Sortetova efektu dochází k transportu nejenom ve
směru maximálního poklesu (záporného gradientu) teploty, ale někdy i ve směru 
gradientu teploty. Viz Wikipedia a heslo Thermophoresis.

# Speciální případy vztahu mezi gradientem a tokem

Uvažujme vztah mezi gradientem a tokem ve tvaru $$\vec j=-K\nabla \varphi,$$ kde $K$ je symetrický tenzor. Gradient má ve trojrozměrném případě vyjádření
$$\nabla \varphi =\left(\frac{\partial \varphi}{\partial x},\frac{\partial \varphi}{\partial y},\frac{\partial \varphi}{\partial z}\right)^T$$
a ve 2D
$$\nabla \varphi =\left(\frac{\partial \varphi}{\partial x},\frac{\partial \varphi}{\partial y}\right)^T.$$ 

## Obecný případ (anizotropní)

Veličina $K$ je matice $$K=
\begin{pmatrix}
  k_{11}& k_{12} & k_{13}\\
  k_{21}& k_{22} & k_{23}\\
  k_{31}& k_{32} & k_{33}
\end{pmatrix}
$$
jejíž komponenty splňují $k_{ij}=k_{ji}$. Zpravidla jsou všechny
veličiny kladné a prvky v hlavní diagonále jsou dominantní.

Komponenty vektoru $\vec j$ jsou
$$
\begin{aligned}
  j_x&=-k_{11}\frac{\partial \varphi}{\partial x}-k_{12}\frac{\partial \varphi}{\partial y}-k_{13}\frac{\partial \varphi}{\partial z},\\
  j_y&=-k_{21}\frac{\partial \varphi}{\partial x}-k_{22}\frac{\partial \varphi}{\partial y}-k_{23}\frac{\partial \varphi}{\partial z},\\
  j_z&=-k_{31}\frac{\partial \varphi}{\partial x}-k_{32}\frac{\partial \varphi}{\partial y}-k_{33}\frac{\partial \varphi}{\partial z},
\end{aligned}
$$
což zjistíme prostým maticovým násobením. Prostor pro další úpravu není.

## Ortotropní případ, vhodně zvolené osy

\iffalse

<div class='obtekat'>

![Ortotropní materiál je typicky materiál z jednotlivých vrstev. Typicky dřevo, půda z různých vrstev, lepenka. Zdroj: pixabay.com](lepenka.jpg)

</div>

\fi


V obecném případě je zpravidla možné transformovat soustavu souřadnic tak, aby tenzor $K$ byl diagonální. Pro praktické výpočty se toto však často nevyplatí. Pokud však je studovaný problém ortotropní, má charakteristické směry (přesněji, má tři roviny symetrie materiálových vlastností), je možné zvolit souřadnice v souladu s těmito směry a matice $K$ je diagonální. 

$$K=
\begin{pmatrix}
  k_{11}& 0 & 0\\
 0& k_{22} & 0\\
  0& 0 & k_{33}
\end{pmatrix}
$$

Komponenty vektoru $\vec j$ jsou
$$
\begin{aligned}
  j_x&=-k_{11}\frac{\partial \varphi}{\partial x},\\
  j_y&=-k_{22}\frac{\partial \varphi}{\partial y},\\
  j_z&=-k_{33}\frac{\partial \varphi}{\partial z}.
\end{aligned}
$$

## Ortotropní případ ve 2D

Stejné jako ve 3D, pouze chybí třetí rovnice.

## Izotropní případ

Stejné jako ortotropní případ, ale navíc platí $k_{11}=k_{22}=k_{33}=k.$ Potom
$\vec j=-k\nabla \varphi$, kde $k$ je konstanta a vektory toku a gradientu mají opačný směr.


# Divergence

Divergence je veličina, která udává tok vektorového pole z uvažovaného
místa. Protože záleží na objemu, ze kterého tok sledujeme,
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

Viz přednáška.

# Rovnice kontinuity

\iffalse 

<div class='obtekat'>

![Rovnice kontinuity je vlastně bilance zisků a ztrát pro danou
 stavovou veličinu v libovolném bodě. Zdroj: pixabay.com](ucto.jpg)

</div>

\fi


Předpokládejme, že tok vektorového pole přenáší nějakou stavovou
veličinu (veličinu, která charakterizuje stav látky nebo
tělesa). Množství této veličiny v jednotkovém objemu tělesa označíme
$\rho$. Budeme uvažovat obecný nestacionární stav, kdy se $\rho$ může
měnit s časem.

* Daným místem může protékat vektorové pole a celková bilance
(tj. množství, které vyteče za jednotku času z jednotkového objemu
sníženo o množství, které doteče) nemusí být nulová. Tato celková
bilance je v každém místě vyjádřena divergencí vektorového pole.
* Někdy se stavová veličina může v daném místě kumulovat, nebo může
ubývat. Rychlost s jakou množství stavové veličiny v daném místě
přibývá je dáno parciální derivací $\frac{\partial \rho}{\partial t}$.
* V obecném případě stavová veličina přenášená prouděním může vznikat
nebo zanikat a tedy mohou být přítomny zdroje nebo spotřebiče této
stavové veličiny. Jejich vydatnost (přesněji množství stavové
veličiny, které vyprodukují v jednotkovém objemu za jednotku času)
označíme $\sigma$, přičemž spotřebiče bereme jako zdroje se zápornou
vydatností.

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
interpretaci členů. Někdy se naopak snažíme konstanty co nejvíce redukovat metodami transformace popsanými v přednášce o diferenciálních rovnicích. Proto volíme vhodné násobky veličin vystupujících v mateamtické formulaci tak, aby se co nejvíce konstant eliminovalo, případně shluklo do jediné veličiny. Zkušenosti ukazují, že je vhodné volit veličiny bezrozměrné. Například v publikaci P. Horáček, Fyzikální a mechanické vlastnosti dřeva I je zavedena [bezrozměrná vlhkost, bezrozměrný čas a bezrozměrná vzdálenost](https://is.mendelu.cz/eknihovna/opory/zobraz_cast.pl?cast=9180;lang=cz) na straně 61 pro rovnici popisující difuzi a [charakteristická délka, Biotovo číslo (bezrozměrná tepelná vodivost) a bezrozměrná teplota, bezrozměrný čas a bezrozměrná vzdálenost](https://is.mendelu.cz/eknihovna/opory/zobraz_cast.pl?cast=9182;lang=cz) pro rovnici popisující vedení tepla na stranách 88 a 89.

# Vedení tepla

\iffalse

<div class='obtekat'>

![Rovnice vedení tepla se využívá při modelování ohřevu nebo ochlazování. Zdroj: pixabay.com.](chladic.jpg)

</div>

\fi

Důležitým speciálním případem rovnice kontinuity je vedení tepla, kdy
dochází k přenosu energie a rovnice kontinuity vyjadřuje, že energie
nemizí ani se netvoří. Proto má rovnice vedení tepla zpravidla nulový
člen vyjadřující vydatnost zdrojů a tvar        
$$\rho c\frac{\partial T}{\partial t}+\mathop{\mathrm{div}}\vec j = 0,\tag{1}$$
kde $T$ je teplota, $\vec j$ tok tepla. Konstanty $\rho$ a $c$ jsou
hustota a měrná tepelná kapacita a slouží k přepočtení množství
dodaného tepla na lépe měřitelnou veličinu, na změnu teploty.

* Veličina $\frac{\partial T}{\partial t}$ udává, jak rychle roste teplota tělesa a koeficient $\rho c$ tuto hodnotu přepočítává na údaj, jak rychle roste vnitřní energie tělesa (kinetická energie molekul.)
* Člen $\mathop{\mathrm{div}}\vec j$ udává, kolik energie se v daném místě ubývá za jednotku času.
* Rovnice (1) vyjadřuje to, že energie, která do místa proudí, tj. $-\mathop{\mathrm{div}}\vec j$, se projeví odpovídajícím zvýšením teploty.

Pokud k tomuto tvaru rovnice kontinuity přidáme Fourierův zákon a divergenci převedeme na druhou stranu rovnice,
získáme
$$\rho c\frac{\partial T}{\partial t}=\mathop{\mathrm{div}} (D\nabla T).$$ 
To je zobecnění rovnice vedení tepla v jedné dimenzi, kterou jsme
odvodili primitivními prostředky (jenom pomocí parciálních derivací, bez gradientu a divergence) v úvodní přednášce.

V některých případech nemusí být člen charakterizující zdroje
nulový. Teplo může vznikat například při tření nebo při průchodu
elektrického proudu transformací z jiného druhu energie.

Ze střední školy známe [makroskopickou formu](https://cs.wikipedia.org/wiki/M%C4%9Brn%C3%A1_tepeln%C3%A1_kapacita#Vztah) rovnice (1) $$mc\Delta T=Q.$$ Ta je
zformulována pro těleso jako celek a $Q$ se uvažuje v opačném smyslu
než v rovnici kontinuity (teplo je kladné, pokud jej dodáváme).

V literatuře věnované problematice dřeva se rovnice vedení tepla ve dřevě označuje jako Druhý Fickův zákon (A. Požgaj a kol., Štruktúra a vlastnosti dreva, str. 202, Horáček, Fyzikální a mechanické vlastnosti dřeva I, str. 60)

# Proudění tekutiny v mechanice kontinua

\iffalse

<div class='obtekat'>

![Rovnice mechaniky kontinua dokáží popsat i děje, které se odehrávají v tekutinách tekoucích jinak, než voda nebo ideální tekutina. Běžným příkladem je med, technicky významným například beton. Kromě rovnice kontinuity je nutné dodat ještě další fyzikální vztahy. Zdroj: pixabay.com.](med.jpg)

</div>

\fi

V mechanice kontinua podobně jako u vedení tepla neuvažujeme zdroje. Rovnice kontinuity popisující proudění dané rychlostí $\vec u$ má poté tvar
$$\frac{\partial \rho}{\partial t} + \mathop{\mathrm{div}} (\rho \vec {u}) = 0,$$
kde $\rho$ je hustota. 
Tato rovnice napsána pro vzduch je jednou z rovnic používaných při [modelování vývoje počasí](http://www-history.mcs.st-and.ac.uk/HistTopics/Weather_forecasts.html)

Pro nestlačitelnou tekutinu je hustota dále konstantní a odsud
dostáváme $$\mathop{\mathrm{div}} \vec u =0.$$ Důsledkem této rovnice
je zvýšení rychlosti molekul pohybující se nestlačitelné tekutiny při
proudění místem s menším průřezem.

[Středoškolský makroskopický tvar](https://cs.wikipedia.org/wiki/Rovnice_kontinuity#Rovnice_kontinuity_ve_st%C5%99edo%C5%A1kolsk%C3%A9_fyzice) jednorozměrné rovnice kontinuity pro proudění nestlačitelné tekutiny je $$S u = \mathrm{konst}.$$

# Proudění vody ve dřevě

\iffalse

<div class='obtekat'>

![Proudění vody ve dřevě nás zajímá zejména u sušení. Ale podobně můžeme modelovat i vlhnutí. Zdroj: Wikipedia (Hbkrako).](drevo.jpg)

</div>

\fi

Jedná se o rovnici kontiunity pro koncentraci vody $c$. Voda ve dřevě
nevzniká ani nezaniká, jenom se transportuje mimo dřevo. Proto v
rovnici nebudou zdroje. Příslušným konstitutivním zákonem je Fickův
zákon. Příslušná rovnice popisující tento proces má tvar
$$\frac{\partial c}{\partial t}=\mathrm{\mathop{div}}(D\nabla c)\tag{*}$$
anebo (po započtení Soretova efektu)
$$\frac{\partial c}{\partial t}=\mathrm{\mathop{div}}(D\nabla c+sD\nabla T).$$
Ve druhém případě musíme tuto rovnici uvažovat společně s rovnicí
vedení tepla a mít tedy úlohu na soustavu dvou rovnic pro dvě
modelovaná pole.

V případě dřeva volíme souřadné osy souhlasně s charakteristickými směry ve dřevě a matice $D$ je poté diagonální. Proto se (*) redukuje na
$$
\frac{\partial c}{\partial t}=\frac{\partial }{\partial x}\left(D_x\frac{\partial c}{\partial x}\right)+\frac{\partial }{\partial y}\left(D_y\frac{\partial c}{\partial y}\right)+\frac{\partial }{\partial z}\left(D_z\frac{\partial c}{\partial z}\right)
$$
 Považujeme-li složky matice $D$ za konstanty vzhledem k jednotlivým prostorovým proměnným (nemusely by být, protože materiál nemusí být homogenní a může mít v jiných bodech jiné fyzikální vlastnosti), je možné psát rovnici ve tvaru
$$
\frac{\partial c}{\partial t}=D_x\frac{\partial^2 c}{\partial x^2}+D_y\frac{\partial^2 c}{\partial y^2}+D_z\frac{\partial^2 c}{\partial z^2},
$$
protože derivace konstantního násobku je násobek derivace.


# Proudění podzemní vody

\iffalse

<div class='obtekat'>

![Modelování pohybu podzemní vody je důležité pro nastavení správného režimu hospodaření s vodou, nebo pro účinnou ochranu zdrojů vody před kontaminací. Zdroj: pixabay.com.](voda.jpg)

</div>

\fi

Stavovou veličinou při proudění podzemní vody s [volnou hladinou](https://cs.wikipedia.org/wiki/Hladina_podzemn%C3%AD_vody) je [piezometrická
výška](https://cs.wikipedia.org/wiki/Hladina_podzemn%C3%AD_vody) $h$. (Pro jednoduchost si představme hladinu podzemní vody.)

Obecný tvar rovnice kontinuity pro podzemní vodu, ve kterém
uvažujeme nestacionární stav a 
zdroje či spotřebiče (například prosak do jiných geologických vrstev, mimo vodní kolektor)
má [tvar](https://is.muni.cz/th/eqgoo/dp.pdf)
$$\mathop{\mathrm{div}} (\vec q)=-S\frac{\partial h}{\partial t}+P,$$
kde $\vec q$ je tok, $S$ je měrná
objemová zásobnost (kolik vody je v jednotkovém množství půdy), $P$
je celkový objem ze zdrojů a $h$ je piezometrická výška. 
Tato rovnice vyjadřuje, že rozdíl mezi množstvím vody, které z místa vyteče a množstvím, které do místa vteče, je dán vydatností zdroje v tomto místě a tím, kolik vody v tomto místě ubude díky snížení hladiny podzemní vody (přesněji díky snížení piezometrické hladiny).

S Darcyho zákonem vyjádřeným pomocí piezometrické výšky a bez dodatečných zdrojů ($P=0$) obdržíme
$$\mathop{\mathrm{div}} \left(k\nabla h\right)=S\frac{\partial h}{\partial t}.$$
Často je
vertikální proudění zanedbatelné a úloha není trojrozměrná, ale ve
skutečnosti dvourozměrná a klademe
$\frac{\partial h}{\partial z}=0$. Pokud je možnost zvolit soustavu tak, že geometrické vlastnosti jsou v souladu s fyzikálními (jedna osa je ve směru největší a druhá ve směru nejmenší vodivosti), je tenzor $k$ diagonální  a rovnice se redukuje na
$$\frac{\partial }{\partial x} \left(k_x \frac{\partial h}{\partial x}\right)
+
\frac{\partial }{\partial y} \left(k_y \frac{\partial h}{\partial y}\right)
=
S\frac{\partial h}{\partial t}.
$$
Pokud jsou fyzikální vlastnosti stejné ve všech bodech uvažované oblasti, jsou $k_x$ a $k_y$ konstanty a úloha se dále redukuje na 
$$k_x \frac{\partial^2 h}{\partial x^2}
+
k_y \frac{\partial^2 h}{\partial y^2}
=
S\frac{\partial h}{\partial t}.
$$

Pro ustálené proudění ($h$ se nemění v čase) v těchto rovnicích klademe
$$\frac{\partial h}{\partial t}=0.$$
Je-li $K$ konstanta, redukuje se tato rovnice na 
$$\frac{\partial ^2 h}{\partial x^2}+\frac{\partial^2 h}{\partial y^2}=0.$$

# Vedení tepla v homogenním izotropním materiálu a ve dřevě

