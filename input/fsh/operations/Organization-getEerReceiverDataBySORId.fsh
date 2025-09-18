Instance: GetEerReceiverDataBySORId
InstanceOf: OperationDefinition
Description: "Look up receiver data by SOR IDs and message types"
Usage: #definition
* url = "http://medcomehmi.dk/ig/eas/OperationDefinition/GetEerReceiverDataBySORId"
* name = "GetEerReceiverDataBySORId"
* status = #active
* kind = #operation
* affectsState = false
* code = #getEerReceiverDataBySORId
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #sorId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "SOR identifier"
* parameter[=].type = #string
* parameter[+].name = #messageType
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Message types"
* parameter[=].type = #string
* parameter[+].name = #organization
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Result organizations"
* parameter[=].type = #Organization
* parameter[=].targetProfile[+] = Canonical(http://medcomehmi.dk/ig/eer/StructureDefinition/Eer.Messaging.Organization)
