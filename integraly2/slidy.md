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


# Vlastnosti integrálu

Z minulé přednášky víme, že integrál (určitý i neurčitý) je lineární,
tj. zachovává součet funkcí a násobení konstantou.

Následující dvě věty nejsou překvapivé. Vyjadřují následující intuitivně zřejmá fakta.

* Pokud ve veličina mění rychleji, výsledná změna je větší.
* Pokud sledujeme změnu veličiny za určitý čas, můžeme sledovat změnu
  do nějakého mezičasu a poté od mezičasu do konce a obě částečné
  změny poté sečíst.

Je však důležité vědět, že platí pro libovolné integrovatelné funkce.

> Věta (monotonie vzhledem k funkci). Je-li $f(x)\geq g(x)$ na intervalu $[a,b]$,platí $$\int_a^b f(x)\,\mathrm dx\geq \int_a^b g(x)\,\mathrm dx.$$

> Důsledek. Integrál nezáporné funkce je nezáporný.


> Věta (aditivita vzhledem k integračnímu oboru).
Platí $$\int_a^b f(x)\,\mathrm dx= \int_a^c f(x)\,\mathrm dx + \int_c^b f(x)\,\mathrm dx.$$

Věta o aditivitě vzledem k integračnímu oboru je například pro
Newtonovu definici integrálu důsledkem zřejmého
vztahu $$[F(b)-F(c)]+[F(c)-F(a)]=F(b)-F(a).$$

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

> Definice (střední hodnota). Nechť $f$ je funkce definovaná na uzavřeném intervalu $[a,b]$. Číslo $\mu$ definované vztahem $$\mu=\frac 1{b-a}\int_a^b f(x)\,\mathrm dx$$ se nazývá *střední hodnota*  funkce $f$ na intervalu $[a,b]$.



# Integrace metodou per partés

Metoda per partés je metoda odvozená z derivace součinu. Nechť $u$ a
$v$ jsou funkce, mající derivaci. Snadným důsledkem derivace součinu
$$(uv)'=u'v+uv'$$
je
$$uv'=(uv)'-u'v.$$
Integrací tohoto vztahu dostáváme následující tvrzení.

> Věta (metoda per partés pro neurčitý a určitý integrál). Nechť $u$ a $v$ jsou funkce proměnné $x$, mající spojité derivace. Platí 
$$\int uv' \,\mathrm dx=uv-\int u'v\,\mathrm dx$$
pro neurčitý integrál a
$$\int_a^b uv' \,\mathrm dx=[uv]_a^b-\int_a^b u'v\,\mathrm dx$$
pro integrál určitý.

Použití této metody má smysl, pokud je integrál $\int uv'\,\mathrm dx$
jednodušší pro výpočet ve srovnání s integrálem $\int u'v\,\mathrm
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
ještě $v(x)$ na $\varphi(x)$. Potom má (1) tvar uvedený v následující větě.

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
již známe ve tvaru
$$\int  f(ax+b)\,\mathrm dx=\frac 1a F(ax+b)+C,$$ kde $F(x)=\int f(x)\,\mathrm dx.$


Vztah (2) je základní vztah pro substituci v neurčitém
integrálu. Používáme jej ve vhodných případech zprava doleva i zleva
doprava. Variantu pro určitý integrál jsme viděli ve speciálním
případě ve cvičení, kdy vnitřní funkce reprezentovala konstantní
násobek. Viděli jsme, že s integrovanou funkcí se mění i meze. Obecný
vzorec pro integrování určitého integrálu substituční metodou
je v následující větě.

> Věta (substituční metoda pro určitý integrál). Platí $$\int_a^b f(\varphi (x))\varphi'(x)\,\mathrm dx=\int_{\varphi
  (a)}^{\varphi(b)} f(t)\,\mathrm.$$

Meze tedy podléhají stejné transformaci, jako integrovaná
proměnná. Pokud používáme substituci $t=\varphi(x)$, potom v dolní
mezi pro $x=a$ platí $t=\varphi(a).$ Podobná situace je i v mezi
horní.


# Integrál jako funkce meze

Pomocí integrálu můžeme definovat další funkce. Umožní nám to následující věta.


> Věta (integrál jako funkce horní meze). Buď $f$ spojitá funkce na intervalu $I$ a $a\in I$. Funkce
$F(x)$ definovaná vztahem
$$
    F(x)=\int_a^x f(t)\,\mathrm dt
$$
  má na intervalu $I$ derivaci a platí $F'(x)=f(x)$, tj. $F(x)$ je primitivní funkcí k funkci $f(x)$. 

**Příklad.**  Pro funkci $f(x)=x^2$ platí $$\int_0^x t^2\,\mathrm dt=\left[\frac
    {t^3}{3}\right]_0^{x}=\frac{x^3}{3}$$ což je skutečně jedna
  z primitivních funkcí k funkci $x^2$, jak již víme z přednášky
  o neurčitém integrálu.

Věta o integrálu jako funkci horní meze dokonce udává tvar
  primitivní funkce pro libovolnou spojitou funkci. Tím dostáváme okamžitě následující tvrzení.
  
> Důsledek (postačující podmínka existence primitivní funkce).
  Ke každé  spojité funkci existuje neurčitý integrál. 

  Bohužel, ne vždy neurčitý integrál dokážeme efektivně najít. Zatímco
  problém nalezení derivace funkce složené z funkcí, které umíme
  derivovat, spočívá pouze ve správné aplikaci vzorců pro derivování,
  problém nalézt neurčitý integrál i k funkci tak jednoduché, jako je
  například $e^{-x^2}$ je neřešitelný ve třídě elementárních
  funkcí. Totéž platí pro další "nevinně vyhlížející" funkce jako
  $\int \sin (x^2)\,\mathrm dx$ nebo $\int \frac{\sin x}{x}\,\mathrm dx$. Nyní máme možnost zapsat primitivní funkci vztahem
  $$\int e^{-x^2}\,\mathrm dx=c+\int_0^x e^{-t^2}\,\mathrm dt.$$
  Následující ukázka demonstruje, že i s takovýmto tvarem je možné
  jistým způsobem pracovat.


# Ukázka funkce definované pomocí integrálu

Uvažujme funkci $f(x)=\int_1^x\frac 1t\,\mathrm dt.$ Ukážeme si, že tento tvar umožňuje odvodit některé vlastnosti funkce $f$. Dokážeme například, že funkce $f$ mění násobení na sčítání, tj. že platí $$f(ab)=f(a)+f(b).$$
Podle definice je
$$f(ab)=\int_1^{ab}\frac 1t \,\mathrm dt.$$
Podle aditivity vzhledem k integračnímu oboru platí
$$f(ab)=\int_1^{a}\frac 1t \,\mathrm dt+\int_a^{ab}\frac 1t \,\mathrm dt
=f(a)+\int_a^{ab}\frac 1t \,\mathrm dt.\tag{*}$$ V druhém integrálu bychom
potřebovali dostat jedničku v dolní mezi. Proto zavedeme substituci
$\frac ta=s$, $t=sa$, $\mathrm dt=a\mathrm ds$. S použitím této substituce se (*) transformuje na 
$$f(ab)
=f(a)+\int_1^{b}\frac 1{sa} a\,\mathrm ds
=f(a)+\int_1^{b}\frac 1{s} \,\mathrm ds
=f(a)+f(b).$$

Pokud si všimneme, že integrál v definici funkce $f$ je možné
vypočítat a že funkce $f$ je vlastně funkce $\ln x$, není tento
výsledek nijak překvapivý. Pro nás však bylo důležité, že v důkaze
jsme použili jenom definici funkce $f$ pomocí integrálu a pravidla pro
práci s integrály. Nemuseli jsme nijak používat ani vlasnosti
logaritmu, ani vlastnosti funkce k logaritmu inverzní, což bývá
základem středoškolského odvození tohoto vzorce. Vidíme, že integrál
je možné použít k definici funkce a s touto funkcí je možné dále
pracovat. Substituce
$t^{\frac 1r}=s$, $t=s^r$, $\mathrm dt=rs^{r-1}\,\mathrm ds$
například ukáže, že platí
$$f(a^r)=\int_1^{a^r}\frac 1t\,\mathrm dt=
\int _1^a \frac 1{s^r}rs^{r-1}\,\mathrm ds=
r\int _1^a\frac 1s\,\mathrm ds=rf(a).$$

