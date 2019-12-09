% Vybrané postupy numerické matematiky
% Robert Mařík
% listopad 2019

# Newtonova metoda

Newtonova metoda (též Newtonova Raphsonova metoda) je metoda pro
numerické řešení rovnic. To používáme v případě, že není možné (nebo
není účelné) řešit rovnici přesně a snažíme se najít přibližné
řešení.


Budeme hledat řešení rovnice $$f(x)=0.$$ Budeme postupovat tak, že
vyjdeme z nějaké aproximace řešení (získáme například graficky nebo
zkusmo hrubou výpočetní silou) a tuto aproximaci budeme postupně
zpřesňovat. Postup zpřesňování je takový, že v dosažené aproximaci
funkci nahradíme lineární funkcí a další aproximace (zpřesnění
předchozí aproximace) bude v nulovém bodu této lineární funkce. Za
poměrně snadno splnitelných předpokladů (začneme dostatečně blízko
nulového bodu a funkce má v nulovém bodě nenulovou derivaci) postup
konverguje ke kořeni studované rovnice a to velmi rychle: každým
krokem se přibližně zdvojnásobí počet míst, která máme správně.


Z\ lineární aproximace funkce $f$ v bodě $a$ $$f(x)\approx
f(a)+f'(a)(x-a)$$ pro $a=x_n$, $x=x_{n+1}$, $f(x_{n+1})=0$ dostáváme
$$0=f(x_n)+f'(x_n)(x_{n+1}-x_n)$$ a po osamostatnění $x_{n+1}$ přímo
iterační vzorec $$x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}.$$ Tento vzorec
používáme opakovaně až do dosažení požadované přesnosti. Obvyklým
testem pro ukončení výpočtu je porovnání dvou po sobě jdoucích
iterací. Pokud se v rámci požadované přesnosti shodují, výpočet končí
a známe přibližné řešení zadané rovnice.

**Příklad.**
Zkusme najít číslo takové, jehož kosinus je stejný jako toto číslo. 
Rovnici $$x=\cos x$$ nejprve přepíšeme do tvaru $$x-\cos x=0$$ a hledáme vlastně řešení nulový bod funkce $f(x)=x-\cos x$. Po dosazení $f'(x)=1+\sin x$ získáváme iterační vzorec $$x_{n+1}=x_n-\frac{x_n-\cos x_n}{1+\sin x_n}$$ a jednotlivé iterace s počátečním odhadem $x_0=1$ a s\ aproximací na 80 desetinných míst [dávají postupně](https://sagecell.sagemath.org/?z=eJyrsDXk5UrLL1LIVMjMUyhKzEtP1TDXtOLlUgCCCluNCl0gSs4v1qjQ1NTXMNQuzswDMTX18jRSMtMzS4ptLQw0IaoLijLzShQqAJbBFls=&lang=sage&interacts=eJyLjgUAARUAuQ==) následující hodnoty.

\bgroup \scriptsize

~~~
0.75036386784024389303494230668217685324699306585535903096658315202443061372724844
0.73911289091136167036058529090489023400289283673565690732340797067262734474030949
0.73908513338528396976012512085680433288953312317018897963123060924114905347788420
0.73908513321516064166170262568502637232522326252964269151340253531790167136371866
0.73908513321516064165531208767387340401342077636703525840515904303894688001184009
0.73908513321516064165531208767387340401341175890075746496568063577328465488354759
0.73908513321516064165531208767387340401341175890075746496568063577328465488354759
~~~

\egroup

Vidíme, že proces opravdu neuvěřitelně rychle konverguje k\ řešení rovnice.

	
\fi



# Nondimenzionalizace a bezrozměrné veličiny

Rovnice vedení tepla v jedné dimenzi (prostup tepla stěnou, vedení
tepla tyčí) má tvar (viz minulá přednáška) $$\rho c \frac{\partial T}{\partial
t}=D\frac{\partial ^2 T}{\partial x^2},$$ kde $T(x,t)$ je teplota v
místě $x$ a čase $t$, $\rho$ je hustota, $c$ je měrná tepelná
kapacita, $D$ je teplotní vodivost. Pro úplnou formulaci úlohy na
nalezení teploty v jednotlivých místech stěny musíme zadat polohu
stěny, teplotu na vnějším a vnitřním okraji stěny a počáteční
rozložení teploty ve stěně. Nechť tedy okraje jsou $x=0$ a $x=L$, a
teploty na okrajích a počáteční rozložení teploty jsou
$$\begin{aligned}T(0,t)&=T_0\\T(L,t)&=T_1\\
T(x,0)&=f(x)\end{aligned}.$$ Analogicky jako u obdobného příkladu s
chladnutím tělesa podle Newtonova zákona (viz přednáška o
diferenciálních rovnicích) zavedeme bezrozměrnou teplotu tak, aby se
podmínky na okrajích redukovaly na konstanty. Zavedeme-li bezrozměrnou
teplotu $$\xi(x,t) =\frac{T(x,t)-T_0}{T_1-T_0}$$ a bezrozměrnou vzdálenost $\mu =\frac xL$, redukuje se model podle stejných pravidel, jaká jsme poznali u obyčejných rovnic, na
$$\begin{aligned}
\rho c \frac{\partial \xi}{\partial
t}&=D\frac 1{L^2}\frac{\partial ^2 \xi}{\partial \mu^2},\\
\xi(0,t)&=0,\\
\xi(1,t)&=1,\\
\xi(\mu,t)&=f_\xi(\mu),
\end{aligned}$$
kde $f_\xi(\mu)$ je počáteční rozložení teploty transformované do nových veličin.
Přepíšeme-li rovnici na tvar
$$\frac 1{\frac {D}{L^2\rho c}} \frac{\partial \xi}{\partial
t}=D\frac 1{L^2}\frac{\partial ^2 \xi}{\partial \mu^2},$$
vidíme, že zavedení bezrozměrného času vztahem $\tau=\frac{Dt}{\rho c L^2}$ redukuje úlohu z původního tvaru (kde každý člen má svůj fyzikální význam a přímou interpretaci)
$$\boxed{\begin{aligned}
\rho c \frac{\partial T}{\partial
t}&=D\frac{\partial ^2 T}{\partial x},\\
T(0,t)&=T_0,\\
T(L,t)&=T_1,\\
T(x,t)&=f(x),
\end{aligned}}$$
na tvar
$$\boxed{\begin{aligned}
\frac{\partial \xi}{\partial
\tau}&=\frac{\partial ^2 \xi}{\partial \tau^2},\\
\xi(0,\tau )&=0,\\
\xi(1,\tau )&=1,\\
\xi(\mu, 0)&=f_\xi(\mu),
\end{aligned}}$$
který je mnohem jednodušší pro následnou numerickou analýzu nebo
analytické studium. Mimo jiné je tím ukázáno, že pro danou úlohu
nemají podstatný význam jednotlivé veličiny samy o sobě, ale veličina
$\tau = \frac{Dt}{\rho c L^2}$, definující bezrozměrný čas. Tato
veličina se nazývá Fourierovo číslo. Obdobným postupem získáme jiná
čísla důležitá pro popis jiných procesů, jako jsou Biotovo číslo
(vedení tepla), Reynoldsovo číslo (proudění tekutin), Froudeho číslo
(proudění tekutin) apod. Podobná nondimenzionalizace pro vlhkostní
pole ve dřevě je v publikaci Horáček P., Fyzikální a mechanické
vlastnosti dřeva. Viz též [eopora](https://is.mendelu.cz/eknihovna/opory/zobraz_cast.pl?cast=9180), rovnice (144) a rovnice následující.


# Metoda konečných diferencí

Vraťme se s aparátem matematického popis vedení tepla k úloze hledání
rozložení teploty na čtvercové desce, kterou jsme představili v
přednášce o lineární algebře: Je dána deska čtvervého tvaru, jejíž okraje udržujeme na konstatních teplotách (každý okraj obecně na jiné teplotě) a hledáme rovnovážné rozložení teploty. Dvourozměrná rovnice vedení tepla pro homogenní izotropní desku s materiálovými charakteristikami $\rho$, $c$ a $D$ má tvar
$$\rho c \frac{\partial T}{\partial t}=D\frac{\partial^2 T}{\partial x^2}+D\frac{\partial^2 T}{\partial y^2}.$$
Ve stacionárním stavu se teplota nemění s časem a proto je levá strana nulová a rovnice se redukuje na
$$\frac{\partial^2 T}{\partial x^2}+\frac{\partial^2 T}{\partial y^2}=0.$$

Použijeme stejnou myšlenku jako v lineární algebře: rozdělíme desku
čtvercovou sítí na malé oblasti a budeme studovat teplotu v bodech
této sítě, tj. v rozích jednotlivých čtverců, na které je deska
čtvercovou sítí rozdělena.

Z kapitoly o Taylorově polynomu a z kapitoly o diferenciálních rovnicích víme, že druhou derivaci funkce jedné proměnné můžeme aproximovat vztahem
$$f''(x)\approx \frac{1}{h^2}[f(x+h)-2f(x)+f(x-h)].$$
Podobně pro parciální derivace funkce dvou proměnných $f(x,y)$ dostáváme

$$\begin{aligned}
\frac {\partial ^2 f}{\partial x^2}&\approx \frac{1}{h^2}[f(x+h,y)-2f(x,y)+f(x-h,y)]\\
\frac {\partial ^2 f}{\partial y^2}&\approx \frac{1}{h^2}[f(x,y+h)-2f(x,y)+f(x,y-h)]
\end{aligned}
$$
a odsud
\dm$$ \frac {\partial ^2 f}{\partial x^2} + \frac {\partial ^2 f}{\partial y^2} \approx \frac{1}{h^2}[f(x+h,y)+f(x-h,y)+f(x,y+h)+f(x,y-h)-4f(x,y)]. $$
Z rovnice $$\frac {\partial ^2 f}{\partial x^2}
+ \frac {\partial ^2 f}{\partial y^2}
=0,$$
popisující rozložení teploty vyplývá, že výraz v hranaté závorce musí být nulový, tj.
$$f(x,y)=\frac 14 [f(x+h,y)+f(x-h,y)+f(x,y+h)+f(x,y-h)].$$
To však znamená, že teplota v každém uzlovém bodě je průměrem teplot v
okolních uzlových bodech. Přesně, jak jsme se (možná poněkud naivně)
domnívali při představení úlohy v přednášce z lineární algebry. Nyní
tento postup stavíme na solidní vědecký základ, založený na rovnici
popisující fyzikální proces (rovnice vedení tepla) a na numerické
aproximaci, která převede parciální diferenciální rovnici na soustavu
lineárních rovnic.


\iffalse

<div class='obtekat'>

![Obrázek z demonstračního souboru programu FlexPDE (Lite verze zdarma) řeší rovnici pro podzemní vodu ve stacionárním stavu (div(k*grad(h)) + s = 0) za přítomnosti dvou studní a jednoho zasakovacího vrtu v nehomogenním prostředí.](water_05.png)

</div>

\fi


Výše popsaná myšlenka je základem **metody konečných diferencí.** Bohužel je tato metoda 
poměrně omezená nutností, mít ekvidistantní rozložení uzlů. Proto se v
praxi používají vyspělejší metody, metoda konečných prvků nebo metoda
konečných objemů. Základní myšlenka je stejná (parciální diferenciální
rovnice se převede na soustavu lineárních rovnic) a praktické
provedení zpravidla matematicky triviální, protože vše potřebné pro
výpočty je předprogramováno v softwaru určenému pro danou úlohu. Máme
takto software umožňující simulovat vedení tepla, tepelné úniky,
tepelné nebo mechanické namáhání, tok podzemní i povrchové vody a
další důležité praktické aplikace. Uživatel jenom zadá geometrii, typ
problému a okrajové a počáteční podmínky a program vypočte potřebná
řešení a dle požadavků je různým způsobem interpretuje.

# Ukázka programu FlexPDE

Existuje široká škála programů pro řešení diferenciálních rovnic. V
mnoha jsou předpřipravené modely, předdefinované fyzikální úlohy a
někdy dokonce databáze materiálových vlastností. V jiných programech
je řešená rovnice plně pod kontrolou autora modelu a je možné snadno
řešit i multifyzikální úlohy (například současně modelovat teplotu a
vlhkost v materiálu). Zástupce druhé skupiny je FlexPDE firmy [PDE Solutions Inc.](https://www.pdesolutions.com/) Úloha s
ochlazováním čtvercové desky, na kterou jsmě několikrát jako na
motivaci narazili v lineární algebře a připomněli na předchozím slidu
by měla následující zápis a výstup.

~~~
TITLE 'Stacionarni teplota pro ctvercovou deska se zadanou teplotou na okrajich' 
VARIABLES T 
EQUATIONS T: div(grad(T))=0
INITIAL VALUES T=10

BOUNDARIES
REGION 1
    START(0,0) VALUE(T)=30 LINE TO (1,0) 
    VALUE(T)=40 LINE TO (1,1)
    VALUE(T)=20 LINE TO (0,1) 
    VALUE(T)=10 LINE TO CLOSE 

PLOTS
  CONTOUR(T)
  SURFACE(T)
END
~~~


![Teplota znázorněná pomocí izoterm.](ctvercova_deska_01_001.png)

![Teplota znázorněná pomocí barev a 3D grafu.](ctvercova_deska_02_001.png)
