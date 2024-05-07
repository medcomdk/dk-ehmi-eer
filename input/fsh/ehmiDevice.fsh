Profile: EerDevice
Parent: Device
Description: "An EHMI profile of the Device resource."
* identifier 1..1
* definition only Reference(EerDeviceDefinition) 1..1
* udiCarrier 0..0
* parent 0..0

Profile: EerDeviceEAP
Parent: EerDevice
Description: "An EerDeviceEAP profile of the EerDevice resource."

Profile: EerDeviceMSH
Parent: EerDevice
Description: "An EerDeviceMSH profile of the EerDevice resource."

Profile: EerDeviceEUA
Parent: EerDevice
Description: "An EerDeviceEUA profile of the EerDevice resource."

