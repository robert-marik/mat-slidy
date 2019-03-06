% Integrál na třetí
% Robert Mařík
% 2019

Naučili jsme se pracovat s derivacemi, tedy s rychlostí změny.
Známe-li funkci a zderivujeme ji, dostanem rychlost změny. Pokud potom
původní funkci "ztratíme" a zůstane nám jenom derivace, je otázka,
jestli dokážeme původní funkci najít z derivace. Odpověď je zní "v
jistém smyslu ano". Spojení "v jistém smyslu" naznačuje, že souvilost
nebude tak snadná jako je souvilost u navzájem inverzních
funkcí. Derivováním totiž můžeme ztratit aditivní konstanty, které v
derivaci dávají nulu a zpětně není možné rekosntruovat, derivováním
jaké konstanty jsme tuto nulu dostaly. A protože problém uchopíme
poněkud obecněji, uvedeme si dokonce hned tři různé "protijedy" na
derivování.


Jeden je představíme jako opak derivace (neurčitý integrál), druhý
jako změnu funkce vypočtenou ze zadané rychlosti změn (Newtonův určitý
integrál) a třetí jako náhradu součtu pro případ, kdy potřebujeme
sčítat nekonečně mnoho příspěvků, z nichž každý má v podstatě nulovou
hodnotu (Riemannův integrál).



# Motivace:  Jak z rychlosti změny vypočítat změnu?


<style>
table, th, td {
   border: 2px solid green;
} 
table {width:97%;}
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
table {width:97%;}
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

Derivace umožní z veličiny v prvním sloupci získat veličinu v
pravém sloupci. Pohledem na tyto příklady věříme, že bude fungovat i
něco, co naopak z rychlosti zrekonstruje původní veličinu, která se
touto rychlostí mění.


Závislá proměnná|Nezávislá proměnná|Derivace|
|------------------------|-----------------------|------------------------|
|veličina $x$|čas|rychlost růstu veličiny $x$|
|výška stromu|čas|rychlost růstu do výšky|
|objem kmene stromu (smrk)|čas|rychlost růstu ve smyslu přírůstu dřevní hmoty|
|dráha při pohybu při pohybu po přímce i vzdálenost od referečního bodu|čas doba od začátku pohybu nebo od referečního okamžiku|rychlost|
|rychlost|čas|zrychlení|
|teplota v místě tyče (např. stěna, což je v podstatě extrémně krátká a široká tyč)|poloha|gradient teploty, veličina udávající intenzitu toku tepla tyčí resp. stěnou|
|hmotnost části tyče (např od zvoleného bodu doleva)|poloha na tyči (např. vzdálenost od levého konce)|lineární hustota tyče|
|všeobecná cenová hladina (cca náklady na živobytí)|čas|inflace|
|nadmořská výška na trase treku|poloha|stoupání trasy|
|graf funkce $f(x)$|$x$|růst grafu (směrnice tečny)|



# Motivace: Jak z vlastnosti křivky získat celou křivku


<div class='obtekat'>

![Zavěšený most na Hauraki Rail Trail (Nový Zéland). Tyto traily byly otevřeny v květnu  2012 a získaly Winer Timber Design Award v kategorii Sustainability
 Zdroj: nzwood.co.nz](zaveseny_most.jpg)

![Zavěšený most na Hauraki Rail Trail (Nový Zéland). Tyto traily byly otevřeny v květnu  2012 a získaly Winer Timber Design Award v kategorii Sustainability
 Zdroj: nzwood.co.nz](zaveseny_most.jpg)

</div>

Na této úloze si připomenem další roli derivace (směrnice tečny) a
představíme si úžasný druh mostů -- mosty zavěšené na nosných lanech,
které mohou překlenout neuvěřitelně dlouhou vzdálenost v porovnání s
jinými konstrukcemi mostů.

U zavěšeného mostu lano nese hmotnost rovnoměrně rozloženou ve
vodorovném směru. Je potřeba zvolit vhodnoudélku svislých lan tak, aby
síla působící na nosné lano byla vždy ve směru tohoto lana. Potom
je systém nejstabilnější. 

Díky symetrii stačí uvažovat jenom půlku lana. Na část lana nad
intervalem $[0,x]$ působí následující síly.

* Tahová síla lana v minimu ($x=0$) o velikosti $T$ doleva.
* Gravitační síla o velikosti $\mu x g$ směrem dolů, kde $\mu$ je
  lineární hustota a $\mu x$ je hmotnost části mostu, odpovdající
  intervalu $[0,x]$.
* Tahová síla doprava nahoru na pravém konci. Její velikost a směr
  jsou takové, aby součet všech sil působících na uvažovaný element
  byl roven nule. Chceme, aby v tomto bodě směr síly určoval směr
  lana, tj. aby síla byla tečná k nosnému lanu.
  
Všechny tři síly tedy tvoří pravoúhlý trojúhelník (protože vektorový
součet má být nulový) a poměr odvěsen $\frac{\mu g x}{T}$ udává
směrnici přepony. Křivka udávájící směr nosného lana tedy musí mít
tvar funkce, která splňuje $$y'=\frac{\mu g}{T} x,$$ kde $\mu$, $g$, a
$T$ jsou pro danou úlohu konstanty.

# Neurčitý integrál

# Aplikace neurčitého integrálu

# Určitý integrál (Newtonův)

# Aplikace Newtonova integrálu

# Určitý integrál (Riemannův)

# Aplikace Riemannova integrálu
