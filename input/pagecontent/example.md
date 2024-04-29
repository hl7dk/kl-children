This page describes subsequent delivery reports for the child Rikke Test Berggren and her parents Kirsten Test Berggren and Knud Odvar Test Mosebryggersen. The three citizens all come from MedCom’s set of test patients, but MedCom’s original family-connections had to be ignored to form a coherent example. For each delivery report the story is told (in Danish), and a reporting example is given.

### First Event February 5th, 2020
#### Story
Kirsten er gravid, og er i uge 27. Hun møder sundhedsplejersken sammen med sin mand Knud. Der er kommet et graviditetsbesøg i stand, fordi Kirsten af jordemoderen er blevet vurderet sårbar. Kirsten har haft en svær opvækst, med omsorgssvigt, og har tidligere haft en depression, med har det godt i hverdagen. Ellers er der ikke noget at bemærke ved forældrene.
#### Reporting
The delivery report contains two Citizens (Kirsten and Knud), one Encounter (Type: ‘Graviditetsbesøg’), and an instance of the mandatory Observations for each parent IndicatorParentSocialStatus (Kirsten’s psychological vulnerability is marked as “Potentiel sårbarhed”) , IndicatorParentMentalStatus, IndicatorSocialSupportNetwork. In addition, Kirsten has an instance of ExamResult (her childhood trauma is registered as ‘Traumatiske oplevelser’).

<!-- The report for this is found here: [DeliveryReport-Rikke-1](Bundle-b9479825-6be1-4fa1-a2ae-74fe67014caa.html) -->

### Second Event May 9th, 2020
#### Story
Rikke blev født d. 5. maj. D. 9. maj kommer sundhedsplejersken på barselsbesøg. Kirsten er kommet godt i gang med at amme. Vægten er 3100g og forældre-barn relation er normal.
Sundhedsplejersken får dog ved en fejl ikke registreret forældre-barn-relationen i journalen. Derfor fejler indberetningen. Næste nat forsøges data afsendt igen, og fejler af samme årsag. Herefter afsendes rapporten med en registrering af, at data mangler for forældre-barn-relationen.
#### Failed reporting
The delivery report contains one Citizen (Rikke), one Encounter (Type: ‘Barselsbesøg’), and two instances of the mandatory Observation FeedingObservation (One feeding periode and one feeding status), and one instance of BodyWeight. The report fails because IndicatorParentRelationship is missing.
#### Successful reporting
IndicatorParentRelationship is added to the report with no value and a dataAbsentReason, and the content is validated and send. 

### Third Event May 17th, 2020
#### Story
Ved etableringsbesøget er alt som det skal være. Kirsten ammer fortsat, vægten er 3400g, længden 51cm og hovedomfang 35cm. Der skal på besøget rapporteres på forældres sårbarhed, ligesom på graviditetsbesøget. Da der ikke er noget der har ændret sig, bliver forældre og sundhedsplejerske hurtigt enige om, at det er samme situation som før fødslen. Der ryges ikke i hjemmet, ej heller hvor Rikke hyppigt opholder sig, derfor registreres at hun ikke udsættes for passiv rygning.
#### Reporting
The delivery report contains three Citizens (Rikke, Kirsten, Knud), ), two RelatedParent instances to maintain the relationship between the three,  one Encounter (Type: ‘Etableringsbesøg’). For Rikke, there is an instance of the mandatory Observations IndicatorParentRelationship, BodyWeight, BodyHeight, HeadCircumference, IndicatorPassiveSmoking, and FeedingObservation.
The parent’s Observations result in two instances of IndicatorParentSocialStatus and IndicatorSocialSupportNetwork respectively.

### Fourth Event June 1st, 2020
#### Story
Ved 2. besøg i barnets første levemåned, kommer sundhedsplejersken forbi sen eftermiddag. Alt er normalt. Rikke vejer 4150g, er 53,5 cm og har et hovedomfang på 36,5cm. Kirsten fuldammer stadig.
Desværre når sundhedsplejersken ikke at skrive resultaterne fra besøget ind i systemet fordi hun har fyraften lige efter besøget, derfor fejler afleveringen af data første nat. Næste dag, skrives de resterende data ind i systemet, og data kan valideres og afsendes følgende nat.
 #### Failed reporting
The delivery report contains one Citizen (Rikke), one Encounter (Type: ‘2. Besøg i barnets første levemåned’). The report fails because the mandatory observations are missing.
#### Successful reporting
The observations are added. In addition to the instances mentioned above, the report contains IndicatorParentRelationship, BodyWeight, BodyHeight, HeadCircumference, FeedingObservation, IndicatorCommunication.

### Fifth Event July 7th, 2020
#### Story
Ved 2 måneders besøget udfylder begge forældre EPDS, og Kirstens score ligger på 15, og sundhedsplejen må konstatere at Kirsten, når der spørges ind, er påvirket særligt med nedtrykthed, dårlig selvfølelse og selvbebrejdelse (de to sidstnævnte er depressive ledsagesymptomer).  Der registreres derfor en psykisk reaktion i journalen som også nuanceres med Kirstens symptomer. Knuds EPDS er normal, og hans psykiske reaktion er forventelig.
Sandsynligvis pga. sin mors mistrivsel, kan sundhedsplejersken konstatere let udfordret forældre barn relation, fordi Kirsten nogle gange har svært ved at dække Rikkes følelsesmæssige behov, de timer, hvor de er alene. Desuden græder Rikke meget både ifm. besøget, og ellers, og sundhedsplejen vurderer at hendes kontakt med barnet ikke er alderssvarende, særligt er der afvigende øjenkontakt. Alt andet er normalt. Vægten er 5100g, længden er 57cm og hovedomfanget er 38cm.
Sundhedsplejersken opstarter vejledning i kontakt, samspil og barnets behov.
Sundhedsplejersken opfordrer Kirsten til at søge egen læge hurtigst muligt med henblik på diagnosticering af fødselsdepression og psykologhjælp dvs. indsatsen ’Anbefalet kontakt til praktiserende læge’. Desuden takker Kirsten ja til at deltage i en forældregruppe med andre forældre der har en psykisk reaktion dvs. indsatsen ’Forældregruppe hvor forælder har psykisk reaktion’.
Sundhedsplejen igangsætter desuden indsatsen ’Støtte ved psykisk reaktion eller sårbarhed’ i Kirstens journal. Og indsatsen ’Vejledning i kontakt samspil og barnets behov’ i Rikkes journal. De aftaler at sundhedsplejersken laver et skærmbesøg næste dag for at følge op, og kommer forbi fysisk om fem dage.
#### Reporting
The delivery report contains three Citizens (Rikke, Kirsten, Knud), two RelatedParent instances to maintain the relationship between the three, and one Encounter (Type: ‘Besøg ved det ca. 2 måneder gamle barn’). 
For Knud, there is an instance of QuestionnaireResponse (EPDS), IndicatorParentMentalStatus
For Kirsten, there is an instance of QuestionnaireResponse (EPDS), IndicatorParentMentalStatus and two instances of ExamResult to contain Kirsten’s depression symptoms. In addition, three instances of Intervention contains the three need-based interventions that are started for Kirsten.
For Rikke, there is an instance of IndicatorSocialInteraction, IndicatorParentRelationship, BodyWeight, BodyHeight, HeadCircumference, FeedingObservation, IndicatorCommunication. In addition, three instances of ExamResult, that holds the observations related to social interaction (græder meget, afvigende øjenkontakt) and child-parent relationship (‘Følelsesmæssige behov mødes ikke’). Rikke’s need-based intervention is also reported as an instance of Intervention.

### Sixth Event July 8th, 2020
#### Story
Sundhedsplejersken kalder op til Kirsten, Knud og Rikke, i en behovskontakt leveret som skærmbesøg. Familien fortæller blandt andet at de siden i går både har kontaktet egen læge, og at Knud har talt med sin arbejdsgiver om, at kunne være meget mere hjemme i den kommende tid. Rikke græder ikke i løbet af besøget. Ud over at spørge ind til familien fortsætter sundhedsplejersken sin vejledning i kontakt, samspil og barnets behov.
#### Reporting
The delivery report contains two citizens (Rikke, Kirsten), and a RelatedParent instances to maintain the relationship between them.
For Kirsten, it is registered that she had an Encounter (Type: “Behovskontakt med småbørnssundhedsplejen”), and that this encounter was a delivery of her intervention ’Støtte ved psykisk reaktion eller sårbarhed’, which means that an Instance of her Intervention is also included.
For Rikke, it is registered that she had an Encounter (Type: “Behovskontakt med småbørnssundhedsplejen”), and that this encounter was a delivery of her intervention ‘Vejledning i kontakt samspil og barnets behov’, which means that an Instance of her Intervention is also included.
Note that two instances of Encounter is related to one visit. This is done for two reasons: Not mixing up Rikkes and Kirstens patient journals, and keeping the FHIR standard, which says that encounters are personal i.e. has one subject. For ease of registration, just use the same start-time, and (if registered at all) the same end-time.

### Seventh Event July 12th, 2020
#### Story
Sundhedsplejersken besøger Kirsten, Knud og Rikke, i en behovskontakt. Familien fortæller at det går bedre. Kirsten er allerede begyndt i sin nye forældregruppe og til psykolog, og Knud er mere hjemme. Sundhedsplejen vurderer, at der nu gøres det der kan i andet regi mht. Kirstens psykiske tilstand, og afslutter derfor Kirstens indsats vedr. ’Støtte ved psykisk reaktion eller sårbarhed’.
Rikke er stadig ikke alderssvarende i sin sociale kontakt, særligt ikke mht. øjenkontakt, men der er forbedring og forældrene responderer godt på sundhedsplejerskens vejledning. Derfor fortsætter indsatsen ‘Vejledning i kontakt samspil og barnets behov’.
#### Reporting
The delivery report contains two citizens (Rikke, Kirsten), and a RelatedParent instances to maintain the relationship between them.
For Kirsten, it is registered that she had an Encounter (Type: “Behovskontakt med småbørnssundhedsplejen”), and that this encounter was a delivery of her intervention ’Støtte ved psykisk reaktion eller sårbarhed’, which means that an Instance of her Intervention is also included. This Intervention is now ended (i.e. given an end-date).
For Rikke, it is registered that she had an Encounter (Type: “Behovskontakt med småbørnssundhedsplejen”), and that this encounter was a delivery of her intervention ‘Vejledning i kontakt samspil og barnets behov’, which means that an Instance of her Intervention is also included.

### Eighth Event July 23rd, 2020
#### Story
Sundhedsplejersken besøger Kirsten, Knud og Rikke, i en behovskontakt. Familien fortæller at de har det rigtig godt og synes Rikke er i trivsel.
Sundhedsplejen vurderer at Rikke nu er alderssvarende i sin sociale kontakt. Derfor afsluttes ‘Vejledning i kontakt samspil og barnets behov’.
Sundhedsplejersken aftaler med familien, at de ser hinanden næste gang til 4-6 måneders besøget.
#### Reporting
The delivery report contains one citizens (Rikke). It is registered that she had an Encounter (Type: “Behovskontakt med småbørnssundhedsplejen”), and that this encounter was a delivery of her intervention ‘Vejledning i kontakt samspil og barnets behov’, which means that an Instance of her Intervention is also included. This Intervention is now ended (i.e. given an end-date).
