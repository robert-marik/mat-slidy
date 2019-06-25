% Funkce
% Robert Mařík
% podzim 2019

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

Poznámka:  Množina $A$ z definice
  funkce se nazývá *definiční obor funkce $f$*.  Označujeme 
  $\mathrm D(f)$ (resp.  $\mathrm{Dom}(f)$). Je-li $M$ podmnožina definičního oboru, definujeme množinu $f(M)$ jako množinu všech obrazů bodů množiny $M$. Množina $f(\mathrm{Dom}(f))=b$ se nazývá *obor
    hodnot funkce $f$*.  Označujeme  $\mathrm H(f)$ (resp.
  $\mathrm{Im}(f)$).

  Je-li $y=f(x)$ nazýváme proměnnou $x$ též *nezávislou
    proměnnou* a proměnnou $y$ *závislou proměnnou*.
  *Grafem* funkce rozumíme množinu všech uspořádaných dvojic
  $[x,y]\in\mathbb R^2$ s vlastností $y=f(x)$.

  


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

Příklad: Funkce $\frac 1x$ je prostá a proto z rovnosti
$\frac 1x = \frac 15$
plyne $x=5$.

Příklad: Funkce $x^2$ není prostá a proto z rovnosti
$x^2 = 7^2$
neplyne $x=7$.


# Vlastnosti funkcí jedné proměnné (inverzní funkce)

> Definice (inverzní funkce).   Nechť funkce $f: A\to B$ je prostá. Pravidlo, které každému $x$   z množiny $f(A)$ přiřadí to (jediné) $y$, pro které platí $f(y)=x$ se nazývá *inverzní funkce* k funkci $f$, označujeme   $\mathbf{f^{-1}}$.


Poznámka: 
  Symbol $f^{-1}(x)$ lze tedy chápat buď jako hodnotu inverzní funkce
  k funkci $f$ v bodě $x$, nebo jako převrácenou hodnotu k číslu
  $f(x)$, tj jako $[f(x)]^{-1}=\frac{1}{f(x)}$. Nebude-li z kontextu
  zřejmé, o kterou variantu se jedná, musíme toto upřesnit.

Příklad: Funkce $y=x^2$ není prostá na $\mathbb R$ a proto zde nemá inverzní funkci. Pokud definiční obor funkce $y=x^2$ zúžíme na nezáporná čísla, tj. požadujeme $x\geq 0$, je taková funkce prostá a inverzní funkcí je funkce $y=\sqrt x$.

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

Sudé a liché funkce jsou, díky svým vlastnostem, v jistém smyslu pěkné. V matematice se často snažíme zapsat nějaký objekt pomocí podobných pěkných objektů. Uvidíme toto například později při popisu deformace. Jako ukázku přístupu si můžeme už teď ukázat následujícící snadnou (a pravděpodobně málo užitečnou) větu.


> Věta (o rozkladu funkce na součet sudé a liché funkce) Platí $$f(x)=\frac{f(x)+f(-x)}2 + \frac{f(x)-f(-x)}2.$$
Každou funkci definovanou na $(-\infty,\infty)$ je možné takto rozložit na součet sudé a liché funkce.

Poznámka. Pro funkci $f(x)=e^x$ dostáváme
$$e^x=\frac{e^x+e^{-x}}2-\frac{e^x-e^{-x}}2.$$ Dvě funkce na pravé
straně mají význam v aplikacích a nazývají se hypebolický kosinus,
$\cosh x$, a hyperbolický sinus, $\sinh x$.


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

Poznámka: Je-li funkce $f$ rosoucí nebo klesající, je i prostá a nerovnice uvedené v předchozí definici jsou dokonce ekvivalentní. Můžeme tedy na obě strany nerovnice aplikovat tutéž rostoucí funkci, nebo rostoucí funkci z obou stran nerovnice vynechat.

* Je-li $f$ rostoucí, platí $$x_1\leq x_2 \iff f(x_1)\leq f(x_2).$$
* Je-li $f$ klesající, platí $$x_1\leq x_2 \iff f(x_1)\geq f(x_2).$$
* Stejné vztahy platí o pro ostré nerovnosti.

Tyto poučky použijeme vždy, když rozvažujeme, zda můžeme k oběma
stranám nerovnice přičíst stejné číslo (můžeme), zda můžeme obě strany
nerovnice vynásobit stejným nenulovým číslem (můžeme, ale pokud
násobíme, obrací se směr nerovnosti), zda můžeme obě strany nerovnice
logaritmovat logaritmem o stejném základě (můžeme , ale v případě
logaritmu a základě menším než $1$ se obrací směr nerovnosti), umocnit
(nemůžeme, leda bychom měli dodatečnou informaci například o tom, že
obě strany nerovnice jsou kladné nebo obě strany nerovnice jsou
záporné) apod. Takových situací je mnoho a protože není v lidských
silách si všechny pamatovat, stačí je míst spojeny s definicí rostoucí
a klesající funkce.

1. Funkce $\ln x$ a $\sqrt x$ jsou rostoucí a proto z nerovnic $$\ln x>\ln 6$$ a $$\sqrt x>\sqrt 6$$ plyne $x>6$. Zejména v druhém případě je nutné si uvědomit, že používáme definici rostoucí funkce a poznámku připojenou za tuto definici. Neumocňujeme obě strany nerovnice, jak by někdo mohl tento krok dezinterpretovat. 
2. Funkce $\frac 1x$ a $y=x^2$ nejsou ani rostoucí ani klesající a proto z žádné z nerovností
$$\frac 1x \leq \frac 15$$
a
$$x^2 \leq 5^2$$
neplyne ani $x\leq 5$ ani $x\geq 5$.
3. Funkce $\sqrt x$ nabývá nezáporných hodnot a funkce $\frac 1x$ je klesající na $(0,\infty)$. Proto z nerovnosti
$$\frac 1{\sqrt x} \leq \frac 15$$
plyne $\sqrt x\geq 5$. Druhá mocnina je na intervalu $(5,\infty)$ rostoucí a proto odsud plyne dále (umocněním obou stran nerovnice) $$x\geq 25.$$

Poznámka. Obecně není nerovnice vzniklá umocněním obou stran nerovnice
ekvivalentní nerovnici původní protože druhá mocnina není ani rostoucí
ani klesající.


# Funkce jedné a více proměnných, vektorové funkce

