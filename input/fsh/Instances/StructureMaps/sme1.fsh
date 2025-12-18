Instance: MapEerSorEndpointToMessagingEndpoint
InstanceOf: StructureMap
Title: "Map EER SOR Endpoint to EER Messaging Endpoint"
Description: "Simple StructureMap that copies all fields from one Endpoint to another"
Usage: #definition
//Description: "Extended StructureMap using variables to map EER SOR Endpoint to EER Messaging Endpoint"

* url = "http://medcomehmi.dk/ig/eer/StructureMap/MapEerSorEndpointToMessagingEndpoint"
* name = "MapEerSorEndpointToMessagingEndpoint"
* status = #active

* group.name = "MapEndpoint"
* group.typeMode = #types

// -----------------------------------------------------
// Inputs
// -----------------------------------------------------
* group.input[+].name = "src"
* group.input[=].type = "Endpoint"
* group.input[=].mode = #source
* group.input[+].name = "tgt"
* group.input[=].type = "Endpoint"
* group.input[=].mode = #target

// -----------------------------------------------------
// Meta profile
// -----------------------------------------------------
* group[=].rule[+].name = "copyMeta"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "meta"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].element = "meta"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[0].valueString = "http://medcomehmi.dk/ig/eer/StructureDefinition/eer.dk.endpoint.messaging"

// -----------------------------------------------------
// identifier.value via variabel
// -----------------------------------------------------
/*
* group[=].rule[+].name = "captureIdentifierValue"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source[0].element = "identifier.value"
* group[=].rule[=].source[0].variable = "identifierValue"
* group[=].rule[+].name = "setIdentifierValue"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source[0].variable = "identifierValue"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[0].element = "identifier.value"
* group[=].rule[=].target[0].transform = #copy
*/
* group[=].rule[+].name = "copyIdentifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].source.variable = "sid"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"
* group[=].rule[=].target.variable = "tid"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Identifier"
* group[=].rule[=].rule[0].name = "system"
* group[=].rule[=].rule[=].source.context = "sid"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "s"
* group[=].rule[=].rule[=].target.context = "tid"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "s"
* group[=].rule[=].rule[+].name = "value"
* group[=].rule[=].rule[=].source.context = "sid"
* group[=].rule[=].rule[=].source.element = "value"
* group[=].rule[=].rule[=].source.variable = "v"
* group[=].rule[=].rule[=].target.context = "tid"
* group[=].rule[=].rule[=].target.element = "value"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "v"

// -----------------------------------------------------
// status (code)
// -----------------------------------------------------
* group[=].rule[+].name = "copyStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "status"
* group[=].rule[=].source.variable = "s"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "status"
* group[=].rule[=].target.variable = "t"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueString = "code"

// -----------------------------------------------------
// connectionType (Coding)
// -----------------------------------------------------
* group[=].rule[+].name = "copyConnectionType"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "connectionType"
* group[=].rule[=].source.variable = "sct"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "connectionType"
* group[=].rule[=].target.variable = "tct"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Coding"
* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "sct"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "s"
* group[=].rule[=].rule[=].target.context = "tct"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "s"
* group[=].rule[=].rule[+].name = "code"
* group[=].rule[=].rule[=].source.context = "sct"
* group[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].source.variable = "c"
* group[=].rule[=].rule[=].target.context = "tct"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "c"

// -----------------------------------------------------
// ManagingOrganization (Reference)
// -----------------------------------------------------
* group[=].rule[+].name = "copyManagingOrganization"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "managingOrganization"
* group[=].rule[=].source.variable = "smo"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "managingOrganization"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueId = "smo"

// -----------------------------------------------------
// period (Element/dateTimes)
// -----------------------------------------------------
* group[=].rule[+].name = "copyperiod"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "period"
* group[=].rule[=].source.variable = "sp"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "period"
* group[=].rule[=].target.variable = "tp"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "sp"
* group[=].rule[=].rule[+].name = "start"
* group[=].rule[=].rule[=].source.context = "sp"
* group[=].rule[=].rule[=].source.element = "start"
* group[=].rule[=].rule[=].source.variable = "ss"
* group[=].rule[=].rule[=].target.context = "tp"
* group[=].rule[=].rule[=].target.element = "start"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "ss"
* group[=].rule[=].rule[+].name = "end"
* group[=].rule[=].rule[=].source.context = "sp"
* group[=].rule[=].rule[=].source.element = "end"
* group[=].rule[=].rule[=].source.variable = "se"
* group[=].rule[=].rule[=].target.context = "tp"
* group[=].rule[=].rule[=].target.element = "end"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "se"


// -----------------------------------------------------
// payloadType (CodeableConcept)
// -----------------------------------------------------
* group[=].rule[+].name = "copyPayloadType"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "payloadType"
* group[=].rule[=].source.variable = "spt"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "payloadType"
* group[=].rule[=].target.variable = "tpt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "spt"
* group[=].rule[=].rule[+].name = "copyCoding"
* group[=].rule[=].rule[=].source.context = "spt"
* group[=].rule[=].rule[=].source.element = "coding"
* group[=].rule[=].rule[=].source.variable = "sc"
* group[=].rule[=].rule[=].target.context = "tpt"
* group[=].rule[=].rule[=].target.element = "coding"
* group[=].rule[=].rule[=].target.variable = "tc"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[=].target.parameter.valueString = "sc"
* group[=].rule[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].rule[=].source.context = "sc"
* group[=].rule[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].rule[=].source.variable = "sys"
* group[=].rule[=].rule[=].rule[=].target.context = "tc"
* group[=].rule[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].rule[=].target.parameter.valueString = "sys"
* group[=].rule[=].rule[=].rule[+].name = "code"
* group[=].rule[=].rule[=].rule[=].source.context = "sc"
* group[=].rule[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].rule[=].source.variable = "cde"
* group[=].rule[=].rule[=].rule[=].target.context = "tc"
* group[=].rule[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].rule[=].target.parameter.valueString = "cde"

// -----------------------------------------------------
// payloadMimeType (Code)
// -----------------------------------------------------
* group[=].rule[+].name = "copypayloadMimeType"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "payloadMimeType"
* group[=].rule[=].source.variable = "spmt"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "payloadMimeType"
* group[=].rule[=].target.variable = "tpmt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "spmt"

// -----------------------------------------------------
// copyAddress (string)
// -----------------------------------------------------
* group[=].rule[+].name = "copyAddress"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].source.variable = "sa"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"
* group[=].rule[=].target.variable = "ta"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "sa"

