Profile: EerDeviceDefinition
Parent: DeviceDefinition
Description: "An EER profile of the DeviceDefinition resource."
* identifier 1..1 MS 
* manufacturerString 1..1 MS // bør være manufacturerReference, men for nu ok
// * manufacturerReference
* deviceName 1..1
* deviceName.name MS 
* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name "Manufacturer name" (exactly)
* type from EerDeviceTypeVS 
* type 1..1 MS 
* specialization.systemType 1..1 MS 

Profile: EerDeviceDefinitionLPS
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-LPS profile of the EerDeviceDefinition resource."
* type =  http://medcomehmi.dk/ig/dk-ehmi-eer/CodeSystem/eer-device-type#LPS "General Practitioner System"

Profile: EerDeviceDefinitionEOJ
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = EerDeviceType#EOJ "Electronical Homecare Journal"
