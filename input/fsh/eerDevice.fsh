Profile: EerDevice
Parent: Device
Title: "EER EndpointDevice - General"
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
Title: "EER EndpointDevice - AP"
Description: "An EerDeviceAP profile of the EerDevice resource."
//* definition = Reference(EerEndpointDeviceDefinitionAP)

Profile: EerDeviceMSH
Parent: EerDevice
Title: "EER EndpointDevice - MSH"
Description: "An EerDeviceMSH profile of the EerDevice resource."
//* definition = Reference(EerEndpointDeviceDefinitionMSH)

Profile: EerDeviceEUA
Parent: EerDevice
Title: "EER EndpointDevice - EUA"
Description: "An EerDeviceEUA profile of the EerDevice resource."
//* definition = Reference(EerEndpointDeviceDefinitionEUA)
