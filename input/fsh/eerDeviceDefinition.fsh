Profile: EerDeviceDefinition
Parent: DeviceDefinition
Description: "An EER profile of the DeviceDefinition resource."
* identifier 1..1 MS 
* udiDeviceIdentifier 0..0
* manufacturerString 1..1 MS // bør være manufacturerReference, men for nu ok
// * manufacturerReference
* deviceName 1..1
* deviceName.name MS 
* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name "Manufacturer name" (exactly)
* type from EerDeviceTypeVS 
* type 1..1 MS 
* specialization.systemType 1..1 MS 

Profile: EerDeviceDefinitionAP
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = EerDeviceType#AP "AP"

Profile: EerDeviceDefinitionMSH
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = EerDeviceType#MSH "MSH"

Profile: EerDeviceDefinitionEUA
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = EerDeviceType#EUA "EUA"

/*
Profile: EerDeviceDefinitionLPS
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-LPS profile of the EerDeviceDefinition resource."
* type =  http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/eer-device-type#LPS "General Practitioner System"

Profile: EerDeviceDefinitionEOJ
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = EerDeviceType#EOJ "EOJ"
*/