Instance: LaegerneStjernepladsen.SOR.698131000016001
InstanceOf: EerSorOrganization
Title: "Example EER SOR Organization"
Description: "An example instance of the EER SOR Organization with a required endpoint."
* id = "LaegerneStjernepladsen.SOR.698131000016001"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#IE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
//sor-institution-owner
* contact[SOR-Owner].purpose = #ADMIN
* contact[SOR-Owner].extension.url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension.valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.698141000016008
InstanceOf: EerSorOrganization
Title: "EER SOR Organization - LaegerneStjernepladsen.SOR.698141000016008"
Description: "EER SOR Organization - LaegerneStjernepladsen.SOR.698141000016008"
* id = "LaegerneStjernepladsen.SOR.698141000016008"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* partOf = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#SI
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* contact[SOR-Owner].purpose = #ADMIN
* contact[SOR-Owner].extension.url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension.valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.698161000016009
InstanceOf: EerSorOrganization
Title: "EER SOR Organization - LaegerneStjernepladsen.SOR.698161000016009"
Description: "EER SOR Organization - LaegerneStjernepladsen.SOR.698161000016009"
* id = "LaegerneStjernepladsen.SOR.698161000016009"
* name = "Tine Nørregaard Nielsen"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
//* partOf = Reference(Organization/LaegerneStjernepladsen.SOR.698141000016008)
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* contact[SOR-Owner].purpose = #ADMIN
* contact[SOR-Owner].extension.url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension.valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.5790002401428
InstanceOf: EerSorEndpoint
Title: "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428"
Description: "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428"
* id = "LaegerneStjernepladsen.SOR.5790002401428"
* identifier[GLN-ID].value = "5790002401428"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = $EerEndpointConnectionTypeCS#EerMessagingEdelivery
* name = "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428 FHIR Endpoint"
* managingOrganization.reference = "Organization/LaegerneStjernepladsen.SOR.698131000016001"
* extension[ap-system].valueReference = Reference(EerDeviceAP-MultiMedAP)
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0	
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdhacknowledgement:1.0
