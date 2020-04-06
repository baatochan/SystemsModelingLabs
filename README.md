# SystemsModelingLabs
All the stuff made for Information systems modeling and analysis (Modelowanie i analiza systemów informatycznych) course at the university.

## Task descriptions
### Lab 1 - (`1-custom-programming-language/1-basic-grammar`)
Creating your own language with ANTLRWorks.

The task was to create simple grammar for language that can be used for calculating math expression.

Math operations that are implemented:
* addition
* subtraction
* multiplication
* division (with exception DivBy0)
* modulo
* usage of parentheses

Instruction can be found here: http://gromit.ict.pwr.wroc.pl/kompilatory/Works/pl/ANTLRWorks_intro.html

### Lab 2 - (`1-custom-programming-language/2-interpreter`)
Creating an interpreter for a language grammar from lab 1.

Implemented stuff:
* Calculation of +,-,\*,/,% math operations
* Declaring and assigning variables
* Printing result of math operations

More info here: http://gromit.ict.pwr.wroc.pl/kompilatory/Trees/pl/TemplTre.html and http://gromit.ict.pwr.wroc.pl/kompilatory/Trees/pl/TemplTre_int.html

### Lab 3 - (`1-custom-programming-language/3-compiler`)
Implementing an ASM compiler for the grammar from lab1 and lab 2.

Implemented stuff:
* Calculation of +,-,\*,/ math operations
* Declaring and assigning global variables
* if/else expressions

Everything implemented for register register-based CPU architecture.

More info here: http://gromit.ict.pwr.wroc.pl/kompilatory/Trees/pl/TemplTre.html,
http://gromit.ict.pwr.wroc.pl/kompilatory/Trees/pl/TemplTre_templ.html and http://gromit.ict.pwr.wroc.pl/kompilatory/procesor1_nnowy.html

```
1. (max 5p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych.
2. (max 7p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych oraz obsługę zmiennych globalnych. Obsługa ta ma obejmować:
	* deklarację zmiennej (dopisanie nazwy do tablicy symboli oraz wygenerowanie pseudoinstrukcji 'DD nazwa',
	* odczyt zmiennej (po sprawdzeniu czy była zadeklarowana generujemy instrukcję np. 'MOV A,[nazwa]',
	* zapis zmiennej (po sprawdzeniu czy była zadeklarowana generujemy instrukcję np. 'MOV [nazwa],A'
   Pseudoinstrukcje i instrukcje właściwe powinny być posortowane (najpierw deklaracje DD, potem kod właściwy)
3. (max 10p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych oraz obsługę zmiennych lokalnych wraz z blokami instrukcji. Obsługa ta ma obejmować:
	* deklarację zmiennej (dopisanie nazwy do tablicy symboli oraz wygenerowanie pseudoinstrukcji 'DD nazwa',
	* odczyt zmiennej (po sprawdzeniu czy była zadeklarowana generujemy instrukcję np. 'MOV A,[nazwa]',
	* zapis zmiennej (po sprawdzeniu czy była zadeklarowana generujemy instrukcję np. 'MOV [nazwa],A'
   Pseudoinstrukcje i instrukcje właściwe powinny być posortowane (najpierw deklaracje DD, potem kod właściwy).
   Bloki wyglądają tak:
   {
   instrukcje...
   }
   i mogą być zagnieżdżone.
   Nazwy zmiennych należy jakoś ozdabiać numerami bloków, nie bawimy się w zmienne na stosie.
4. (max 10p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych (zmienne globalne też są wskazane) oraz instrukcję warunkową 'if/else'
   Jako warunek wykorzystać wyrażenia arytmetyczne (==0 -false, !=0 - true) lub dodać wyrażenia logiczne (priorytet niższy od arytmetycznych). Etykiety do skoków powinny mieć nazwy symboliczne ale z numerem kolejnego ifa w programie.
   Uwaga: aby dostać więcej niż 8p. nie wystarczy skopiować to, co jest w materiale na YT, trzeba coś oryginalnego od siebie dodać.
5. (max 10p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych (zmienne globalne też są wskazane) oraz instrukcję pętli (for, while, do while).
   Jako warunek wykorzystać wyrażenia arytmetyczne (==0 -false, !=0 - true) lub dodać wyrażenia logiczne (priorytet niższy od arytmetycznych). Etykiety do skoków powinny mieć nazwy symboliczne ale z numerem kolejnej pętli w programie.
6. (max 10p.) Należy wybrać sobie architekturę procesora (stosową lub rejestrową) i dla tej architektury oprogramować generowanie kodu dla czterech działań arytmetycznych (zmienne globalne też są wskazane) oraz możliwość definiowania i wywoływania funkcji bezparametrowych. Nazwy funkcji można przechowywać w tablicy symboli (drugiej albo tej samej).
```

### Lab 4 - (`2-acceleo-uml2java\1-tutorial`)
Simple run of Acceleo tutorial.

Link to the tutorial: http://wiki.eclipse.org/Acceleo/Getting_Started

### Lab 5 - (`2-acceleo-uml2java\2-basic-uml2java-converter`)
Implementation of UML to Java code generator using Acceleo.

Functionality:
* Implemented code generation for classes, interfaces, access modifiers,
members and methods (basing on class diagram)
* Implemented code generation templates for if exprs, switch statements and
actions (basing on activity diagram)

More info: http://kompilatory.iiar.pwr.edu.pl/wiki/index.php/UML/Some_metamodels and https://www.youtube.com/watch?v=LEfcxByejA8
```
1. Zaimportować model UML (ten sam co przy tutorialu - w maszynie wirtualnej i na gromicie jest w kartotece /opt/antlr3/UML_test_Designer9.zip)
2. Zrobić fork repozytorium z bitbucketa
3. Zaimportować swoje repozytorium do eclipsa lub UMLDesignera
4. Uruchomić i wygenerować we właściwym miejscu pliki wynikowe (mimo że to niezgodne z zasadami sztuki, proszę o umieszczenie katalogu src-gen w projekcie Acceleo, a nie UML oraz dodanie go do gita, chciałbym to mieć razem z kodem). Do tego momentu można dostać 4p.
5. Dodać
	* realizacje interfejsów,
	* typy void dla operacji, które typów nie mają,
	* widoczności atrybutów (gettery i settery też) i operacji.
	Do tego miejsca - max. 5p.
6. Uporządkować szablony w aktywnosci.mtl (putActNod aby nie był wołany szablon dla typu generycznego) (do 6p.)
7. Uporządkować 'ify' aby były 'if', 'if else', a na końcu 'else' (na razie nie przejmować się wielokrotnym 'ifem' wewnętrznym) (do 8p.)
8. Dla DecisionNode stereotypowanego <<switch>> generować switcha, a nie ifa (użyć dozorów szablonu, nadal nie przejmować się wielokrotnymi powtórzeniami wewnętrznej instr. warunkowej) (do 9p.)
9. Dodać coś ciekawego od siebie, pobawić się metamodelem i pokazać generowanie czegoś nowego (nawet jak nie będzie to do końca działać) (dopiero tu można dostać 10p.)
10.* Usunąć wielokrotne instr. warunkowe wewnętrzne zastępując je pojedynczą tam, gdzie ona naprawdę ma być (najpierw 'if', a po jego zakończeniu 'switch') (zadanie poza konkursem, dla szczególnie zainteresowanych)
```

## Additional info
* http://gromit.ict.pwr.wroc.pl/kompilatory/
* https://www.youtube.com/playlist?list=PL7dV9Q_y6kXCCxTqVeNAv3RNMDYQWCRlo
* http://pawel.gluchowski.staff.iiar.pwr.edu.pl/?page_id=42
