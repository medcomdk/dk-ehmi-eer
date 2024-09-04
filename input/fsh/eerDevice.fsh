Profile: EerDevice
Parent: Device
Description: "An EHMI profile of the Device resource."
* udiCarrier 0..0 
* definition 1..1 MS
* status 1..1 MS


Profile: EerDeviceAP
Parent: EerDevice
Description: "An EerDeviceAP profile of the EerDevice resource."
* definition 1..1 MS
//* definition = Reference(EerDeviceDefinitionAP)

Profile: EerDeviceMSH
Parent: EerDevice
Description: "An EerDeviceMSH profile of the EerDevice resource."
* definition 1..1 MS
//* definition = Reference(EerDeviceDefinitionMSH)

Profile: EerDeviceEUA
Parent: EerDevice
Description: "An EerDeviceEUA profile of the EerDevice resource."
* definition 1..1 MS
//* definition = Reference(EerDeviceDefinitionEUA)

Instance: EerDeviceAP
InstanceOf: EerDeviceAP
Description: "An EerDeviceAP profile of the EerDevice resource."
* definition = Reference(EerDeviceDefinitionAP)
* status = #active