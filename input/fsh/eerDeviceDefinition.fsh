Profile: EerEndpointDeviceDefinition
Parent: DeviceDefinition
Title: "EER EndpointDeviceDefinition"
Description: "An EER profile of the DeviceDefinition resource."
* identifier 0..1 MS 
* udiDeviceIdentifier 0..0
* type from $EerDeviceTypeVS 
* type 1..1 MS 

Profile: EerEndpointDeviceDefinitionAP
Parent: EerEndpointDeviceDefinition
Title: "EER EndpointDeviceDefinition - AP"
Description: "An EerEndpointDeviceDefinition-AP profile of the EerEndpointDeviceDefinition resource."
* type = $EerDeviceTypeCS#AP "eDelivery Access Point" (exactly)

Instance: EerEndpointDeviceDefinition4AP
InstanceOf: EerEndpointDeviceDefinitionAP
* identifier.value = "EerEndpointDeviceDefinition4AP"

Profile: EerEndpointDeviceDefinitionMSH
Parent: EerEndpointDeviceDefinition
Title: "EER EndpointDeviceDefinition - MSH"
Description: "An EerEndpointDeviceDefinition-MSH profile of the EerEndpointDeviceDefinition resource."
* type = $EerDeviceTypeCS#MSH "Message Service Handler" (exactly)

Instance: EerEndpointDeviceDefinition4MSH
InstanceOf: EerEndpointDeviceDefinitionMSH
* identifier.value = "EerEndpointDeviceDefinition4MSH"

Profile: EerEndpointDeviceDefinitionEUA
Parent: EerEndpointDeviceDefinition
Title: "EER EndpointDeviceDefinition - EUA"
Description: "An EerEndpointDeviceDefinition-EUA profile of the EerEndpointDeviceDefinition resource."
* type = $EerDeviceTypeCS#EUA "End User Application" (exactly)

Instance: EerEndpointDeviceDefinition4EUA
InstanceOf: EerEndpointDeviceDefinitionEUA
* identifier.value = "EerEndpointDeviceDefinition4EUA"

/*
Profile: EerEndpointDeviceDefinitionLPS
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-LPS profile of the EerEndpointDeviceDefinition resource."
* type =  http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/eer-device-type#LPS "General Practitioner System"

Profile: EerEndpointDeviceDefinitionEOJ
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-EOJ profile of the EerEndpointDeviceDefinition resource."
* type = $EerDeviceTypeCS#EOJ "EOJ"
*/