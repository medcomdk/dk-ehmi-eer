## 7.3	EHMI Endpoint Register (EER)

I Postkasseregisteret (EER) administrerer parterne i EHMI meddelelsesinfrastrukturen Endpoint-adresser for deres forskellige organisatoriske enheder, som skal kunne modtage meddelelser. 

Sundhedsadresseringsservicen EAS forventes at være eneste aftager af EER-data, som er en af de autoritative kilder EAS benytter til at udstille et samlet søgeinterface til anvenderne af EHMI.

### 7.3.1	EER usecases

Der er to overordnende usecases for anvendelsen af postkasseregisteret EER.

1.	EER udstiller en snitflade til søgning og opslag i organisationers endpoints. I produktionspiloten (og givetvis også i det lange løb) er der udelukkende Sundhedsadresseringsservicen, der benytter denne snitflade.  

2.	EER stiller desuden en grænseflade til rådighed, hvor organisationers endpoints kan opsættes og administreres. Opsætning og administration foregår på superbruger-niveau for brugerens organisation. Superbrugere kan få adgang via en særlig administrator-rettighed (som tildeles gennem SEB brugerkataloget).

### 7.3.2	Indrullering/whitelisting af systemklienter i EER (til søgning og opslag)
Sundhedsadresseringsservicen, som indtil videre er eneste klient, der foretager søgninger og opslag i EER, indrulleres som systemklient med de i afsnit 3.3 Indrullering af klienter beskrevne elementer, hvor der angives følgende som scope element:
 
Metadata for en EER systemklient

Der skal ikke angives yderligere metadata end de i afsnit 3.3.1 Metadata for klienter beskrevne.

Eksempel metadata dokument for en EER systemklient (dvs. Sundhedsadresseringsservicen):

### 7.3.3	Indrullering/whitelisting af brugerklienter (til administration)

Brugerklienter som anvendes af superbrugere til at administrere indgange i Postkasseregisteret indrulleres alene med de i afsnit 3.3 Indrullering af klienter beskrevne elementer. 

Under indrullering angives følgende scope element:
 
Metadata for en EER brugerklient til administration af Postkasseregisterindgange

For EER brugerklienter skal der kun angives de i afsnit 3.3.1 Metadata for klienter beskrevne metadata.

Eksempel metadata dokument for en EER brugerklient:

### 7.3.4	Kald til Token Endpoint

For at få udstedt et access token til at kunne tilgå EER angives følgende scopes:

scope 	Beskrivelse

EER	En angivelse af det er for EER, at klienten ønsker et access token.
system/Endpoint.rs	(kun for systemklienter) En angivelse af at tokenet skal kunne benyttes til at læse og fremsøge Postkasseregister ressourcer (som er FHIR bundles bestående af profileringer af FHIR’s Endpoint og Organization ressourcer).
system/Organization.rs	

user/Endpoint.cruds	(kun for brugerklienter) En angivelse af at tokenet skal kunne benyttes til at oprette/læse/opdatere/slette/fremsøge Postkasseregister ressourcer (som er FHIR bundles bestående af profileringer af FHIR’s Endpoint og Organization ressourcer).
user/Organization.cruds	

Valideringer af kaldet hos Authorization Server

Kaldet til Token Endpoint valideres hos Authorization Server, som validerer klientens TLS-klientcertifikat og tjekker at klienten er indrulleret/whitelistet med de angivne scopes. 

### 7.3.5	Kald til EER

Kald til EER foretages som beskrevet i den generelle sikkerhedsmodel som REST-kald over tovejs TLS, med access tokenet (som er sender-constrained) i en HTTP header.

EER adgangskontrol

Postkasseregisteret tjekker at access tokenet er gyldigt og validerer ’sender-contrained’ egenskaben, det vil sige validerer, at det af klientens anvendte TLS-klientcertifikat matcher certifikatet, som blev indlejret i access tokenet. Postkasseregisteret verificerer desuden, at tokenet er udstedt til EER som aftager af tokenet.

Ved søgning og opslag af postkasseregisterindgange tjekker servicen, at tokenet indeholder de nødvendige scopes til at klienten må foretage søgninger op opslag i EER. 

Ved administration af postkasseregisterindgange afgrænser EER tilgangen til registreringer vedrørende egen organisation på CVR niveau. Konkret validerer EER først at brugeren har fået tildelt superbruger-rollen, dvs. at den adgangsgivende rolle  fremgår af access tokenets rolle-struktur i priv claim’et. EER begrænser derefter adgangen til postkasseindgange, hvori der indgår samme organisations CVR-nummer, som fremgår af access tokenets cvr claim.
