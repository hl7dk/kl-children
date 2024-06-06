This page describes subsequent delivery reports for the child Lars Test Berggren. Lars comes from MedCom’s set of test patients. For each delivery report the story is told (in Danish), and a reporting example is given. This story is made to illustrate the use of Location (school code), and entered-in-error. For a more extesive story read the small children example.

### First Event October 6th, 2021
#### Story
Lars kommer til indskolingsundersøgelse sammen med sine forældre, på en skole i Holbæk.
Lars er 125 cm høj og vejer 26 kg. Kost, kommunikation, motorik, fysisk aktivitet, hørelse, syn og social kontakt er normalt/alderssvarende. Lars har let forstyrret søvn pga. naturininkontinens. Sundhedsplejersken igangsætter indsatsen 'Vejledning ved udskillelsesproblematik'
#### Reporting
The delivery report contains one Citizen (Lars), one Encounter (Type: ‘Indskolingsundersøgelse’), and the encounters Location (the school). The report holds the mandatory Observations IndicatorSocialInteraction, Weight, Height, IndicatorNutrition, IndicatorCommunication, IndicatorSleep ('Let forstyrret søvn'), IndicatorMotorFunction, IndicatorPhysicalActivity, IndicatorHearing and IndicatorSight.
In addition, Lars has an instance of ExamResult ('naturininkontinens'), and an instance of Intervention ('Vejledning ved udskillelsesproblematik').

The report for this is found here: [DeliveryReport-Lars-1](Bundle-5f1d5816-a906-4314-a6f4-69b400682ec6.html)

### Second Event October 9th, 2021
#### Story
Sundhedsplejersken skal have en behovskontakt med Lars fra 3. klasse vedr. overvægt. Ved en fejl, kommer hun til at skrive det i Lars fra 0.klasses journal (Lars Test Berggren). Eksemplet viser, hvordan data først indberettes til den forkerte Lars' journal, og hvordan fejlen herefter rettes. Læg mærke til at hverken Lars, eller Lokationen (skolen i Holbæk) tages med i fejlretningen. Det er fordi, det er entiteter, der rent faktisk eksisterer og ikke skal rettes. 

#### Error-filled reporting
The delivery report contains one Citizen (Lars), one Encounter (Type: ‘Behovskontakt’), the encounters location (the school). In addition, an Intervention ('Opsporing og vejledning ved overvægt').

The report for this is found here: [DeliveryReport-Lars-2a](Bundle-4cda6c3c-856c-4fe3-ac90-9b6f968207c3.html)

#### Error-correction report
The delivery report contains a new version of the Encounter and Intervention mentioned above, where status is entered-in-error.

The report for this is found here: [DeliveryReport-Lars-2b](Bundle-9a966368-052f-42e5-87fa-e57d9b8cbf2c.html)
