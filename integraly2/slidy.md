% Integrály pro pokročilé
% Robert Mařík
% 19. 3. 2019


Naučili jsme se integrovat pomocí neurčitého a určitého
integrálu. Neurčitý integrál vyjadřuje funkční hodnotu vypočítanou z
akumulace okamžitých změn. Z principiálních důvodů není možné, pokud
je zadána pouze rychlost změny, určit celou veličinu, ale jenom její
změnu. Proto je neurčitý integrál dán jednoznačně až na aditivní
konstantu. Velikost změny na zadaném intervalu je dána určitým
integrálem, ke kterému je možné dospět i geometricky a fyzikálně
názorným způsobem představeným v definici Riemannova integrálu. Ten
otevírá možnost rozšířit platnost mnoha fyzikálních vzorců na případ,
kdy parametry úlohy nejsou konstantní. Dokážeme tak počítat dráhu
pohybu proměnnou rychlostí, tlak vody na plochu ponořenou napříč
různými hloubkami a podobně.

V následujícím textu rozvineme některé poznatky o integrálu, odvodíme
si některé pokročilejší metody pro výpočet, ukážeme si, že každá
spojitá funkce má primitivní funkcni a také otevřeme cestu k
definování funkcí, které nejsou elementární.

# Vlastnosti integrálu

Z minulé přednášky víme, že integrál (určitý i neurčitý) je lineární,
tj. zachovává součet funkcí a násobení konstantou.

Následující dvě věty nejsou překvapivé. Vyjadřují následující intuitivně zřejmá fakta.

* Pokud se veličina mění rychleji, výsledná změna je větší.
* Pokud sledujeme změnu veličiny za určitý čas, můžeme sledovat změnu
  do nějakého mezičasu a poté od mezičasu do konce a obě částečné
  změny poté sečíst.

Je však důležité vědět, že platí pro libovolné integrovatelné funkce a
proto zformulujeme následující věty.

> Věta (monotonie vzhledem k funkci). Je-li $f(x)\geq g(x)$ na
  intervalu $[a,b]$, platí $$\int_a^b f(x)\,\mathrm dx\geq \int_a^b
  g(x)\,\mathrm dx.$$

> Důsledek. Integrál nezáporné funkce je nezáporný.


> Věta (aditivita vzhledem k integračnímu oboru).
Platí $$\int_a^b f(x)\,\mathrm dx= \int_a^c f(x)\,\mathrm dx + \int_c^b f(x)\,\mathrm dx.$$

Věta o aditivitě vzhledem k integračnímu oboru je například pro
Newtonovu definici integrálu důsledkem zřejmého vztahu
$$[F(b)-F(c)]+[F(c)-F(a)]=F(b)-F(a)$$ pro libovolnou primitivní
funkci $F$. Graficky i fyzikálně je názorný případ, kdy $c$ leží v
intervalu $[a,b]$, avšak vzorec platí v plné obecnosti pro libovolné
uspořádání mezí podle velikosti.

# Střední hodnota

Určitou souvislost s monotonií vzhledem k funkci má otázka, zda je
možné funkci definovanou na intervalu $[a,b]$ nahradit funkcí
konstantní tak, aby obě funkce měly stejný integrál. V praxi to
znamená, že bychom například při pohybu tělesa časový průběh rychlosti
nahradili jednou hodnotou takovou, že dráha za daný čas bude
stejná. To je přesně to, co známe z běžného života jako definici
průměrné rychlosti. Je to současně i návod pro následující rozšíření
pojmu průměrná rychlost na libovolné integrovatelné funkce. Jedná se
vlastně o jakousi průměrnou hodnotu, při které ale nepočítáme průměr z
konečného počtu hodnot, ale z hodnot rozložených spojitě na
zadaném intervalu.

Definice střední hodnoty je snadným důsledkem toho, že hledáme hodnotu
$\mu$ takovou, že $$\int_a^b f(x)\,\mathrm dx=\int_a^b \mu\,\mathrm
dx=\mu \int_a^b \mathrm
dx=\mu(b-a).$$

> Definice (střední hodnota). Nechť $f$ je funkce definovaná a
  integrovatelná na uzavřeném intervalu $[a,b]$. Číslo $\mu$
  definované vztahem $$\mu=\frac 1{b-a}\int_a^b f(x)\,\mathrm dx$$ se
  nazývá *střední hodnota* funkce $f$ na intervalu $[a,b]$.

Geometricky je střední hodnota výška obdélníka, který má jednu stranu
tvořenou intervalem $[a,b]$ a obsah je roven integrálu $\int_a^b
f(x)\,\mathrm dx.$ Pokud je funkce $f(x)$ kladná a lineární, je tento
integrál roven obsahu lichoběžníka o základnách $f(a)$ a $f(b)$ a
výšce $b-a$. Tedy $$\int_a^b f(x)\,\mathrm dx=(b-a)\frac{f(a)+f(b)}2$$
a střední hodnota lineární funkce je tedy průměrem hodnoty na začátku
a na konci intervalu.

**Příklad.** Střední hodnota funkce $y=2x^2-1$ na intervalu $[0,2]$ je
$$\frac 12 \int_0^2 2x^2-1 \,\mathrm dx=\frac 12 \left[\frac 23 x^3-x\right]_0^2=\frac 12 \left[\frac 23 8-2 - 0\right]=\frac 53.$$

[Online výpočet.](https://sagecell.sagemath.org/?z=eJwz1DfSyswrSU0vSixJ1TDSqogz0jXU0ajQMdAx0tQEAIuACEI=&lang=sage)


<div class='obtekat'>

![Graf počtu nemocných chřipkou. Čárkovaně je dlouhodobý trend, okolo kterého počet nemocných osciluje s krátkou periodou. Zelená plná křivka je pětiletý průměr začínající v daném roce. Minimum této křivky je vhodný okamžik pro začátek plošné vakcinace.](graf.png)

</div>


**Příklad.** (Podle Leah Edelstein-Keshet: Integral Calculus with
Applications to the Life Sciences) Health Canada dlouhodobě monitoruje
chřipku. Ze získaných dat vyplývá, že u této nemoci existuje sezonní
cyklus s krátkou periodou a dlouhodobý dvacetiletý cyklus s dlouhou
periodou. Je-li $t$ čas v měsících, je počet nemocných (ve stotisících
jedinců) dobře aproximován funkcí $$I(t)=\cos\left(\frac \pi 6
t\right)+\cos\left(\frac \pi {120} t\right)+2.$$ Health Canada má
snahu chřipku eliminovat z populace očkováním. Odhaduje se, že je
nutné pětileté období intenzivní vakcinace. Pro co nejnižší náklady je
vhodné vakcinaci začít v období, kdy je virus na pětiletém
minimu. Střední hodnota za pětileté období počínající časem $t_0$ je
$$\overline I(t_0)=\frac 1{12\times 5}\int_{t_0}^{t_0+12\times 5}
I(t)\,\mathrm dt.$$

Pro výpočet minima funkce $\overline I(t_0)$ je nutné umět derivovat
funkce, které jsou vyjádřeny integrálem a proměnná je v mezi tohoto
integrálu. To se naučíme v dalších částech přednášky a poté se k
tomuto příkladu vrátíme.

[Online výpočet.](https://sagecell.sagemath.org/?z=eJxtjs0KgzAQhO-C75BbNj9iErG3XD3nFcTGIAQjcSn27du0pT_Q2-x8M8xexgwUKaurGZDZKe2wLe2JIxMvrY0ql6mr8JX4uENxdQva8J4RTpYVfcgjepjhYBIOiRJFz7Vh95W6ctpuMeGbKtkrVZAzTxB-gCRTiilbmv2ZShKX1e94jd7Spilvu-7ZGv63QvZ-feS0cEa47gb9BD-U&lang=sage)


# Numerická aproximace určitého integrálu

Následující myšlenka se si týká výlučně určitého integrálu, ale dále v
dnešní přednášce si představíme nástroj, který umožní ji použít i pro
integrál neurčitý.

Někdy se stane, že neumíme nebo nepotřebujeme určitý integrál
vypočítat přesně. Nebo že ani nemáme dostatek informací pro přesný
výpočet, například funkce může být známa jenom v několika bodech,
které jsou výsledkem měření a mimo tyto body nejsou žádné informace o
funkčních hodnotách. To je přesně situace pro numerickou aproximaci
určitého integrálu. Mechanický model následujících myšlenek je shrnut
v několika bodech.

* Představme si, že máme určit dráhu pohybu, ale v zadaném časovém
  intervalu máme pouze několik záznamů hodnoty rychlosti z
  tachometru. Mimo tyto záznamy se mohlo dít v podstatě cokoliv.
* Budeme však doufat, že rychlost se měnila spíše pozvolna.
* Základní taktika odhadu dráhy může být taková, že mezi každými
  zaznamenanými hodnotami rychlosti na tachometru nahradíme pohyb
  rovnoměrným pohybem rychlostí,která je průměrem krajních hodnot.
* Předchozí postup aplikovaný na libovolnou funkci odpovídá tomu, že
  mezi každými dvěma hodnotami nahradíme funkci funkcí lineární a poté
  integrál vypočítáme pro tuto lineární funkci. Tento postup
  (lichoběžníkové pravidlo) je možné modifikovat nebo
  vylepšit. Například je možné použít pro aproximaci části parabol
  místo přímek (Simpsonovo pravidlo). U funkce, která je rostoucí, je
  možné například použít funkční hodnotu v dolní mezi a tím dostaneme
  dolní odhad pro výsledný integrál.

**Příklad.** Zahradnická firma vytáhla pařez a maloktraktorem jej
odtáhla o 20 metrů bokem. Vzhledem k nepravidelnému tvaru a tažení po
různých druzích povrchu po cestě se síla měnila. Pracovníkovi se
podařilo odhadnout sílu během pohybu. Závislost síly na dráze
zachycuje následující tabulka.


<style>
table, th, td {
   border: 2px solid green;
} 
td {padding:10px}
tr td:first-child {color:green; background: #E9E9E9;}
table {
    border-collapse: collapse;
}
</style>

<style>
table, th, td {
   border: 2px solid green;
} 
td {padding:10px}
tr td:first-child {color:green; background: #E9E9E9;}
table {
    border-collapse: collapse;
}

th {
    background-color: green;
    color: white;
    border-color: gray;
}

th {text-align: center;}
</style>

|$s$[m]|0|5|10|15|20|
|-|-|-|-|-|-|
|$F$[kN]|2.3|1.5|2.1|3.1|2.0|


Odhadneme celkovou vykonanou práci.
\dm$$W=5 \frac{2.3+1.5}2 +5 \frac{1.5+2.1}2 +5 \frac{2.1+3.1}2 +5 \frac{3.1+2.0}2=44.25 \,\mathrm{kN}\,\mathrm {m} = 44.25\,\mathrm{kJ}$$


**Poznámka.** V předchozím příkladě byla funkce dána v pravidelných
  intervalech. Proto se ve všech členech objevuje faktor $\frac 52$,
  který je možné vytknout. Po vytknutí zůstane v závorce součet, kde
  se hodnoty funkce v dolní a horní mezi objeví jednou a ostatní
  dvakrát. To v obecném případě vede k následujícímu vzorci.

> Věta (lichoběžníkové pravidlo). Nechť je funkce $f$  spojitá na
  intervalu $[a,b]$. Rozdělme interval $[a,b]$ na $n$ intervalů
  stejné délky $h$, tj. platí $h=\frac{b-a}n$. Krajní body
  těchto intervalů označme po řadě $x_0$, $x_1$, ..., $x_n$ a jim
  odpovídající funkční hodnoty funkce $f$ po řadě $y_0$, $y_1$, ...,
  $y_n$. Platí
  $$
    \int_a^bf(x)\,\mathrm dx\approx \frac h2\Bigl(
    {y_0}+2y_1+2y_2+\cdots+2y_{n-1}+{y_n}\Bigr).
  $$  


# Integrace metodou per partés

Metoda per partés je metoda odvozená z derivace součinu. Nechť $u$ a
$v$ jsou funkce, mající derivace $u'$ a $v'$. Snadným důsledkem
derivace součinu
$$(uv)'=u'v+uv'$$
je
$$uv'=(uv)'-u'v.$$
Integrací tohoto vztahu dostáváme následující tvrzení.

> Věta (metoda per partés pro neurčitý a určitý integrál). Nechť $u$ a
> $v$ jsou funkce proměnné $x$, mající spojité derivace $u'$ a
> $v'$. Platí
> $$\int uv' \,\mathrm dx=uv-\int u'v\,\mathrm dx$$
> pro neurčitý integrál a
> $$\int_a^b uv' \,\mathrm dx=[uv]_a^b-\int_a^b u'v\,\mathrm dx$$
> pro integrál určitý.

Použití této metody má smysl, pokud je integrál $\int u'v\,\mathrm dx$
jednodušší pro výpočet ve srovnání s integrálem $\int uv'\,\mathrm
dx.$ Typické situace pro integrování metodou per partés jsou následující.

1. $\int x\sin x\,\mathrm dx$, $\int x\cos x\,\mathrm dx$, $\int xe^x\,\mathrm dx$
1. Mírné obměny integrálů z předchozího bodu, kdy místo $x$ může být libovolný polynom a goniometrická nebo exponenciální funkce má lineární vnitřní složku.
1. $\int x^k\ln x\,\mathrm dx$

**Příklad.** Volbou
$${\begin{aligned} u&= x & u'&=1 \\ v'&=e^x & v&=e^x\end{aligned}}$$
můžeme vypočítat integrál
$$\int x e^x\,\mathrm dx=xe^x-\int 1e^x\,\mathrm dx=xe^x-e^x+c.$$

**Příklad.** Volbou
$${\begin{aligned} u&= \ln x & u'&=\frac 1x \\ v'&=1 & v&=x\end{aligned}}$$
můžeme vypočítat integrál
$$\int \ln x\,\mathrm dx=x\ln x-\int \frac 1x x\,\mathrm dx=x\ln x-\int 1\,\mathrm dx=x\ln x-x+c.$$


# Integrace substituční metodou

Substituční metoda je metoda odvozená z derivace složené funkce
$$[u(v(x))]'=u'(v(x))v'(x),$$
což dává
$$u(v(x))=\int u'(v(x))v'(x)\,\mathrm dx.\tag{1}$$

Označme $u'(x)=f(x)$, tj. $u(x)=\int f(x)\,\mathrm dx$. Označíme-li
dále $v(x)=t$, platí $$u(v(x))=u(t)=\int f(t)\,\mathrm dt.$$ Přeznačme
ještě $v(x)$ na $\varphi(x)$. Potom má (1) po záměně levé a pravé
strany tvar uvedený v následující větě.

> Věta (substituční metoda pro neurčitý integrál). Platí
$$\int f(\varphi (x))\varphi'(x)\,\mathrm dx=\int f(t)\,\mathrm
dt,\tag{2}$$ kde po výpočtu integrálu napravo dosazujeme $t=\varphi (x).$

Formálně výraz napravo ve (2) přejde ve výraz nalevo a naopak
dosazením rovností
$$\varphi(x)=t,\qquad \varphi'(x)\,\mathrm dx=\mathrm dt.$$ Toto je
současně i návod, jak substituční metodu použít prakticky.

**Příklad.** Substituce $x^2=t$ vede na vztah mezi diferenciály ve tvaru $2x\,\mathrm dx=\mathrm dt$. Odsud
$$\int x e^{x^2}\,\mathrm dx=\frac 12 \int e^t\,\mathrm dt=\frac 12e^t=\frac 12 e^{x^2}+c.$$

**Příklad.** Substituce $f(x)=t$ vede na vztah mezi diferenciály ve tvaru $f'(x)\,\mathrm dx=\mathrm dt$. Odsud
$$\int \frac {f'(x)}{f(x)}\,\mathrm dx=\int \frac 1t\,\mathrm dt=\ln |t|=\ln|f(x)|+c.$$
Například
\dm$$\int \frac{x}{x^2+1}\,\mathrm dx=\frac 12\int \frac{2x}{x^2+1}\,\mathrm dx= \frac 12\int \frac{(x^2+1)'}{x^2+1}\,\mathrm dx=\frac 12 \ln|x^2+1|+c.$$

**Příklad.** Substituce $ax+b=t$ vede na vztah mezi diferenciály ve
tvaru $a\,\mathrm dx=\mathrm dt$. Odsud je možné odvodit vzorec, který
již známe pro integrál funkce s lineární vnitřní složkou. Vskutku, platí
$$\int  f(ax+b)\,\mathrm dx= \int  \frac 1af(t)\,\mathrm dt= \frac 1a F(t)= \frac 1a F(ax+b)+C,$$ kde $F(x)=\int f(x)\,\mathrm dx.$


Vztah (2) je základní vztah pro substituci v neurčitém
integrálu. Používáme jej ve vhodných případech zprava doleva i zleva
doprava. Variantu pro určitý integrál jsme viděli ve speciálním
případě ve cvičení, kdy vnitřní funkce reprezentovala konstantní
násobek. Viděli jsme přirozeným způsobem, že při substituci (vyjádření
v jiných jednotkách) se s integrovanou funkcí se mění i meze. Obecný
vzorec pro integrování určitého integrálu substituční metodou je v
následující větě.

> Věta (substituční metoda pro určitý integrál). Platí $$\int_a^b f(\varphi (x))\varphi'(x)\,\mathrm dx=\int_{\varphi
  (a)}^{\varphi(b)} f(t)\,\mathrm.$$

Meze tedy podléhají stejné transformaci, jako integrovaná
proměnná. Pokud používáme substituci $t=\varphi(x)$, potom v dolní
mezi pro $x=a$ platí $t=\varphi(a).$ Podobná situace je i v mezi
horní.


# Integrál jako funkce meze

Integrál může být součástí definice funkce. Tím se můžeme dostat mimo
množinu elementárních funkcí a značně tak rozšířit třídu funkcí, se
kterými umíme pracovat.


> Věta (integrál jako funkce horní meze). Buď $f$ spojitá funkce na intervalu $I$ a $a\in I$. Funkce
$F(x)$ definovaná vztahem
$$
    F(x):=\int_a^x f(t)\,\mathrm dt
$$
  má na intervalu $I$ derivaci a platí $F'(x)=f(x)$, tj. $F(x)$ je primitivní funkcí k funkci $f(x)$. 

**Příklad.**  Pro funkci $f(x)=x^2$ platí $$\int_0^x t^2\,\mathrm dt=\left[\frac
    {t^3}{3}\right]_0^{x}=\frac{x^3}{3}$$ což je skutečně jedna
  z primitivních funkcí k funkci $x^2$, jak již víme z přednášky
  o neurčitém integrálu.

Věta o integrálu jako funkci horní meze dokonce udává tvar primitivní
funkce pro libovolnou spojitou funkci. Tím dostáváme okamžitě
následující tvrzení.
  
> Důsledek (postačující podmínka existence primitivní funkce).
  Ke každé  spojité funkci existuje neurčitý integrál. 

Bohužel, ne vždy neurčitý integrál dokážeme efektivně najít. Zatímco
problém nalezení derivace funkce složené z funkcí, které umíme
derivovat, spočívá pouze ve správné aplikaci vzorců pro derivování,
problém nalézt neurčitý integrál i k funkci tak jednoduché, jako je
například $e^{-x^2}$ je neřešitelný ve třídě elementárních
funkcí. Totéž platí pro další "nevinně vyhlížející" funkce jako $\int
\sin (x^2)\,\mathrm dx$ nebo $\int \frac{\sin x}{x}\,\mathrm dx$. Věta
o integrálu jako funkci horní meze nabízí možnost zapsat primitivní
funkci vztahem $$\int e^{-x^2}\,\mathrm dx=c+\int_0^x
e^{-t^2}\,\mathrm dt.$$ Funkční hodnoty takové funkce můžeme určovat
například tak, že integrál aproximujeme numericky.


Následující ukázka demonstruje, že i s funkcí definovanou pomocí
integrálu je možné jistým způsobem pracovat, aniž bychom měli k
dispozici analytické vyjádření této funkce.


# Ukázka funkce definované pomocí integrálu

\iffalse

<div class='obtekat'>

![Součin se na součet mění například u logaritmického pravítka.
 Zdroj: pixabay.com](slide-rule.jpg)

</div>

\fi

Uvažujme funkci definovanou vztahem $$f(x)=\int_1^x\frac 1t\,\mathrm dt.\tag{*}$$ Ukážeme si, že tento tvar umožňuje odvodit některé vlastnosti funkce $f$. Dokážeme například, že funkce $f$ mění násobení na sčítání, tj. že platí $$f(ab)=f(a)+f(b).$$
Podle definice je
$$f(ab)=\int_1^{ab}\frac 1t \,\mathrm dt.$$
Podle aditivity vzhledem k integračnímu oboru platí
$$f(ab)=\int_1^{a}\frac 1t \,\mathrm dt+\int_a^{ab}\frac 1t \,\mathrm dt =f(a)+\int_a^{ab}\frac 1t \,\mathrm dt.\tag{**}$$
Ve druhém integrálu bychom potřebovali dostat jedničku v dolní mezi,
abychom dostali integrál stejný jako v definici funkce $f$. Proto
zavedeme substituci $\frac ta=s$, $t=sa$, $\mathrm dt=a\mathrm ds$. S
použitím této substituce se (**) transformuje na
$$f(ab)
=f(a)+\int_1^{b}\frac 1{sa} a\,\mathrm ds
=f(a)+\int_1^{b}\frac 1{s} \,\mathrm ds
=f(a)+f(b).$$

Pokud si všimneme, že integrál \tag{*} v definici funkce $f$ je možné
vypočítat a že funkce $f$ je vlastně funkce $\ln x$, není vlastnost,
že funkce mění násobení na sčítání nijak překvapivá. Pro nás však bylo
důležité, že v důkaze jsme použili jenom definici funkce $f$ pomocí
integrálu a pravidla pro práci s integrály. Nemuseli jsme nijak
používat ani vlastnosti logaritmu, ani vlastnosti funkce k logaritmu
inverzní, což bývá základem středoškolského odvození tohoto
vzorce. Vidíme, že integrál je možné použít k definici funkce a s
touto funkcí je možné dále pracovat. Substituce $t^{\frac 1r}=s$,
$t=s^r$, $\mathrm dt=rs^{r-1}\,\mathrm ds$ například ukáže, že platí
$$f(a^r)=\int_1^{a^r}\frac 1t\,\mathrm dt= \int _1^a \frac
1{s^r}rs^{r-1}\,\mathrm ds= r\int _1^a\frac 1s\,\mathrm ds=rf(a).$$


# Model eliminace chřipky

V příkladě u střední hodnoty jsme se zabývali problémem eliminace chřipky a zjistili, že potřebujeme najít minimum funkce
$$\overline I(t_0)=\frac 1{12\times 5}\int_{t_0}^{t_0+12\times 5} I(t)\,\mathrm dt.$$
Protože jsme se zabývali připadem, kdy je proměnná jenom v horní mezi a naše funkce má proměnnou v horní i v dolní mezi, můžeme využít aditivitu
integrálu vzhledem k mezi a psát
$$
\begin{aligned}
\overline I(t_0)&=
\frac 1{12\times 5}\int_{t_0}^{0} I(t)\,\mathrm dt +
\frac 1{12\times 5}\int_{0}^{t_0+12\times 5} I(t)\,\mathrm dt
\\&=
-\frac 1{60}\int_{0}^{t_0} I(t)\,\mathrm dt +
\frac 1{60}\int_{0}^{t_0+60} I(t)\,\mathrm dt
.
\end{aligned}
$$
Derivací podle $t_0$ nyní dostáváme podle věty o integrálu jako funkci horní meze a podle pravidla o derivování součtu a složené funkce
$$\begin{aligned}\frac{\mathrm d\overline I}{\mathrm dt_0}
&=-\frac 1{60} I(t_0)+
\frac 1{60} I(t_0+60) \frac{\mathrm d}{\mathrm dt_0}(t_0+60)
\\&=-\frac 1{60}I(t_0)+\frac 1{60}I(t_0+60)
\\&=\frac 1{60} \Bigl(I(t_0+60)-I(t_0)\Bigr)
\end{aligned}
$$
Minimum tedy najdeme z podmínky $I(t_0)=I(t_0+60).$ Po dosazení vztahu pro funkci $I$ tedy řešíme rovnici
\dm $$ \cos\left(\frac \pi 6 t\right)+\cos\left(\frac \pi {120} t\right)+2 = \cos\left(\frac \pi 6 (t+60)\right)+\cos\left(\frac \pi {120} (t+60)\right)+2 $$
tj. (následující výpočty jsou sice dlouhé, ale jedná se běžnou středoškolskou matematiku a práci s goniometrickými funkcemi)
$$
\cos\left(\frac \pi 6 t\right)+\cos\left(\frac \pi {120} t\right)
=
\cos\left(\frac \pi 6 t+ 10\pi\right)+\cos\left(\frac \pi {120} t+\frac 12\pi\right)
$$
$$
\cos\left(\frac \pi 6 t\right)+\cos\left(\frac \pi {120} t\right)
=
\cos\left(\frac \pi 6 t\right)+\cos\left(\frac \pi {120} t+\frac 12\pi\right)
$$
$$
\cos\left(\frac \pi {120} t\right)
=
\cos\left(\frac \pi {120} t+\frac 12\pi\right)
$$
$$
\cos\left(\frac \pi {120} t\right)
=
-\sin\left(\frac \pi {120} t\right)
$$
$$
\tan\left(\frac \pi {120} t\right)
=
-1
$$
Tato rovnice má řešení $\frac \pi {120} t=\frac 34\pi +k\pi$ tj.
$t=90+120k$. Vzhledem k povaze problému se střídají maxima a minima
funkce $\overline I(t_0)$. Toto je ještě nutné rozvážit, abychom s
očkováním nezačali v době, kdy by byly náklady naopak
maximální. Vzhledem ke snadné praktické interpretaci je však zřejmé,
že minimum pětiletého průměru bude v době, jejíž začátek o něco
předchází dlouhodobé minimum výskytu chřipky. Odsud snadno rozlišíme,
kdy se jedná o minimum pětiletého průměru a kdy o maximum.


# Práce při vytahování řetězu (přímý výpočet)

<div class='obtekat'>

![Visící řetěz. Při vytahování na střechu se zmenšuje síla, kterou je nutno překonávat.
 Zdroj: pixabay.com](chain.jpg)

</div>



Ze střechy budovy o výšce $50$ metrů visí řetěz dlouhý $30$
metrů. Jeden metr řetězu váží dva kilogramy. Vypočítáme práci
potřebnou pro povytažení řetězu o deset metrů a poté práci potřebnou
pro úplné vytažení řetězu.

Z fyziky víme, že na těleso o hmotnosti $m$ působí síla $F$ daný vztahem $$F=mg,$$ kde $g$
je tíhové zrychlení a že práce $W$ konaná silou $F$ po dráze $s$ je rovna
součinu $$W=Fs.$$

Pokud z budovy visí $h$ metrů řetězu o lineární hustotě
$\tau=2\,\mathrm{kg}/\mathrm m$, je nutné při vytahování řetězu zvedat těleso o hmotnosti $h\tau$, tj.
vyvinout sílu $$F=h\tau g.$$ Při vytahování řetězu se délka visící
části zkracuje a změna délky $\Delta h$ je záporná. Při povytažení
řetězu o délku $|\Delta h|=-\Delta h$ je nutné vykonat práci $$\Delta
W=F|\Delta h|=-h\tau g \Delta h.$$

Při povytažení o 10 metrů řetěz vytahujeme spojitě od $h_1=30$ po
$h_2=20$. Celková práce je
$$\begin{aligned}W&=\int_{h_1}^{h_2}-h\tau g\,\mathrm dh=\tau g\int_{h_2}^{h_1}h\,\mathrm dh
=\tau g\left[\frac 12 h^2\right]_{h_2}^{h_1}\\&
=\tau g\left[\frac 12 h_1^2 - \frac 12 h_2^2\right]=\frac 12 \tau g (h_1^2-h_2^2)
\\&=\frac 12 \tau g (h_1-h_2)(h_1+h_2).
\end{aligned}
$$
Pro $\tau =2\,\mathrm{kg}\,\mathrm m^{-1}$ a $g=9.81\,
\mathrm{kg}\,\mathrm{m}\,\mathrm {s}^{-2}$ dostáváme $W=4905\,\mathrm
J.$ Formálně je tento výsledek stejný, jako bychom hmotnost dolních
$h_1-h_2$ metrů řetězu soustředili do středu tohoto úseku (tedy do
úrovně $\frac 12 (h_1+h_2)$ metrů pod střechu) a poté tento hmotný bod
přemístili konstantní silou po dráze $\frac 12 (h_1+h_2)$ na střechu.

Práci pro vytažení celého řetězu dostaneme volbou $h_2=0$. Tedy
$$W=\frac 12 \tau g h_1^2$$ a numericky $W=8829\,\mathrm J.$ Protože vytáhnout první třetinu nejtěžší, očekáváme, že práce potřebná pro vytažení celého řetězu bude menší než trojnásobek práce nutné pro povytažení o třetinu. Toto se přirozeně potvrzuje porovnáním numerických hodnot.

[Online výpočet.](https://sagecell.sagemath.org/?z=eJwrSyzSUC9JLFVIV8hQyDBUyDBS1-TlKs7IL9fIzCtJTS9KLElV0NDN0AKq0UrX0cjQyTDUyTDS1CROlUaGka0BsWqBArZGOum2lnoWQBFDW2MDoLitEYX6wdoBxXNBdg==&lang=sage)


# Řetěz jinak (pomocí změny potenciální energie)

Vypočítáme předchozí příklad tak, že určíme změnu potenciální energie
řetězu. Práci $W$ vykonanou při vyzvednutí tělesa o hmotnosti $m$ o výšku
$h$ vypočteme jako změnu potenciální energie v tíhovém poli Země,
tj. $$W=mgh.$$ Komplikace v tomto případě je, že každou část řetězu
vytahujeme z jiné hloubky. Část řetězu délky $\Delta h$ váží
$m=\tau\Delta h$ kilogramů a při vytažení z hloubky $h$ na úroveň
střechy je změna potenciální energie (a vykonaná práce) $$\Delta
W=mgh=\tau\Delta h g h.$$ Součet těchto příspěvků pro dolní třetinu řetězu, od
$h_2=20\,\mathrm m$ po $h_1=30\,\mathrm m$ je $$W=\int_{h_2}^{h_1}\tau
g h\,\mathrm dh=\tau g\int_{h_2}^{h_1} h\,\mathrm dh.$$
Tím výpočet přechází ve stejný integrál jako v předchozím přístupu a
výsledky jsou tedy stejné. Práci pro celý řetěz získáme opět volbou
$h_2=0.$

Že práce vykonaná při vytažení celého řetězu je stejná jako změna
potenciální energie celého řetězu je zřejmé. Za zmínku ještě stojí
úvaha, proč je povytažení řetězu o 10 metrů ekvivalentní změně
potenciální energie dolních 10 metrů při vytažení této části řetězu na
střechu. Stačí uvážit, že bychom řetěz přetočili vzhůru nohama,
povytáhli o 10 metrů, rozpojili a visící část znovu otočili vzhůru
nohama. Otočení vzhůru nohama není spojeno s konáním práce, stejně tak
rozpojení a případné opětovné napojení. Práce se tedy koná jenom tak,
že řetěz vytahujeme o 10 metrů. Výsledek však je stejný, jako
kdybychom řetěz nepřetáčeli, jenom odpojili dolních 10 metrů a tuto
část zvedli nahoru.

\iffalse

<div class='obtekat'>

![Lodní výtah Falkrik Wheel. Zdroj: Wikipedie.](zdymadlo.jpg)

</div>

Ještě možná stojí za rozvážení fakt, že při otočení řetězu okolo
středu se nekoná práce. Tato skutečnost se dá opět dokázat rozdělením
řetězu na kousky sečíst práci nutnou pro přemístění těchto kousků. Ta
bude kladná pro kousky pod těžištěm, záporná pro kousky nad těžištěm a
výsledný součet bude nulový. Na podobném principu pracuje lodní výtah
Falkrik Wheel. Práce potřebná pro otočení výtahu a vytažení lodě
nahoru (nebo spuštění dolů nebo obojí současně) je překvapivě malá --
stačí jenom vykompenzovat třecí síly v mechanismu. V minulosti zde
byla soustava 11 zdymadel a lodě touto soustavou proplouvaly celý den.

\fi