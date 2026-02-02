Extension: EerEUASystemExtension
Id: eer-dk-eua-system-extension
Title: "EER System Extension - EUA"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
Context: Organization
* value[x] 0.. 
* value[x] only Reference(EerDevice)
* obeys eer-eua-type-requirement

Invariant: eer-eua-type-requirement
Description: "The referenced EerDevice SHALL be of type EUA."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'EUA').exists()"

Extension: EerMSHSystemExtension
Id: eer-dk-msh-system-extension
Title: "EER System Extension - MSH"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses
This is equivalent to the SOR-element"
//Context: "Organization and Endpoint"
* value[x] 0.. 
* value[x] only Reference(EerDevice) 
* obeys eer-msh-type-requirement

Invariant: eer-msh-type-requirement
Description: "The referenced EerDevice SHALL be of type MSH."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'MSH').exists()"

Extension: EerAPSystemExtension
Id: eer-dk-ap-system-extension
Title: "EER System Extension - AP"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses"
Context: "Endpoint"
* value[x] 0.. 
* value[x] only Reference(EerDevice)
* obeys eer-ap-type-requirement

Invariant: eer-ap-type-requirement
Description: "The referenced EerDevice SHALL be of type AP."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'AP').exists()"