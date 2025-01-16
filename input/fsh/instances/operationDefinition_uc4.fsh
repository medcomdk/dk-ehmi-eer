/*
Instance: eer.getReceivingOrganizationBySORId
InstanceOf: OperationDefinition
Description: "EER getReceivingOrganizationBySORId"
Usage: #definition
* url = " http://medcomehmi.dk/ig/dk-ehmi-eer/OperationDefinition/getReceivingOrganizationBySORId"
* version = "0.1.0"
* name = "EER-getReceivingOrganizationBySORId"
* title = "EER  getReceivingOrganizationBySORId"
* status = #draft
* kind = #query
* date = "2024-06-01T00:00:00+01:00"
* publisher = "EHMI EER"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://sundhedsdatastyrelsen.dk/ehmi/EER"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi-EER@sundhedsdatastyrelsen.dk"
* description = "GET [EER-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-eer-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
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
* parameter[=].documentation = "submitting the SorId of the an organization would evoke this search operation"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The response is a EerMessagingOrganization corresponding to the General Practitioner of the Patient"
* parameter[=].type = #Organization
*/