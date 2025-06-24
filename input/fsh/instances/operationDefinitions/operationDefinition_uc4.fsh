/*
Instance: eer.getMessagingOrganizationBySORId
InstanceOf: OperationDefinition
Description: "EER getMessagingOrganizationBySORId"
Usage: #definition
* url = "http://medcomehmi.dk/ig/eer/OperationDefinition/getMessagingOrganizationBySORId"
* version = "0.9.0"
* name = "EER-getMessagingOrganizationBySORId"
* title = "EER getMessagingOrganizationBySORId"
* status = #draft
* kind = #query
* date = "2025-01-01T00:00:00+01:00"
* publisher = "EHMI EER"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://medcom.dk/ehmi/eer"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi@medcom.dk"
* description = "GET [EER-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Organization?Identifier.value=[SOR_Identifier]
This search will produce a EerMessagingOrganization as a response
EER will in order to produce this response run through a sequence of calls from"
* code = #getMessagingOrganizationBySORId
* comment = "getMessagingOrganizationBySORId return EerMessagingOrganization"
* resource = #CapabilityStatement
* system = true
* type = false
* instance = true
* inputProfile = "http://medcomehmi.dk/ig/eer/StructureDefinition/EerCoreOrganization"
* outputProfile = "http://medcomehmi.dk/ig/eer/StructureDefinition/EerMessagingOrganization"
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "submitting the SOR-identifier of the EerCoreOrganization would evoke this search operation"
* parameter[=].type = #Organization
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The response is a EerMessagingOrganization corresponding to the General Practitioner of the Patient"
* parameter[=].type = #Organization
*/