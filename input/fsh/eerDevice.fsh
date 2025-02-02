Profile: EerDevice
Parent: Device
Title: "EER Device - General"
Description: "An EHMI profile of the Device resource."
* udiCarrier 0..0 
* identifier 1..1 MS
* definition 1..1 MS
* status 1..1 MS
* manufacturer 1..1 MS
* lotNumber 0..0
* serialNumber 0..0
* deviceName 1..1 MS
* modelNumber 0..0
* partNumber 0..0
* type 0..0 
* specialization 0..0
* property 0..0
* patient 0..0
* owner MS
* contact 0..0
* location 0..0
* url 0..0
* safety 0..0
* parent 0..0

Profile: EerDeviceAP
Parent: EerDevice
Title: "EER Device - AP"
Description: "An EerDeviceAP profile of the EerDevice resource."
//* definition = Reference(EerDeviceDefinitionAP)

Profile: EerDeviceMSH
Parent: EerDevice
Title: "EER Device - MSH"
Description: "An EerDeviceMSH profile of the EerDevice resource."
//* definition = Reference(EerDeviceDefinitionMSH)

Profile: EerDeviceEUA
Parent: EerDevice
Title: "EER Device - EUA"
Description: "An EerDeviceEUA profile of the EerDevice resource."
//* definition = Reference(EerDeviceDefinitionEUA)
