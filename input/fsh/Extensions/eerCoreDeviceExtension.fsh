Extension: EerEUASystemExtension
Id: eer-dk-eua-system-extension
Title: "EER System Extension - EUA"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
* value[x] 0.. 
* value[x] only Reference(EerDeviceEUA) 

Extension: EerMSHSystemExtension
Id: eer-dk-msh-system-extension
Title: "EER System Extension - MSH"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
* value[x] 0.. 
* value[x] only Reference(EerDeviceMSH) 

Extension: EerCoreNetworkSupplySystemExtension
Id: eer-dk-network-supply-system-extension
Title: "EER System Extension - AP"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses"
* value[x] 0.. 
* value[x] only Reference(EerDeviceAP) 