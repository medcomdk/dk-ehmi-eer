Profile: EerDeviceDefinition
Parent: DeviceDefinition
Id:     EER.DeviceDefinition
Title:  "EER DeviceDefinition for General Devices"
Description: "An EHMI profile of the EerDeviceDefinition resource."
* identifier 1..1 MS 
* manufacturerString 1..1 MS // bør være manufacturerReference, men for nu ok
// * manufacturerReference
* deviceName 1..1
* deviceName.name MS 
* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name "Manufacturer name" (exactly)
* type from $EerDeviceTypeVS 
* type 1..1 MS 
* specialization.systemType 1..1 MS 
* udiDeviceIdentifier 0..0
* material 0..0
* safety 0..0
* physicalCharacteristics 0..0
* shelfLifeStorage 0..0


Profile: EerDeviceDefinitionEUA
Parent: EerDeviceDefinition
Id:     EER.DeviceDefinition.EUA
Title:  "EER DeviceDefinition for End User Applications"
Description: "An EHMI profile of the EerDeviceDefinition resource for End User Applications"
//* type =  $EerDeviceType#EUA "End User Application"

Profile: EerDeviceDefinitionEUALPS
Parent: EerDeviceDefinitionEUA
Id:     EER.DeviceDefinition.EUA.LPS
Title:  "EER DeviceDefinition for End User Applications of the LPS type"
Description: "An EHMI profile of the EerDeviceDefinition resource for End User Applications of the LPS type"
* type =  $EerDeviceType#LPS "General Practitioner System"

Profile: EerDeviceDefinitionEUAEOJ
Parent: EerDeviceDefinitionEUA
Id:     EER.DeviceDefinition.EUA.EOJ
Title:  "EER DeviceDefinition for End User Applications of the EOJ type"
Description: "An EHMI profile of the EerDeviceDefinition resource for End User Applications of the EOJ type"
* type = $EerDeviceType#EOJ "Electronical Homecare Journal"

Profile: EerDeviceDefinitionMSH
Parent: EerDeviceDefinition
Id:     EER.DeviceDefinition.MSH
Title:  "EER DeviceDefinition for Message Service Handlers"
Description: "An EHMI profile of the EerDeviceDefinition resource for Message Service Handlers"
* type =  $EerDeviceType#MSH "Message Service Handler"

Profile: EerDeviceDefinitionNetwork
Parent: EerDeviceDefinition
Id:     EER.DeviceDefinition.Network
Title:  "EER DeviceDefinition for Network Applications"
Description: "An EHMI profile of the EerDeviceDefinition resource for Network Applications"
//* type =  $EerDeviceType#EAP "eDelivery Access Point"

Profile: EerDeviceDefinitionEAP
Parent: EerDeviceDefinitionNetwork
Id:     EER.DeviceDefinition.Network.EAP
Title:  "EER DeviceDefinition for Network Applications of the eDelivery Access Point type"
Description: "An EHMI profile of the EerDeviceDefinition resource for Network Applications of the eDelivery Access Point type"
* type =  $EerDeviceType#EAP "eDelivery Access Point"

