Profile: EerDeviceDefinition
Parent: DeviceDefinition
Title: "EER DeviceDefinition"
Description: "An EER profile of the DeviceDefinition resource."
* identifier 0..1 MS 
* udiDeviceIdentifier 0..0
* type from $EerDeviceTypeVS 
* type 1..1 MS 

Profile: EerDeviceDefinitionAP
Parent: EerDeviceDefinition
Title: "EER DeviceDefinition - AP"
Description: "An EerDeviceDefinition-AP profile of the EerDeviceDefinition resource."
* type = $EerDeviceTypeCS#AP "eDelivery Access Point" (exactly)

Instance: EerDeviceDefinition4AP
InstanceOf: EerDeviceDefinitionAP
* identifier.value = "EerDeviceDefinition4AP"

Profile: EerDeviceDefinitionMSH
Parent: EerDeviceDefinition
Title: "EER DeviceDefinition - MSH"
Description: "An EerDeviceDefinition-MSH profile of the EerDeviceDefinition resource."
* type = $EerDeviceTypeCS#MSH "Message Service Handler" (exactly)

Instance: EerDeviceDefinition4MSH
InstanceOf: EerDeviceDefinitionMSH
* identifier.value = "EerDeviceDefinition4MSH"

Profile: EerDeviceDefinitionEUA
Parent: EerDeviceDefinition
Title: "EER DeviceDefinition - EUA"
Description: "An EerDeviceDefinition-EUA profile of the EerDeviceDefinition resource."
* type = $EerDeviceTypeCS#EUA "End User Application" (exactly)

Instance: EerDeviceDefinition4EUA
InstanceOf: EerDeviceDefinitionEUA
* identifier.value = "EerDeviceDefinition4EUA"

/*
Profile: EerDeviceDefinitionLPS
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-LPS profile of the EerDeviceDefinition resource."
* type =  http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/eer-device-type#LPS "General Practitioner System"

Profile: EerDeviceDefinitionEOJ
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = $EerDeviceTypeCS#EOJ "EOJ"
*/