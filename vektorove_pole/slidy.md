% Vektorová pole a jejich tok
% Robert Mařík
% 7.5.2019

# Vektorové pole

Tok veličiny je možné charakterizovat tak, že v kažém bodě definujeme
rychlost a směr proudění. Nemusí se jednat o rychlost
molekul. Například při toku vody v půdě se molekuly vody "prodírají"
volnými cestami mezi zrnky půdy nebon horniny a efektivní rychlost
toku vody je nižší než rychlost jednotlivých molekul. To znamená, že
na takový pohyb nemá smysl aplikovat Newtonovy pohybové zákony tak jak
je známe z fyziky části a tuhých těles.

Tok stavové veličiny danou plochou vyjadřuje, kolik stavové veličiny
projde touto plochou za jednotku času, přepočteno na jednotku povrchu
plochy.

# Tok a gradient

Tok veličiny je způsoben nějakým hnacím faktorem. Například vítr (tok
molekul vzduchu) je vyvolán nerovnoměrným rozložením vzduchu (jeho
hustoty a tím i tlaku) v prostoru a směruje z míst s vyšším tlakem do
míst s tlakem nižším.  Větší rozdíl tlaků způsobí větší vítr a tím
větší tok vzduchu. Toto platí i pro jiné proudění. V ustáleném stavu
je pro široké rozmezí fyzikálních problémů závislost intenzity toku na
rozdílu hodnot veličiny, která tok inicializuje, lineární.  A protože
nulovému rozdílu v hodnotách hnacího faktoru odpovídá nulový tok, bude
tato lineární funkce přímou úměrností.


## Fickův zákon (difúze)

Difuzní tok $\vec J$ (množství látky které projde při difúzi
jednotkovou plochou za jednotku času) je úměrný gradientu koncentrace
$c$ této látky. Proto platí $$\vec J=-D\nabla c. $$ Veličina $D$
se nazývá difuzní koeficient. Pokud má $\vec J$ stejný směr jako
$\nabla c, je $D$ sklalární veličina. Pokud směry nejsou stejné,
je $D$ matice. Tato matice se navíc při změně báze transformuje
speciálním způsobem, tak jako vektory. Takové objekty nazýváme
tenzory. Z fyzikálních důvodů je tenzor $D$ symetrický.

Níže shrneme důležité praktické příklady.

## Darcyho zákon (proudění podzemní vody)

Darcy pokusy prokázal přímou úměru mezi rozdílem tlaků na koncích
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

Rovnice kontinuity je matematické vyjádření zákona
zachování. Rychlost, s jakou vytéká veličina z určitého místa,
tj. $$\mathop{\mathrm{div}}\vec j,$$ je součtem vydatnosti zdrojů v tomto místě
($\sigma$) a rychlosti, s jakou tato stavová veličina v daném místě
ubývá ($-\frac{\partial \rho}{\partial t}$). Tím získáváme rovnici kontinuity
$$\mathop{\mathrm{div}}\vec j = \sigma -\frac{\partial \rho}{\partial t}$$ neboli
$$\frac{\partial \rho}{\partial t}+\mathop{\mathrm{div}}\vec j = \sigma.$$ 

## Vedení tepla

Důležitým speciálním případem rovnice kontinuity je vedení tepla, kdy
dochází k přenosu energie a rovnice kontinuity vyjadřuje, že energie
nemizí ani se netvoří. Proto má rovnice vedení tepla většinou nulový
člen vyjadřující vydatnost zdrojů a tvar 
$$\frac{\partial \rho}{\partial T}+\mathop{\mathrm{div}}\vec j = 0.$$
Pokud k tomuto tvaru rovnice kontinuity přidáme Fourierův zákon,
získáme
$$\frac{\partial \rho}{\partial T}=\mathop{\mathrm{div}} (k\nabla T).$$ 
To je zobecnění rovnice vedení tepla v jedné dimenzi, kterou jsme
odvodili primitivními prostředky v úvodní přednášce.

Nenulové zdroje tepla jsou například, pokud je přítomno tření nebo
pokud dochází k ohřevu elektrickým proudem nebo mikrovlným zářením.

## Mechanika kontinua

V mechanice kontinua podobně jako u vedení tepla neuvažujeme zdroje. Rovnice kontinuity popisující proudění dané rychlostí $\vec u$ má poté tvar
$$\frac{\partial \rho}{\partial t} + \mathop{\mathrm{div}} (\rho \vec {u}) = 0,$$
kde $\rho$ je hustota. Pro nestlačitelnou tekutinu je hustota dále konstantní a odsud dostáváme $$\div \vec u =0.$$

# Vedení tepla v homogenním izotropním materiálu a ve dřevě

# Pohyb vody v půdě a ve dřevě
