
print  "\\errorstopmode";
print  "\\documentclass{article}\n\\usepackage{amsmath,amsfonts}\n\\usepackage{multicol}\n\\usepackage{a4wide}\n\\usepackage[czech]{babel}\\usepackage[IL2]{fontenc}\\usepackage[latin2]{inputenc}\n\\begin{document}\n";
print  "\\newcount\\cislo\\everymath{\\displaystyle}\n";
print  "\\def\\correct#1{\\fbox{\$\\bullet\$} {#1}\\\\ }\n";
print  "\\def\\incorrect#1{\\fbox{\$\\times\$} {#1}\\\\ } \n";
print  "\\parindent 0pt\n";
print  "\\parskip 10pt\n";
print  "\\rightskip 0 pt plus 1 fill\n";
print  "\\columnseprule 0.4pt\n";

print  "\\def\\jednicka{1 }\n";
print  "\\def\\sloupce{2 }";
print  "\\ifx\\sloupce\\jednicka \\else \\begin{multicols}{\\sloupce} \\fi\n";

@pole=<STDIN>;

foreach $radek (@pole)
{
    chomp($radek);
    if ((substr($radek,0,1) eq "-")) 
    {
	substr($radek,0,1,"");
	print  "\\incorrect{",$radek,"}\n";
    }
    else
    {
	if ((substr($radek,0,1) eq "+")) 
	{
	    substr($radek,0,1,"");
	    print  "\\correct{",$radek,"}\n";
	}
	else
	{
	    print  "\n\n";
	    if ($radek eq "")
	    {
		print  "\n\n";
	    }
	    else
	    {
		print  "\$\\global\\advance\\cislo by 1\\textbf{\\fbox{\\the \\cislo}}\$ ",$radek,"\\\\ ";
	    }
	}
    }
}  


print  "\\ifx\\sloupce\\jednicka\\else\\end{multicols}\\fi\n";
print  "\\end{document}";



