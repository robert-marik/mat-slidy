% Shrnutí
% Robert Mařík
% 21.5.2019

# Co tu najdete

* Definice jsou neformální, vyjádřeny slovně a proto někdy bohužel poněkud vágně.
* Hlavní je uvědomit si při druhém čtení souvislosti mezi pojmy a aplikační potenciál jednotlivých pojmů.

# Vlastnosti funkcí

## Prostá funkce

* Definice: Prostá funkce nabývá každou funkční hodnotu jenom jednou.
* Lze u ní zrekonstruovat vstupní data, tj. definovat inverzní funkci.
* Pokud v rovnici vystupují prosté funkce, dá se tato rovnice řešit
  (pomocí inverzních funkcí).

## Rostoucí funkce

* Definice: Rostoucí funkce  zachovává uspořádání vzorů i pro funkční hodnoty.
* Můžeme je detekovat pomocí znaménka derivace.
* Podobně je definována klesající funkce. U spojitých funkcí změna
  růstu na klesání nebo naopak signalizuje lokální extrém.
* Umožní modifikovat úlohu na lokální extrémy. Například úloha
  $x^3\sqrt{1-x^2}\to\max$ je na intervalu $x\in (0,\infty)$
  ekvivalentní mnohem jednodušší úloze pro druhou mocninu funkce,
  tj. $x^6(1-x^2)\to\max$.

## Spojitá funkce

* Definice: Spojitá funkce má v každém bodě stejnou limitu a funkční hodnotu.
* Nespojité funkce jsou nepředvídatelné a jejich chování je
  neintuitivní.  Například změna monotonie si bez spojitostí nemusí
  vynutit existenci lokálního extrému. Spojité jsou v určitém smyslu
  pěkné. Spojitost je vyžadována například pro Bolzanovu větu a ta je základním nástrojem pro vyšetřování průběhu funkce (umožní najít intervaly kde je fuknce kladná a záporná, kde je funkce rostoucí a klesající, kde je funkce konvexní a konkávní).
* Spojitost je automaticky zaručena, jakmile existuje derivace.
* Elementární funkce jsou spojité na svém definičním oboru.

# Derivace

## Obyčejná derivace 

* Definice: $\frac{\mathrm df}{\mathrm dx}=\lim_{h\to 0} \frac{f(x+h)-f(x)}h$
* Okamžitá rychlost změny $f$, tj. změna veličiny $f$ vztažená na
  jednotku veličiny $x$.
* Jednotka je stejná, jako bychom veličiny $f$ a $x$ dělili.   
* Derivace umožní detekovat monotonii.
* Derivace umožní detekovat rychlost změny a tím umožní lineární
  aproximaci. Ta se uplatní při přibližných výpočtech (odvození
  Newtonovy věty, u paricálních derivací odvození tenzoru malých
  deformací a odvození vzorce pro divergenci vektorového pole).
* Derivace umožní formulovat modely založené na rychlostech, kdy
  rychlost měnící se veličiny souvisí s velikostí této veličiny.
* Derivace umožní formulovat fyzikální zákony, ve kterých hraje roli
  rychlost změny nějaké fyzikální veličiny. (Např. Newtonův zákon
  ochlazování, rychlost s jakou se mění teplota tělesa při tepelené
  výměně je úměrná rozdílu teplot.)

## Gradient

* Definice: Gradient funkce (většinou více proměnných) je vektor sestavený z parciálních derivací funkce.
* Je důležitý při studiu materiálové odezvy, protože podnětem pro reakci
materiálu bývá gradient stavové veličiny, viz například Fickův zákon,
Fourierův zákon, Darcyho zákon.
* Gradient (přesněji vektor z parciálních derivací podle prostorových proměnných) umožní formulovat fyzikální zákony charakterizující proudění stavové veličiny způsobené nerovnoměrným prostorovým rozložením této veličiny. (Například teplota se mění dodáním nebo odebráním tepla a teplo proudí ve směru daném Fourierovým zákonem. V izotropním protředí tedy ve směru gradientu vyásobeného faktorem $-1$, tj. ve směru maximálního poklesu teploty.)

# Divergence, tok a zákony zachování

* Definice: Divergence vektorového pole je celková bilance toku z daného místa přes hranici myšlené (nekonečně malé) množiny, dělená mírou (objemem ve 3D nebo plochou ve 2D) této množiny.
* Rovice kontinuity je vyjádření říkající, že rychlost změny stavové veličiny v daném místě je dána vzdatností zdrojů v tomto místě zmenšené o tok z daného místa.
* K rovnici kontinuity často přidáváme konstituční zákon. Většinou má roli vztahu vyjadřujícího, že intenzita toku je záporně vzatý gradient stavové veličiny vynásobený materiálovou konstantou (difuzní rovnice, obecně tenzorového charakteru, tj. matice).
* Někdy nás zajímá stacionární případ, kdy je nastolena rovnováha. Potom $\frac{\partial u}{\partial t}=0.$
* Někdy nás zajímá případ, kdy nejsou přítomny zdroje. Potom $\sigma=0.$ Často toto je u rovnice vedení tepla (uvnitř dřeva nejsou tepelné zdroje) a vlhkosti (uvnitř dřeva se nijak nesyntetizuje voda).
* Výraz popisující tok, tj. $\mathrm{div}(D\nabla u)$, může mít v různých prostředí různou míru zjednodušení. 

    * Nejjednodušší tvar je pro homogenní izotropní prostředí. Potom se jedná o rovnici typu (např. ve dvou rozměrech) $$\frac{\partial u}{\partial t}=\sigma + D\frac{\partial ^2 u}{\partial x^2}+ D\frac{\partial ^2 u}{\partial y^2}.$$
    * Pro ortotropní materiál (např dřevo) je možné identifikovat vlastní směry, ale v každém vlastním směru je jiná materiálová chrakteristika, tj. místo společného $D$ u obou členů s derivacemi podle souřadnic bude mít každý člen svoji konstantu. $$\frac{\partial u}{\partial t}=\sigma + D_x\frac{\partial ^2 u}{\partial x^2}+ D_y\frac{\partial ^2 u}{\partial y^2}$$
    * Pro ortotropní nehomogení materiál není možné pro členy v difuzní rovnici využít pravidlo pro derivaci konstanty a maximální míra zjednodušení je $$\frac{\partial u}{\partial t}=\sigma + \frac{\partial}{\partial x}\left(D_x\frac{\partial  u}{\partial x}\right) + \frac{\partial}{\partial y}\left(D_y\frac{\partial  u}{\partial y}\right).$$

 

# Maticový součin

* Slouží k efektivnímu zápisu lineárních vztahů mezi vícerozměrnými
  veličinami, kdy se jednotlivé příspěvky sčítají. Například Hookův
  zákon: každá složka tenzoru napětí (definovaný působící silou) se
  může s lineární odezvou projevit deformací v kterémkoliv směru a pro
  každý směr se příspěvky od jednotlivých složek tenzoru napětí
  sčítají.
* Umožňuje definovat fyzikální zákony mezi vektory, které nemusí mít
  stejný směr (konstituční zákony jako Fickův apod).
* Umožňuje modelovat vývoj systémů se skokovou změnou v čase (Leslieho
  matice, Markovovy řetězce).
* Umožňuje efektivně zapsat soustavu lineárních rovnic.
* Umožňuje přecházet k jiným souřadnicovým systémům, např. umožňuje
  pootočení soustavy souřadnic.

# Vlastní číslo a vlastní vektor matice

* Definice: Vektor $\vec u$ je vlastní vektor matice $A$ příslušný vlastní
  hodnotě $\lambda$, pokud $A\vec u=\lambda \vec u$.
* Vlastní vektor k matici $A$ se působením matice $A$ neodchýlí od
  původního směru. V řeči materiálů tedy materiálová odezva má stejný
  směr jako podnět, pokud je podnět ve vlastním směru. Například pokud
  tlak klesá směrem, ve kterém pórovité prostředí vede nejochotněji
  tekutinu, tak tato tekutina proudí přesně ve směru maximálního
  poklesu tlaku. Pokud tlak klesá jiným směrem, tok tekutiny se stáčí
  do směru, ve kterém materiál vede tekutinu "ochotněji".
* Vlastní vektory a čísla odpovídají směrům, ve kterých má reakce
  materiálu na vnější podnět maximum nebo minimum.


# Transponovaná matice

* Definice: Matica transponovaná je matice, ve které jsou řádky zaměněny za sloupce.
* Slouží například při vyjádření tenzoru deformace k odfiltrování
  pootočení z matice popisující změnu polohy bodů v tělese,
  tj. (matematicky vyjádřeno) k rozkladu matice na součet symetrické a
  antisymetrické matice.

# Inverzní matice

* Definice: $A A^{-1}=A^{-1}A=I$
* Existuje pouze pokud je determinant matice $A$ nenulový.
* Teoreticky je řešením soustavy lineárních rovnic $AX=B$ vektor $X=A^{-1}B$. V praxi je výpočet inverzní matice nestabilní a používáme inverzi jenom k jednodušším maticím (Jacobiho metoda používá inverzi k diagonální matici, Gaussova-Seidelova inverzi k trojúhelníkové matici, ale obě metody jsou iterační)
* Je-li přechod mezi souřadnicemi $X$ a $X'$ dán vztahem $X=AX'$, v opačném směru platí $X'=A^{-1}X$.
* Je-li fyzikální zákon (Hookův, Fickův, ...) mezi vektory ve tvaru $Y=AX$ a přechod do čárkovaných souřadnic je umožněn rovnicemi $Y=PY'$, $X=PX'$, je $Y'=P^{-1}AP X'$ a $P^{-1}AP$ je vyjádření tenzoru $A$ v čárkovaných souřadnicích. Používá se zejména při otočení souřadnic.

# Determinant

* Charakterizuje svou nulovostí nebo nenulovostí neexistenci nebo existenci inverzní matice.
* Úloha na hledání vlastních čísel (maximální a minimální materiálová odezva na podnět) vede na výpočet jistého determinantu.

# Soustava lineárních rovnic

* Úloha na hledání vlastních směrů (směr ve kterém je extrém
  materiálové odezvy na podnět) vede na řešení jisté soustavy
  lineárních rovnic.
* Přibližné řešení difuzní rovnice nebo rovnice vedení tepla je možné
  realizovat převodem na soustavu lineárních rovnic. Například v
  metodě konečných diferencí hraje při aproximaci roli Taylorův
  polynom.
* Univerzální metodou řešení je Gaussova eliminace, numericky
  výhodnější pro diagonálně dominantní matice jsou iterační metody,
  Jacobiho a Gaussova-Seidelova.
* Ve vektorové podobě jde o vyjádření zadaného vektoru jako lineární
  kombinace jiných zadaných vektorů. Tedy například rozklad vektoru do
  daných směrů.


# Věty z diferenciálního počtu

V tomto seznamu **není** znění vět uvedených v semestru, ale je zde
naznačen jejich význam. Plné znění vět je v přednáškách (v prezentacích
žlutě).

## Věta o spojitosti elementárních funkcí

Udává, že běžné funkce jsou spojité v každém bodě, kde jsou definovány.

## Věta o souvislosti derivace a monotonie

Představuje efektivní nástroj pro detekci množin, na kterých je funkce rostoucí nebo klesající.

## Věta o lineární aproximaci

Jedno z nejdůležitějších využití derivace - lineární aproximace funkce. Využívá se například v odvození Newtonovy metody.

## Taylorova věta

Vyjadřuje skutečnost, že pokud se snažíme aproximovat funkci polynomem, je při zadaném stupni polynomu optimální aproximací Taylorův polynom. Tento polynom můžeme použít například pro aproximaci potenciálu v okolí lokálního extrému (první derivace tam je nulová a nijak by nepomohla) nebo pro aproximaci druhé derivace v metodě konečných diferencí (při řešení rovnice vedení tepla přibližnými metodami).

## Fermatova věta o lokálním extrému

Fermatova věta umožňuje soustředit se při hledání extrémů na relativně málo bodů - na body, kde je derivace rovna nule nebo není definovaná vůbec.

## Věta o souvislosti monotonie s lokálními extrémy

Efektivní nástroj, jak u spojitých funkcí detekovat lokální extrémy pomocí první derivace (ta souvisí s monotonií).

## Bolzanova věta

Prostředek na nalezení intervalů, kde je zadaný výraz kladný nebo záporný. Na této větě je založeno například hledání lokálních extrémů pomocí derivace, protože potřebujeme intervaly, kde je derivace funkce kladná a kde je záporná.

## Výpočet divergence

Divergence je důležitá veličina používaná pro obecnou formulaci zákonů zachování v rovnici kontinuity. V kartézských souřadnicích je možné ji vyjádřit pomocí parciálních derivací.

# Věty z integrálního počtu

## Věta o jednoznačnosti primitivní funkce (až na aditivní konstantu)

Udává, že pokud známe rychlost s jakou se mění funkce, je tato funkce dána jednoznačně, až na aditivní konstantu související s počáteční hodnotou.

## Věta o monotonii integrálu vzhledem k funkci

Zobecňuje názornou myšlenku, že pokud se zvýší rychlost, s jakou se mění nějaká veličina, je za stejný čas změna výraznější.

## Lichoběžníkové pravidlo

Umožňuje aproximovat určitý integrál vhodnou lineárních kombinací funkčních hodnot. Jedná se o nástroj, jak odhadnout určitý integrál bez znalosti primitivní funkce.

## Metoda per-partés

Převádí integrál z jednoho součinu na integrál z jiného
součinu. Má smysl pro případ, kdy nový integrál je jednodušší. Jedná se
o jakousi částečnou náhradu za neexistující vzorec pro integrál ze
součinu funkcí.

## Substituční metoda

Převádí integrál z jedné proměnné do jiné proměnné. Má smysl
pro případ, kdy nový integrál je jednodušší. Jedná se o jakousi
částečnou náhradu za neexistující vzorec pro integrál složené funkce.

## Integrál jako funkce horní meze

Většinou určitý integrál počítáme pomocí integrálu neurčitého. Někdy to ale nejde, protože neumíme najít primitivní funkci. V takovém případě můžeme díky této větě napsat primitivní funkci ve tvaru určitého integrálu a počítat hodnoty numericky, například lichoběžníkovým pravidlem. Tato věta otevírá cestu do světa funkcí, které nejsou elementární.

## Postačující podmínka pro existenci primitivní funkce

Udává, že prakticky zajímavé funkce (spojité) jsou vždy
integrovatelné, tj. mohou být rychlostmi změn veličin.


# Věty o diferenciálních rovnicích 

## Věta o stabilitě řešení rovnice $y'=f(y)$

Umožní posoudit, která řešení jsou prakticky zajímavá, bez řešení
diferenciální rovnice.

# Věty z lineární algebry



## Věta o hodnosti matice ve schodovitém tvaru

Spolu a větou identifikující operace zachovávající hodnost je to efektivní nástroj pro zjištění hodnosti matice nebo pro ověření lineární nezávislosti vektorů.

## Frobeniova věta

Nutná a postačující podmínka řešitelnosti soustavy lineárních rovnic pomocí pojmů hodnost matice a hodnost rozšířené matice soustavy. 

## Věta o vlastních číslech symetrické matice

Vyjadřuje, že ve fyzikálně relevantních případech (matice je
symetrický tenzor) existují vlastní čísla a vlastní směry. To je
výhodné, protože těchto směrech je formulace fyzikálních zákonů
formálně jednodušší než ve směrech zcela obecných.

## Věta o diagonalizaci čtvercové matice

Udává přímo návod, jaká transformace převede fyzikální zákon vyjádřený
pomocí maticového násobení do co nejjednoduššího tvaru.