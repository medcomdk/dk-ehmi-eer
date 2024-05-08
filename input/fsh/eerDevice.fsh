Profile: EerDevice
Parent: Device
Description: "An EHMI profile of the Device resource."
* identifier 1..1
* definition 1..1
* definition only Reference(EerDeviceDefinition) 
* status 1..1
* lotNumber 0..0
* serialNumber 0..0
* udiCarrier 0..0
* patient 0..0
* location 0..0
* parent 0..0


Profile: EerDeviceEAP
Parent: EerDevice
Description: "An EerDeviceEAP profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionEAP) 

Profile: EerDeviceMSH
Parent: EerDevice
Description: "An EerDeviceMSH profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionMSH) 

Profile: EerDeviceEUA
Parent: EerDevice
Description: "An EerDeviceEUA profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionEUA) 

