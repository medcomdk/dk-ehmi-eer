Profile: EerEndpointDeviceDefinition
Parent: DeviceDefinition
Description: "An EER profile of the DeviceDefinition resource."
* identifier 1..1 MS 
* udiDeviceIdentifier 0..0
//* manufacturerString 1..1 MS // bør være manufacturerReference, men for nu ok
// * manufacturerReference
//* deviceName 1..1
//* deviceName.name MS 
//* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name "Manufacturer name" (exactly)
* type from EerDeviceTypeVS 
* type 1..1 MS 
//* specialization.systemType 1..1 MS 

Profile: EerEndpointDeviceDefinitionAP
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-EOJ profile of the EerEndpointDeviceDefinition resource."
* type = EerDeviceType#AP "eDelivery Access Point" (exactly)

Profile: EerEndpointDeviceDefinitionMSH
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-EOJ profile of the EerEndpointDeviceDefinition resource."
* type = EerDeviceType#MSH "Message Service Handler" (exactly)

Profile: EerEndpointDeviceDefinitionEUA
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-EOJ profile of the EerEndpointDeviceDefinition resource."
* type = EerDeviceType#EUA "End User Application" (exactly)

/*
Profile: EerEndpointDeviceDefinitionLPS
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-LPS profile of the EerEndpointDeviceDefinition resource."
* type =  http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/eer-device-type#LPS "General Practitioner System"

Profile: EerEndpointDeviceDefinitionEOJ
Parent: EerEndpointDeviceDefinition
Description: "An EerEndpointDeviceDefinition-EOJ profile of the EerEndpointDeviceDefinition resource."
* type = EerDeviceType#EOJ "EOJ"
*/