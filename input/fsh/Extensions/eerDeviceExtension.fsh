// TODO: Add invariants that test the type of EerDevice that it has to be
Extension: EerEUASystemExtension
Id: eer-dk-eua-system-extension
Title: "EER System Extension - EUA"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
* value[x] 0.. 
* value[x] only Reference(EerDevice) 

Extension: EerMSHSystemExtension
Id: eer-dk-msh-system-extension
Title: "EER System Extension - MSH"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
* value[x] 0.. 
* value[x] only Reference(EerDevice) 

// TODO: Why is this naming so confusing instead of just called it AP? If we decice to rename it we also need 
// TODO: rename the slice in the profiles they are used
Extension: EerCoreNetworkSupplySystemExtension
Id: eer-dk-network-supply-system-extension
Title: "EER System Extension - AP"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses"
* value[x] 0.. 
* value[x] only Reference(EerDevice) 