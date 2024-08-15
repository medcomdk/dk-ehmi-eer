/*
Instance: eer.getReceivingOrganizationBySORId
InstanceOf: OperationDefinition
Description: "EER getReceivingOrganizationBySORId"
Usage: #definition
* url = "http://eerbase.eer.dk/OperationDefinition/getReceivingOrganizationBySORId"
* version = "0.1.0"
* name = "EER getReceivingOrganizationBySORId"
* title = "EER getReceivingOrganizationBySORId"
* status = #draft
* kind = #query
* date = "2024-06-01T00:00:00+01:00"
* publisher = "EHMI EER"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://medcom.dk/ehmi/eer"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "ehmi-eer@medcom.dk"
* description = "GET [EER-base]/Organization?_profile=http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization&Patient?Identifier.value=[Patient_Identifier]&system=urn:oid:1.2.208.176.1.2
This search will produce a MedComMessagingOrganization as a response
EER will in order to produce this response run through a sequence of calls from"
* code = #getReceivingOrganizationBySORId
* comment = "getReceivingOrganizationBySORId return Bundle of eerOrganization(s) and corresponding EerEndpoint(s) for messagetype"
* resource = #CapabilityStatement
* system = true
* type = false
* instance = true
* inputProfile = "http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerDkCoreOrganization"
* outputProfile = "http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerReceivingOrganizationBundle"
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "submitting one or more organizations with SORId would evoke this search operation"
* parameter[=].type = #DkCoreOrganization
* parameter[+].name = #?
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "submitting one or more organizations with SORId would evoke this search operation"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The response is a Bundle of eerOrganization(s) and corresponding EerEndpoint(s) corresponding to the SORID(s) and messagetype(s)"
* parameter[=].type = #EerMedComMessagingOrganization

Profile: EerOperationOutcome
Parent: OperationOutcome

Profile: EerDkCoreOrganization
Parent: DkCoreOrganization

Profile: EerMedComCoreOrganization
Parent: MedComCoreOrganization

Profile: EerMedComMessagingOrganization
Parent: MedComMessagingOrganization


*/