# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..2\n"; }
END {print "not ok 1\n" unless $loaded;}
use Lingua::DE::Sentence;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

use Lingua::DE::Sentence qw(get_sentences);

$splitting = 1;
$test_data = join ("", (<DATA>));
while ($test_data =~ m%\|([^\|]*?)\|%g) {
    push @exp_sent, $1;
}
$test_data =~ s/\|//g;
$real_sent = get_sentences($test_data);

for ($i=0; $i<scalar @exp_sent; $i++) {
    unless ($exp_sent[$i] eq $real_sent->[$i]) {
	print 
	    "not ok 2 ",
	    "Splitting is not correct: ",
	    "expected:  $exp_sent[$i] ",
	    "but found: $real_sent->[$i]";
	$splitting = 0;
	last;
    }
}
print "ok 2\n" if $splitting;

__DATA__

 |Durch den 1781 von Herschel entdeckten Planeten Uranus wurde der Horizont des Planetensystems unserer Sonne um das Doppelte erweitert.| |Dieser Planet ist n�mlich noch einmal so weit als Saturn - 400�Millionen Meilen von der Sonne entfernt.| |Er vollendet seine lange Reise um die Sonne erst in 84�Jahren und 6�Trabanten umkreisen ihn.| |Die Entdeckung der vier kleinen Planeten, durch welche die fr�her unterbrochene harmonische Progression in den Abst�nden der Planeten, sich vollst�ndiger zu best�tigen scheint, verdanken wir den Deutschen.| |Piazzi, in Deutschland geboren, entdeckte am 1ten�Jan. 1801 zu Palermo gl�cklich einen zwischen Mars und Jupiter fr�her vermutheten Planeten, dem er den Namen Ceres beilegte.| |Kaum 1��Jahre nachher hatte Olbers in Bremen das Gl�ck einen 2ten planetarischen K�rper zwischen Mars und Jupiter aufzufinden, den er Pallas nannte.| |Am 1ten�Septbr. 1804 entdeckte Prof. Harding zu Lilienthal einen dritten neuen Planeten, ungef�hr in demselben mittleren Abstande von der Sonne als Ceres und Pallas.| |Man hat ihn Juno genannt.| - |Endlich hat Olbers am 29ten�Maerz 1807 abermals einen 4ten Planeten zwischen Mars und Jupiter entdeckt, der von dem gro�en Gaus in Goettingen den Namen Vesta erhielt.| |Au�er diesen nunmehr bekannten Haupt und Nebenplaneten gibt es im weiten Reiche unserer Sonne noch eine ungleich gr��ere Anzahl anderer Weltk�rper welche mehrentheils in langen elliptischen Bahnen sich um die Sonne drehen.| |Dies sind die Kometen.| |Ueber diese hat sich neuerlich die Meinung der Astronomen sehr ge�ndert.| |Jener Gedanke namentlich, da� sie ein Planetensystem mit dem andern verbinden, ist ganz verschwunden; obgleich einige sich sehr weit von der Sonne entfernen m�ssen, indem ihre Sonnenn�he zwischen Jupiter und Saturn liegt.| - |Man hat bis jetzt Kometen welche von der Erde aus sichtbar gewesen sind 400 beobachtet, nur 128 wirklich gemessen.| |Rechnen wir aber alle dazu, welche au�erhalb der Erde ihre Bahnen ziehen, so kann ihre Zahl leicht auf einige l00,000 gesteigert werden, welche alle zu unserm Planetensystem geh�ren.| - |Die wichtigste Entdeckung in dieser Hinsicht machte in der neuesten Zeit unser Astronom Enke.| |Er berechnete die Bahn eines Kometen, der in 3��Jahrn seinen Umlauf vollendet.| |Bei seinem letzten Erscheinen hatte er sein Wiederkommen genau vorhergesagt, und es entdeckte ihn zuerst R�hmker in Paramatta auf Neuholland.| |Nur fand man, da� er sich ein wenig versp�tet hatte, und dies f�hrte auf die bewegungshemmende Eigenschaft des Aethers.| |Dieser Komet ist nun schon 5�mal beobachtet.| - |Der Hauptmann Biela in B�hmen entdeckte sp�ter einen 2ten Kometen, der in 6��Jahren seinen Weg um die Sonne zur�cklegt.| - |Der ber�hmte Halley sagte die Wiederkunft eines Kometen auf das Jahr 1759 voraus, den der sternkundige Landmann Palitsch bei Dresden wirklich am 25�Decbr. 1758 zuerst wiedersehe.| |H�tte man damals die Masse des Jupiters und Saturns genauer und die Existenz des Uranus gekannt, so w�rde man eine Genauigkeit von 5-6 Tagen erreicht haben.| |Von allen Kometen welche beobachtet, und deren Bahnen berechnet worden, ist keiner unserer Erde so nahe gekommen, als der von Biela entdeckte; und allerdings k�nnte uns dieser gef�hrlich werden, da man berechnet hat, da� einer seiner Knoten wirklich innerhalb der Erdbahn liegt.| |Die gro�e Leichtigkeit dieser Weltk�rper kann uns jedoch von aller Besorgni� befreien; denn man hat nachgewiesen, da� einer derselben (der von 1770) durch das Trabantensystem des Jupiter gegangen ist, ohne dasselbe im mindesten in Unordnung zu bringen.| |Die Dichtigkeit der Kometen betr�gt 1/5000 von der Dichtigkeit der Erde.| |Sie sind also noch weit d�nner, als die d�nnste Luft, welche wir unter der Luftpumpe hervorbringen k�nnen.| |Zu den merkw�rdigsten, bisher noch keineswegs gen�gend erkl�rten Erscheinungen geh�ren die Aerolithen, jene gr��eren und kleineren Steinmassen, welche aus den Himmelsr�umen zu uns herabkommen.| |Chladni hat das Verdienst, auf dieses schon den Alten unter dem Namen von Steinregen bekannte Ph�nomen, von neuem aufmerksam gemacht, und neue Erfahrungen dar�ber gesammelt zu haben.| |Die verschiedensten Hypothesen sind aufgestellt worden, um den Ursprung dieser Massen zu erkl�ren, die in den meisten F�llen aus terrestrischen Stoffen (Eisen, Nickel etc) gebildet scheinen, und in denen Gustav Rose sogar das Vorkommen crystallinischer Theile nachgewiesen hat.| - |Einige haben sie f�r vulkanische Ausw�rfe der Erde erkl�ren wollen; andere sie f�r Producte von Mondseruptionen gehalten, welche wahrscheinlichere Meinung in der auf dem Monde 5�mal geringeren Schwere, und der gro�en Feinheit seiner Atmosph�re, die der Bewegung keinen merklichen Widerstand entgegen setzen kann, einen St�tzpunkt findet.| - |Die Annahme, da� die Bestandtheile dieser Massen, sich aufgel�st im Luftkreise vorfinden sollten, und durch irgend eine elektrische Explosion, (die Feuerkugeln, welche die Erscheinung gew�hnlich begleiten) im Moment des Herabfallens vereinigt w�rden, hat wenig Haltbarkeit, da mindestens ein Raum von 4-5�Meilen Luft erforderlich w�re, um �hnliche Massen aufgel�st zu enthalten.| |Einige glauben Ueberbleibsel der ehemaligen chaotischen Massen darin zu erkennen, und wir m�gten sie geradezu f�r planetarische Weltk�rper erkl�ren, die gleich den �brigen im Weltall kreisen, bis sie der Attractionssph�re des Einen oder Andern sich n�hernd, auf fremden Bahnen ihren Untergang finden.| |Die Kleinheit derselben darf dieser Annahme nicht entgegen stehen.| |Der kleinste Hauptplanet ist im Verh�ltni� gegen den Syrius viel kleiner als der gr��te Aerolith im Vergleich mit der Vesta.| |Bei allen Messungen im Weltraume ist es weit interressanter die Gr��en und Zahlen in ihrer relativen Ausdehnung zu kennen, als in ihrer absoluten: gerade wie bei den Bergh�hen.| |Die Schneekoppe ist ��mal so hoch als der h�chste Gipfel der Pyren�en; der Pic von Teneriffa � von der Spitze des Himalaya; der Brocken 1/6 des Chimborazo.| |So wird auch eine vergleichende Berechnung von der Gr��e des Weltraums, wie sie Herschel anstellte, hier an ihrem Platze seyn.| |Man setze den Durchmesser unseres Sonnensystems mit den �u�ersten Kometenbahnen�= 1�Linie: so wird die gr��ere Axe unserer linsenf�rmigen Sternschicht�= 260�Fu� seyn; und von uns bis zum fernsten Nebelfleck = 4��geogr. Meilen.| |Die Sehweite des bewaffneten Auge ist also 4��Meile, die des unbewaffneten in gleichem Verh�ltni� 5�Fu�.| - |Man hat Infusionsthiere beobachtet, deren Durchmesser 1/1000 einer Linie betr�gt.| |Diese verhalten sich zu einem Wallfisch von 60-70 Fu� L�nge, wie der Durchmesser unseres Sonnensystems, zu der Entfernung desselben von den weitesten Nebelflecken.| |Bei allen diesen Erscheinungen ist nat�rlich eine Ungewi�heit vorhanden, welche nur dadurch verringert wird, da� man sie in ganz bestimmte Gr�nzen einschlie�en l��t.| |So wei� man mit Bestimmtheit, da� der Sirius 10,000�mal weiter von uns entfernt ist als Uranus, weil seine Parallaxe noch nicht 1/5 Sek. betr�gt.| - |Bei der Entfernung des Mondes von 51,000�Meilen ist man nur um 14-15�Meilen ungewi�, welches so viel hei�t, als ob man bei der H�he des Brockens 3200�Fu�, um 1-2�Fu� ungewi� w�re.| |Wenn wir nunmehr zu den tellurischen Verh�ltnissen �bergehen, so m�ssen wir zuerst zwei fl�ssige H�llen um den Erdk�rper bemerken, die des Meeres und der Luft, wodurch man schon auf die Kugelgestalt der Erde gef�hrt werden k�nnen.| |Schon Aristoteles stellt die Behauptung auf, da� die Erde rund sey, weil man bei den Mondfinsternissen den Erdschatten rund in die Mondscheibe eintreten sieht.| |Die Erde hat aber keine vollkomne Kugelgestalt, mit gleichem Durchmesser, sondern bildet vielmehr ein Sph�ro�d mit starker Abplattung an den Polen.| |Diese Abplattung ist bedeutender als man fr�her glaubte.| |Man nahm sie sonst zu 1/305-1/310 an.| |Jetzt wei� man, da� sie zwischen 1/289-1/290 liegt.| - |Eben so hielt man fr�her die Figur des Erdsph�roids f�r unregelm��ig, und glaubte die s�dliche Hemisph�re abgeplatteter als die n�rdliche.| |Nach Freycinets und Duperr�s sehr genauen Messungen ist erweislich dies nicht der Fall, und die Regelm��igkeit dieser um so viel gr��er.| |Die specifische Dichtigkeit der Erde ist sehr betr�chtlich; sie ist 4-5 mal gr��er als die des Wassers.| |Die Attraction der Berge, nach deren Einwirkung auf die Pendelschwingungen man die Schwere der Erde berechnet hat, gab verschiedene Resultate.| |In Schottland 4,7 schwerer als Wasser, am Mont C�nis 4,4 - nach Cavendish Erdwage 5,4.| |Das Mittel aus diesen verschiedenen Angaben w�rde 4,8-5,0 ergeben.| |Von Cavendish der ber�hmte Versuche �ber die Zersetzung des Wassers gemacht hat, sagt man: er habe das Wasser zerlegt und die Erde gewogen.| |Wir m�ssen aber annehmen, da� im Innern der Erde eine gr��ere Dichtigkeit herscht, als wir in den dichtesten Gebirgsarten antreffen.| |(Die magnetische Spannung der Erde �u�ert sich horizontal und perpendikular, oft auch oscillirend, und wird durch die innere und �u�ere Erw�rmung vermehrt.| - |Die Versuche von Morechini in Rom haben bewiesen, da� man kleine unmagnetische eiserne Nadeln, durch die Einwirkung der Sonnenstrahlen magnetisiren kann, und diese Versuche die bei der Einwirkung der italienischen Sonne nicht immer gelangen, sind von Miss Sommerville in London, mit vielem Gl�ck wiederholt, nach Wollaston's unverwerflichem Zeugnis.| - |Wir m�ssen demnach unsere Erde in einer fortdauernd electro-magnetischen Spannung annehmen, und es ist sehr wahrscheinlich, da� diese Spannung durch die Sonnenw�rme erhalten wird, wie dies aus Seebeck's sch�ner Entdeckung vom Thermomagnetismus, der durch ungleiche Erw�rmung hervorgerufen wird, und aus anderweiten Beobachtungen der Miss Sommerville �ber die Sonnenstrahlen hervorgeht.)| |400 Millionen Meilen = 3 Milliarden Kilometer Zur�ck 4-5 Meilen = 30-38 Kilometer Zur�ck 1 Linie = 2� Millimeter Zur�ck 260 Fu� = 85 Meter Zur�ck 4� geogr. Meilen = 35 Kilometer Zur�ck 5�Fu� = 1,6 Meter Zur�ck 51,000 Meilen = 378,000 Kilometer Zur�ck 14-15 Meilen = 100-110 Kilometer Zur�ck 3200 Fu� = 1040 Meter Zur�ck 1-2 Fu� = 30-60 cm Zur�ck Vorige Seite Titelseite N�chste Seite|

|Entf�hrung| 

|Willibald Alexis| 

|O Lady Judith, spr�der Schatz, Dr�ckt dich zu fest mein Arm?| |Je zwei zu Pferd haben schlechten Platz Und Winternacht weht nicht warm.| |Hart ist der Sitz und knapp und schmal, Und kalt mein Kleid von Erz, Doch k�lter und h�rter als Sattel und Stahl War gegen mich dein Herz.| |Sechs N�chte lag ich in Sumpf und Moor Und hab' um dich gewacht, Doch weicher, bei Sankt G�rg ich's schwor, Schlaf' ich die siebente Nacht!|
 |Zwei Krebse "Geh doch gerade und vorw�rts!" rief einem jungen Krebs seine Mutter zu.| |"Von Herzen gerne, liebe Mutter", antwortete dieser, "nur m�chte ich es dich ebenso machen sehen."| |Jedoch vergeblich war der Mutter Anstrengung und sichtbar ihre Kl�gelei und Tadelsucht.| |Gib keine Befehle, die man nicht vollbringen kann, und tadle an andern keine Fehler, die du selbst begehst!|
|Die alten und die jungen Fr�sche| 

|Abraham a Sancta Clara| 

|Die jungen Fr�sche haben einmal bei warmer Sommerzeit n�chst einer Lache �ber allen Ma�en gequackt und geschrien, also zwar, da� ein alter Frosch selbst �ber diese abgeschmackte Musik verdr�ssig geworden und die Jungen nicht wenig ausgefilzt hat.| |"Schamt euch, ihr gr�nhosenden Fratzen!" sagte er, "ihr wilden Lachendrescher, ihr hupfenden Spitzbuben, schamt euch, da� ihr so ein verdrie�lich Geschrei vollf�hrt!| |Wenn ihr aber doch wollt lustig sein und frohlocken, so singt aufs wenigst' wie die Nachtigall, wlche auf diesem n�chsten Ast sitzt.| |Ihr gro�maulenden Narren, k�nt ihr denn nichts anderes als nur das Qua-Qua-Qua?"| |"Vater", antworteten die Fr�sche, "das haben wir von dir gelernt."|
|Dr. Rentschler Dorithricin( Limone Halstabletten|

|Liebe Patientin, lieber Patient!|
|Bitte lesen Sie folgende Gebrauchsinformation aufmerksam, weil sie wichtige Informationen dar�ber enth�lt, was Sie bei der Anwendung dieses Arzneimittels beachten sollten.| |Wenden Sie sich bitte bei Fragen an Ihren Arzt oder Apotheker.|

|Gebrauchsinformation
Dorithricin( Limone Halstabletten
Zusammensetzung
1 Lutschtablette enth�lt:
Arzneilich wirksame Bestandteile:
Tyrothricin			0,5 mg
Lidocainhydrochlorid 1H20	1,0 mg|

|Sonstige Bestandteile:
Povidon, Saccharin-Natrium, Sorbitol, Weins�ure, Talkum, Saccharosestearat, Carmellose-Natrium, Aromen.|

|Darreichungsform und Inhalt
Originalpackung mit 20 (N1) Lutschtabletten|

|Stoff- oder Indikationsgruppe, Wirkungsweise
Dorithricin( Limone Halstabletten wirken zweifach bei schmerzhaften Entz�ndungen im Mund- und Rachenraum: Das Lokalan�sthetikum (�rtliches Bet�ubungsmittel) Lidocain lindert einerseits den Schmerz und die Schluckbeschwerden, andererseits bek�mpft das Lokalantibiotikum Tyrothricin effektiv die krankheitsverursachenden Keime.|

|Pharmazeutischer Unternehmer und Hersteller
Dr. Rentschler Arzneimittel GmbH & Co.
Mittelstra�e 18, 88471 Laupheim
Telefon (07392) 701-0, Telefax (07392) 701-300|

|Anwendungsgebiete
Entz�ndliche und infekti�se (ansteckende) Erkrankungen des Mund- und Rachenraums (Entz�ndungen der Mundschleimhaut und des Zahnfleisches, Mandelentz�ndungen und Mundsoor), Halsentz�ndungen, Kehlkopfentz�ndungen, Infektionen der oberen Luftwege.|
|Vor operativen Eingriffen im Mund und Rachen (Zahnextraktion, Entfernung der Gaumenmandeln).|

|Gegenanzeigen
Wann d�rfen Sie Dorithricin( Limone Halstabletten nicht anwenden?|
|Bei einer �berempfindlichkeit gegen einen der Wirk- oder Hilfsstoffe von Dorithricin( Limone Halstabletten sollten Sie dieses Arzneimittel nicht anwenden.|
|Bei gr��eren frischen Wunden im Mund- und Rachenraum sollten Sie Dorithricin( Limone Halstabletten nicht anwenden.|

|Wann d�rfen Sie Dorithricin( Limone Halstabletten erst nach R�cksprache mit Ihrem Arzt anwenden?|
|Im folgenden wird beschrieben, wann Sie Dorithricin( Limone Halstabletten nur unter bestimmten Bedingungen und nur mit besonderer Vorsicht anwenden d�rfen.| |Befragen Sie bitte hierzu Ihren Arzt.| |Dies gilt auch, wenn diese Angaben bei Ihnen fr�her einmal zutrafen.|
|Dorithricin( Limone Halstabletten enthalten Sorbitol.| |Bei angeborener Sorbitol- bzw. Fructose-Unvertr�glichkeit sollten Sie vor der Anwendung Ihren Arzt befragen.| |Bei einer eitrigen Mandelentz�ndung mit Fieber ist in jedem Fall vom Arzt zu entscheiden, ob neben den prim�r notwendigen Behandlungsma�nahmen wie z.B. einer zus�tzlichen Antibiotikagabe, Dorithricin( Limone Halstabletten angewendet werden sollen.|

|Was m�ssen Sie in Schwangerschaft und Stillzeit beachten?|
|Sch�digende Wirkungen durch Dorithricin( Limone Halstabletten sind bisher nicht bekannt geworden.| |Aus grunds�tzlichen medizinischen �berlegungen sollte jedoch auf eine strenge Indikationsstellung geachtet werden und vor der Anwendung in jedem Fall mit einem Arzt R�cksprache gehalten werden.|

|Was ist bei Kindern und �lteren Menschen zu ber�cksichtigen?|
|Dorithricin( Limone Halstabletten sind f�r S�uglinge und Kleinkinder nicht geeignet, das die sachgem��e Anwendung (Lutschen) nicht gew�hrleistet ist.|

|Vorsichtsma�nahmen f�r die Anwendung und Warnhinweise
Worauf m�ssen Sie achten?|
|Hinweis f�r Diabetiker
Der in einer Dorithricin( Limone Halstablette eingesetzte Zuckeraustauschstoff Sorbitol entspricht 0,07 BE.|

|Wechselwirkungen
Nicht bekannt.|

|Dosierungsanleitung, Art und Dauer der Anwendung
Die folgenden Angaben gelten, soweit Ihnen Ihr Arzt Dorithricin( Limone Halstabletten nicht anders verordnet hat.| |Bitte halten Sie sich an die Anwendungsvorschriften, da Dorithricin( Limone Halstabletten sonst nicht richtig wirken k�nnen.|

|Wie oft, in welcher Menge und wie sollten Sie Dorithricin( Limone Halstabletten anwenden?|
|Soweit nicht anders verordnet, lassen Erwachsene alle 2 Stunden, bis zu 8 mal t�glich, eine Lutschtablette langsam im Mund zergehen.|
|Kinder erhalten bis zu 6 mal t�glich eine Lutschtablette.|

|Wie lange sollten Sie Dorithricin( Limone Halstabletten anwenden?|
|Die Behandlung soll noch einen Tag nach abklingen der Beschwerden fortgesetzt werden.| |Bei schweren Halsentz�ndungen oder Halsschmerzen, die mit hohem Fieber, Kopfschmerzen, �belkeit oder Erbrechen einhergehen, sollten Dorithricin( Limone Halstabletten nicht l�nger als 2 Tage ohne �rztlichen oder zahn�rztlichen Rat angewendet werden.|

|Anwendungsfehler und �berdosierung
Bis jetzt sind keine Vergiftungsf�lle nach Anwendung dieses Arzneimittels bekannt.|

|Was m�ssen Sie beachten, wenn Sie zu wenig Dorithricin( Limone Halstabletten angewendet oder eine Anwendung vergessen haben?|
|Dorithricin( Limone Halstabletten werden mehrmals t�glich angewendet.| |Sollten Sie eine Anwendung vergessen haben, k�nnen Sie diese jederzeit nachholen.|

|Nebenwirkungen
Welche Nebenwirkungen k�nnen bei der Anwendung von Dorithricin( Limone Halstabletten auftreten?|
|In seltenen F�llen kann es zu �berempfindlichkeitsreaktionen oder zu einer Sensibilisierung im Mundbereich kommen.|
|Wenn Sie Nebenwirkungen bei sich beobachten, die nicht in dieser Packungsbeilage aufgef�hrt sind, teilen Sie diese bitte Ihrem Arzt oder Apotheker mit.|

|Hinweise und Angaben zur Haltbarkeit des Arzneimittels
Das Verfallsdatum dieses Arzneimittels ist auf der Verpackung aufgedruckt.| |Verwenden Sie das Arzneimittel nicht mehr nach diesem Datum!|

|Achten Sie stets darauf, das Arzneimittel so aufzubewahren, da� es f�r Kinder nicht zu erreichen ist!|

|Stand der Information
Juni 1998|

|Liebe Patientin, lieber Patient,
im Mund-Rachenraum leben st�ndig mehr Keime als Menschen in der Riesenstadt New York.| |Das Abwehrsystem des K�rpers, effektiv wie eine Polizeitruppe, sorgt daf�r, da� alle Keimarten in einem ausgewogenen Gleichgewichtsverh�ltnis zueinander bleiben und dadurch keine Krankheiten ausl�sen k�nnen.| |Erst St�rungen von au�en, kleine Verletzungen etwa, eine Invasion fremder Krankheitserreger durch Ansteckung, oder auch Schw�chen im Abwehrsystem k�nnen die friedliche Situation pl�tzlich ver�ndern.| |Dann finden einzelne Keimarten Gelegenheit, sich in gef�hrlichem Ma�e zu vermehren und �u�erst aggressiv gegen den K�rper zu werden.|
|Wegen der reichlichen Versorgung der Mundh�hle mit Nerven machen sich solche Geschehnisse durch Schmerzen und Krankheitsgef�hl bald bemerkbar.| |Der K�rper wehrt sich so gut er kann durch vermehrtes Heranf�hren von Abwehrstoffen mit dem Blutstrom.| |Das Gewebe im Mund und Rachen schwillt an, entz�ndet und r�tet sich.| |Es bilden sich Bel�ge auf der Schleimhaut.| |Sp�testens jetzt ist es notwendig, energisch einzugreifen und den K�rper zu unterst�tzen.| |Dorithricin( Limone Halstabletten bek�mpfen die Krankheitserreger intensiv und d�mpfen zugleich die Schmerzen nachhaltig.| |Ihr Organismus wird rascher und besser mit der Erkrankung fertig.| |Wenn Sie sich an die Einnahmevorschrift halten, wird der Erfolg nicht ausbleiben.| |Ist trotz richtiger Einnahme nach 2-3 Tagen keine durchgreifende Besserung festzustellen, sollten Sie den Arzt aufsuchen.|
|Dorithricin( Limone Halstabletten sind zuckerfrei und damit zahnschonend und f�r Diabetiker geeignet.|

|Wir w�nschen Ihnen gute Besserung!|
|Ihre Dr. Rentschler Arzneimittel GmbH & Co.|


                       |Logische Optimierung| 


|Logische Optimierung 
H�here, nichtprozedurale Abfragesprachen (SQL, 
QBE, ...) verlangen keine Kenntnisse des 
Benutzers �ber die Implementierung, m�ssen aber 
in prozedurale Form (z. B. Relationenalgebra) 
umgesetzt werden.|  
 
|Um trotzdem effiziente Bearbeitung von Queries zu 
erzielen wird die gestellte Anfrage intern 
umformuliert und verbessert.| |Diesen Vorgang 
nennt man Query Optimization.|  
|Im allgemeinen wird keine optimale L�sung erzielt, 
sondern nur eine Verbesserung.| 













|Grundlagen der Datenbanksysteme I1| 



                       |Logische Optimierung| 

                                  
                                  
   
                  |Query (z.B. SQL)| 

       |Query Prozessor| 

          ??|Analyse 
          ??||Umwandlung in relationale Algebra 
          ??||Datenzugriff 
          ??||Ausf�hrung|                           
















|Grundlagen der Datenbanksysteme I2| 



                       |Logische Optimierung| 

|Fragen: 
     Welche Operationen ben�tigen viel Zeit f�r ihre 
     Ausf�hrung?| 
      
     |K�nnen diese vermieden werden, indem man 
     die Anfrage neu formuliert?| 
       
|Beispiel: 
Gegeben sei folgender relationaler Ausdruck: 
                 ?||A(? B=C?||D="99" (AB ?| |CD)) 
Dieser offensichtlich teuere Ausdruck (wg. 
kartesichem Produkt) kann besser formuliert 
werden: 
                ?||A(? B=C(AB ? ?| |D="99" (CD)))
Das kartesische Produkt in dieser Abfrage ist 
offensichtlich durch die Selektion �ber B=C 
�quivalent zu einem Gleichverbund: 
                 ?||A(AB [B=C] ?| |D="99" (CD))| 







|Grundlagen der Datenbanksysteme I3| 



                       |Logische Optimierung| 

|Grundlegende Aspekte 
Zu betrachten sind f�r eine Optimierung die f�nf 
Grundoperationen.| |Wo liegt ihr Schwachpunkt und 
wie k�nnen diese Schwachpunkte umgangen 
werden?| 
 
??|Die auf jeden Fall aufwendigste Operation ist das 
     kartesische Produkt bzw. der Verbund:  
     Bei einfachster Implementierung eines 
     Verbundes zwischen A und B erfolgt ein 
     Durchlauf aller Tupel von B f�r jedes Tupel von A. 
     Dies ist ein Aufwand mit o(nm).| 
??|Die Projektionen sind aufwendig durch das 
     Entfernen von Duplikaten.| 
??|Die Selektionen sollte man so fr�h wie m�glich 
     durchf�hren, da dies zu kleineren 
     Zwischenresultaten f�hrt.| 











|Grundlagen der Datenbanksysteme I4| 



                       |Logische Optimierung| 

 
??|Die un�ren Operationen (Projektion/Selektion) 
     bedingen je einen Durchlauf aller Tupel, daher 
     mehrere m�glichst zusammenziehen oder mit 
     einer bin�ren Operation zusammenfassen.| 
??|Nach gemeinsamen Teilausdr�cken suchen, 
     damit diese nur einmal abgearbeitet werden.|
??|Eventuell tempor�re Verwendung bestimmter 
     Dateiorganisationen (Indizes, Sortieren) einf�hren  
     ?|  |Physische Optimierung| 
      
|Der Zeitaufwand f�r das Untersuchen der 
verschiedenen M�glichkeiten ist im allgemeinen 
viel geringer als f�r das Durchf�hren einer 
ineffizienten Query.| |Daher wird die Optimierung 
immer durchgef�hrt!| 












|Grundlagen der Datenbanksysteme I5| 



                       |Logische Optimierung| 

|Algebraische Manipulation 
??||Gesetze der relationalen Algebra.| 
??|�quivalenz von Ausdr�cken.| 
  |Es gilt E1 ?|  |E2 falls sie dieselbe Abbildung 
  repr�sentieren, d.h. falls dieselben Relationen f�r 
  identische Bezeichnungen in den beiden 
  Ausdr�cken eingesetzt werden, erhallten wir 
  gleiche Ergebnisse.| 

|A. ist sehr aufgeblasen, er glaubt im Guten weit vorgeschritten zu sein, da er, offenbar als ein immer verlockenderer Gegenstand immer mehr Versuchungen aus ihm bisher ganz unbekannten Richtungen sich ausgesetzt f�hlt.| |Die richtige Erkl�rung ist aber die, da� ein gro�er Teufel in ihm Platz genommen hat und die Unzahl der Kleineren herbeikommt, um dem Gro�en zu dienen.|
|Verschiedenheit der Anschauungen, die man etwa von einem Apfel haben kann: die Anschauung des kleinen Jungen, der den Hals strecken mu�, um noch knapp den Apfel auf der Tischplatte zu sehn und die Anschauung des Hausherrn, der den Apfel nimmt und frei dem Tischgenossen reicht.|

|Zum letztenmal Psychologie!|
|Zwei Aufgaben des Lebensanfangs: Deinen Kreis immer mehr einschr�nken und immer wieder nachpr�fen, ob Du Dich nicht irgendwo au�erhalb Deines Kreises versteckt h�ltst.|
|Das B�se ist manchmal in der Hand wie ein Werkzeug, erkannt oder unerkannt, l��t es sich, wenn man den Willen hat, ohne Widerspruch zur Seite legen.|
|Die Freuden dieses Lebens sind nicht die seinen, sondern unsere Angst vor dem Aufsteigen in ein h�heres Leben; die Qualen dieses Lebens sind nicht die seinen, sondern unsere Selbstqual wegen jener Angst.|

|Kannst Du denn etwas anderes kennen als Betrug?| |Wird einmal der Betrug vernichtet darst Du ja nicht hinsehn oder Du wirst zur Salzs�ule.|
|Alle sind zu A. sehr freundlich, so etwa wie man ein ausgezeichnetes Billard selbst vor guten Spielern sorgf�ltig zu bewahren sucht, solange bis der gro�e Spieler kommt, das Brett genau untersucht, keinen vorzeitigen Fehler duldet, dann aber, wenn er selbst zu spielen anf�ngt, sich auf die r�cksichtsloseste Weise ausw�tet.|
|"Dann aber kehrte er zu seiner Arbeit zur�ck, so wie wenn nichts geschehen w�re."| |Das ist eine Bemerkung, die uns aus einer unklaren F�lle alter Erz�hlungen gel�ufig ist, trotzdem sie vielleicht in keiner vorkommt.|


|9.)| |Das Lager der PDS-Wahler schlie�t offenkundig auch Menschen ein, die 1989 gegen den SED-Staat aufstanden (,,Wir sind ein Volk!").| |Der Hauptgrund f�r ihr Verhalten heute ist die Entt�uschung �ber das verweigerte Gef�hl, mit der Wiedervereinigung endlich zu Hause angekommen zu sein.| |Mit der Vereinigung in einem Staat ging nicht eine Einheit im F�hlen und Wollen einher.| |Verweigerung der nationalen Solidarit�t erzeugt ein Trauma.| |W�hrend in Mittel- und Osteuropa der V�lkerfr�hling einzog und die multinationalen Zwangsgebilde zum Einsturz brachte, sa� die westdeutsche politische Klasse in einem antinationalen Getto, von einem postnationalen Zeitalter tr�umend; ihr fehlendes positives Verh�ltnis zur eigenen Nation ist eine der Ursachen der PDS-Erfolge.|
|Hauptaufgabe der LAN�s ist heute das Application-Sharing, das heisst, auf der Festplatte eines zentralen Server-Rechners liegen verschiedene Anwendungen, die von allen - dazu zugelassenen - Client-Rechnern genutzt werden k�nnen.| |Ebenso werden die verschiedenen Daten und Dateien - gleich ob Dokumente oder Spreadsheets - auch zentral vorgehalten.| |Eine Sonderrolle nehmen hier noch die Anwendungen wie Datenbanksysteme (DBMS) ein, die - ebenfalls zentral - auf einem Server gefahren werden, deren Datenbest�nde dann von den vernetzten Arbeitsstationen aus mit Client-Software (Access, Excel etc.) abgefragt werden k�nnen.| |Bezeichnet wird dieses System der Datenhaltung und -bearbeitung als "Client-Server-Computing" im weitesten Sinne.| |Der Schritt zu einem Intranet ist da bald nicht mehr weit.| |Nur: was ist ein Intranet?| 
|Als dieser Begriff im Sprachgebrauch aufkam, wurde er zun�chst eher als Marketing-Gag denn als neues Werkzeug f�r die t�gliche Arbeit angesehen.|
|Meistens wird als Intranet eine Netzwerkumgebung und deren Werkzeuge bezeichnet, die haupts�chlich firmenintern, das heisst, im eigenen LAN angesiedelt sind - ganz im Gegensatz zum Internet, das den gesamten Rest der Welt umfasst.|

|Hier tabellarisch die wichtigsten technischen Daten der Testger�te:|

|Rechnername	fuchur	multimed1|
	
|Domain/IP-Nummer	radiond1.de / 192.168.1.10	fh-reutlingen.de / 134.103.192.26|	

|Netzart	Intranet	FHRT-Net|	

|Prozessor	AMD 486DX100	Cyrix 486/66|	

|Arbeitsspeicher (RAM)	20 MB	32 MB|	

|Harddisks	2 x 500MB IDE	920MB / 298MB SCSI|	

|Betriebssystem	Linux (S.u.S.e 5.3)	Linux (S.u.S.e 5.3)|	

|Die Testl�ufe auf diesen Rechnern haben eine f�r das System ausreichende Server-Performance ergeben.| |Dazu hat auch das verwendete Betriebssystem beigetragen.|

|W�hrend der Programmierarbeiten am Intranet Framework sind mir etliche Inkompatibilit�ten zwischen den beiden im Internet am weitesten verbreiteten Browsern aufgefallen - um nicht zu sagen: sauer aufgesto�en.|
|Stichwort "JavaScript"
Beide Browser k�nnen durch die eingebaute Sprache JavaScript (Netscape) bzw. JScript (Microsoft) etliche einfachere Programmlogik auf den Client - den Browser - verlagern.| |Der Stolperstein dabei ist dabei aber die unterschiedliche Implementation der Sprache: offensichtlich verstehen Microsoft und Netscape unter ein und dem selben Konstrukt etwa verschiedenes, so das man tats�chlich das ein oder andere Mal gezwungen ist, in ein JavaScript-Programm eine Abfrage nach dem Hersteller (!) des Browsers vorzusehen.|

 |Die Software des Frameworks �bergibt n�mlich die zu speichernden Daten per URL-Parameter, wie zum Beispiel in der Form "http://seite.html?parameter1=1&parameter2=2" usw. Apache genauso wie seine Kollegen kann aber nur eine bestimmte L�nge dieses Strings verarbeiten; �berschreitet die L�nge der URL den Grenzwert, dann gibt das Webserver-Programm eine Fehlermeldung an den Bowser zur�ck und f�hrt die gew�nscht Aktion nicht aus.| |Durch empirische Versuche habe ich die URL-L�nge auf ca. 4650 Zeichen eingrenzen k�nnen (was in etwa 2 DIN-A4-Seiten entsprechen d�rfte), dies wohlgemerkt im besten Falle.|
|Dieser �berlauf d�rfte aber bei dem geplanten Anwendungsgebiet nicht auftreten, da die zu speichernden Textarten selten mehr als 2000 Zeichen habe, wie eine Untersuchung der bisher mit Word erstellten Texte gezeigt hat.|
|Trotzdem ist hier f�r die Zukunft geplant, entweder den Sourcecode des Apache entsprechend zu ver�ndern, oder - das w�re wohl die elegante L�sung - zumindest das Editor-Feld der HTML-Seite nach Java zu portieren und den geschriebenen Text dann mittels JDBC in die Datenbank zu schreiben.|


|In der Theorie war jeder Nutzer angehalten, seine redaktionellen Texte in das entsprechende Verzeichnis, dessen Namen eine r�umliche oder thematische Zuordnung erlaubte, einzusortieren.| |In der Praxis wurde das System von den Mitarbeitern des Radiosenders aus den verschiedensten Gr�nden (Unkenntnis des Systems, Angst vor dem Computer, usw.) nicht genutzt.| |Die Dokumente wurden nach einem Ausdruck nicht gespeichert, und wenn, dann willk�rlich irgendwohin in das Verzeichnissystem mit irgendeinem Dateinamen, der nichts aussagte ("Dokument1.doc").| |Das Prinzip dabei: Der Computer ist eine Schreibmaschine mit Bildschirm ...
Das Problem ... 
Dieses chaotische System lief solange gut, bis man einen Text zu einem bestimmten Thema suchte: Er war ohne besondere Hilfen und vor allem Kenntnisse von Windows95 nicht zu finden.| |Gl�ck hatte nur der Redakteur, der den Menupunkt "Datei suchen" kannte und vor allem auch bedienen konnte.| |Doch ist diese Art der Suche nicht sehr produktiv, und meist auch nicht sonderlich erfolgreich, da Microsoft dem Anschein nach die Suchalgorithmen sehr unscharf programmiert hat.|

|Das Intranet-Framework erlaubt auch das Drucken eines Textes.| |Dazu findet man in der Menuzeile verschiedener Fenster den Button Drucken.| |Ein Klick auf diesen �ffnet ein Vorschaufenster mit dem zu druckenden Text.|
|Allerdings kann man in dieser Version des Intranet-Frameworks keine perfekte Druckausgabe wie zum Beispiel bei Word f�r Windows erwarten.| |Dies ist prinzipbedingt, denn eigentlich ist die Beschreibungssprache HTML nicht f�r die Erstellung druckreifer Web-Dokumente erdacht worden, sondern noch eher zur Strukturierung von Dokumenten jeglicher Art.| |Dies l�sst auch schon der Name erkennen: Hypertext Markup Language.|
|Ich habe versucht, dieses Manko durch HTML-Tabellen-Programmierung etwas zu umgehen, das hei�t, ich habe die einzelnen auszugebenden Textteile mittels Tabelle positioniert.|

|WWWBoard wurde komplett in Perl geschrieben und stellt auf einfache Weise die Funktionalit�ten eines Schwarzen Brettes zur Verf�gung.|
|Installation 
Die Installation der Software gestaltet sich als recht einfach: Laut der Installationsanleitung werden die entsprechenden Eintr�ge in das Programm vorgenommen, die Verzeichnisse f�r die verschiedenen Daten auf dem Server erstellt - das wars.|
|Auch die grunds�tzliche Einbindung ins Framework ist kein Problem.| |Lediglich die Optik der Software muss an den Style-Guide des Intranets angepasst werden.|

|[1]	HTML Handbuch	Stefan M�nz/Wolfgang Nefzger,  Feldkirchen, Franzis-Verlag, 1997|
	
|[2]	SQL - Standardisierte Datanbanksprache vom PC bis zum Mainframe	Albrecht Achilles, M�nchen, Oldenbourg Verlag, 1989|	

|[3]	Das SQL-Lehrbuch	Rick F. Van der Lans Bonn, Addison-Wesley, 1987|	

|[4]	MySQL - Technical Reference Manual	David Axmark  TcX AB, 1998|	

|[5]	PHP3 - Manual	Stig S. Bakken PHP Documentation Group, 1997|	

|[6]	Linux - das Kompendium	Jack Tackett jun. etc. Haar, Verlag Markt & Technik, 1995	
Zeitschriften|

|[1]	Dynamische Webseiten mit PHP/FI	Tom Schwaller Linux Magazin 6/1996 S. 39, Aschheim 1996|	

|[2]	Pulverkaffee - Dynamische HTML-Seiten mit PHP/FI, mSQL und gd	Tobias H�cker iX 8/1996 S. 56, Hannover 1996|	


|[3]	Net at Work - Intranet im preiswerten Eigenbau	Dirk Brenken C�t 10/1996 S. 302, Hannover 1996|	

|[4]	Systemcocktail - Datenbanken und Web-Technik	J�rgen Diercks iX 10/1997 S. 110, Hannover 1997|	

|[5]	Hei�es Bem�hn - Internet Explorer 4 f�r Solaris	Henning Behme iX 4/1998 S. 62, Hannover 1998|	


|[6]	Ins Netz gegangen - Freie Unix-Versionen	J�rgen Kuri C�t 11/1998 S. 366, Hannover 1998|	

|[7]	Gesch�fte im Web	Detlef Beyer/Andr� Schr�ter C�t 15/1998 S. 290, Hannover 1998|	

|[8]	Schirmherrschaft - Das Web: Plattform f�r Firmenanwendungen	J�rgen Diercks iX 1/1999 S. 104, Hannover 1999|	

|REC-html40-19980424| 

|HTML 4.0 Specification| 

|W3C Recommendation, revised on 24-Apr-1998| 

|This version:| 

|http://www.w3.org/TR/1998/REC-html40-19980424| 

|Latest version:| 

|http://www.w3.org/TR/REC-html40| 

|Previous version:| 

|http://www.w3.org/TR/REC-html40-971218| 

|Editors:| 

|Dave Raggett <dsr@w3.org>| 

|Arnaud Le Hors <lehors@w3.org>| 

|Ian Jacobs <ij@w3.org>| 

|Available formats|

|The HTML 4.0 W3C Recommendation is also available in the following formats:| 

|A plain text file:| 

|http://www.w3.org/TR/1998/REC-html40-19980424/html40.txt (735Kb),|
 
|A gzip'ed tar file containing HTML documents:| 

|http://www.w3.org/TR/1998/REC-html40-19980424/html40.tgz (357Kb),| 

|A zip file containing HTML documents (this is a '.zip' file not an '.exe'):| 

|http://www.w3.org/TR/1998/REC-html40-19980424/html40.zip (389Kb),| 

|A gzip'ed Postscript file:| 

|http://www.w3.org/TR/1998/REC-html40-19980424/html40.ps.gz (600Kb, 367 pages),| 

|A PDF file:| 

|http://www.w3.org/TR/1998/REC-html40-19980424/html40.pdf (2.1Mb) file.| 


|Eins, zwei, drei, etc..|
|Selbst der 100. Punkt ist kein Grund fuer eine Trennung.|
|Auch nicht der 1000. Punkt, oder der 30000. Punkt.|
|Selbstverstaendlich sind normale Jahreszahlen Satzenden, wie etwa 1903.|
|Oder erst recht 1979.| |Ganz zu schweigen von 2010.|
|Insbesondere sollte es mit einem Jahr sehr gut klappen: 2000.|
|Auch andere duerfen keine Probleme machen, etwa 1900.|
|Und 2100.|
|Selbst <<Dies und das!!>> sagte er, sollte verstanden werden.|
|Abkuerzungen aus nur Vokalen sollen richtig interpretiert werden, ua. solche wie iaa. oder a�. oder auch uuu..|
|Verstanden ?|
