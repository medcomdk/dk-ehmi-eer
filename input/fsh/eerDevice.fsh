Profile: EerDevice
Parent: Device
Id:     EER.Device
Title:  "EER Device"
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
Id:     EER.Device.AP
Title:  "EER Device for eDelivery Access Points (EAP)"
Description: "An EHMI profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionEAP) 

Profile: EerDeviceMSH
Parent: EerDevice
Id:     EER.Device.MSH
Title:  "EER Device for Message Service Handlers (MSH)"
Description: "An EHMI profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionMSH) 

Profile: EerDeviceEUA
Parent: EerDevice
Id:     EER.Device.EUA
Title:  "EER Device for End USer Applications (EUA)"
Description: "An EHMI profile of the EerDevice resource."
* definition only Reference(EerDeviceDefinitionEUA) 

