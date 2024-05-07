Profile: EerDeviceDefinition
Parent: DeviceDefinition
Description: "An EER profile of the DeviceDefinition resource."
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
Description: "An EerDeviceDefinition-EUA profile of the EerDeviceDefinition resource."
//* type =  $EerDeviceType#EUA "End User Application"

Profile: EerDeviceDefinitionLPS
Parent: EerDeviceDefinitionEUA
Description: "An EerDeviceDefinition-LPS profile of the EerDeviceDefinition resource."
* type =  $EerDeviceType#LPS "General Practitioner System"

Profile: EerDeviceDefinitionEOJ
Parent: EerDeviceDefinitionEUA
Description: "An EerDeviceDefinition-EOJ profile of the EerDeviceDefinition resource."
* type = $EerDeviceType#EOJ "Electronical Homecare Journal"

Profile: EerDeviceDefinitionMSH
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-MSH profile of the EerDeviceDefinition resource."
* type =  $EerDeviceType#MSH "Message Service Handler"

Profile: EerDeviceDefinitionEAP
Parent: EerDeviceDefinition
Description: "An EerDeviceDefinition-EAP profile of the EerDeviceDefinition resource."
* type =  $EerDeviceType#EAP "eDelivery Access Point"

