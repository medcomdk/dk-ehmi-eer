Instance: EP.MSG.HI.AAR.937961000016000.GLN.5790000123117.VANS.OIOXML.IN
InstanceOf: EerMessagingVansOioxmlEndpoint
Description: "AAR EerMessagingVansOioxmlEndpoint."
* id = "EP.MSG.HI.AAR.937961000016000.GLN.5790000123117.VANS.OIOXML.IN"
* identifier.value = "5790000123117"
* identifier.system = $EerAuditEventAgentWhoIdentifierTypes
* identifier.type = $EerAuditEventAgentWhoIdentifierTypes#GLN
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EHMI.SOR.HI-AAR-Kommune.937961000016000)
* period.start = "2023-01-01"
//* period.end = "2024-01-01"
* address = "http://aar.dk/vans/oioxml/in"
* payloadMimeType = #text/xml
* payloadType[0] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl01:xc0130q	"NegativeVansReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl02:xc0230q	"NegativeReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:contrl:xctl03:xc0330q	"PositivReceipt"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis18:xd1834c	"XML udskrivningsrapport"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis19:xd1934c	"XML melding om færdigbehandling"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis21:xd2134c	"XML plejeforløbsplan"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:meddis:xdis22:xd2230l	"XML Afslutningsnotat fra kommunens akutfunktion"
* payloadType[+] = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:oioxml:schema:xsd:medref:xref22:xh2230r	"XML Henvisning til kommunens akutfunktion"
