Instance: eer.getReceivingOrganizationBySORId
InstanceOf: OperationDefinition
Description: "EER getReceivingOrganizationBySORId"
Usage: #definition
* url = "http://medcomehmi.dk/ig/dk-ehmi-eer/OperationDefinition/getReceivingOrganizationBySORId"
* version = "0.9.0"
* name = "EER-getReceivingOrganizationBySORId"
* title = "EER getReceivingOrganizationBySORId"
* status = #draft
* kind = #query
* date = "2025-01-01T00:00:00+01:00"
* publisher = "EHMI EER"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://sundhedsdatastyrelsen.dk/ehmi/eer"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi-eer@sundhedsdatastyrelsen.dk"
* description = "GET [EER-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Organization?Identifier.value=[SOR_Identifier]
This search will produce a EerMessagingOrganization as a response
EER will in order to produce this response run through a sequence of calls from"
* code = #getReceivingOrganizationBySORId
* comment = "getReceivingOrganizationBySORId return EerMessagingOrganization"
* resource = #CapabilityStatement
* system = true
* type = false
* instance = true
* inputProfile = "string"
* outputProfile = "http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerMessagingOrganization"
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "submitting the Id of the Patient's General Practitioner would evoke this search operation"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The response is a EerMessagingOrganization corresponding to the General Practitioner of the Patient"
* parameter[=].type = #Organization
