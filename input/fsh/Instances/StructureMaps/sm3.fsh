Instance: CopyOrganizationToEerOrganization
InstanceOf: StructureMap
Title: "Copy Organization to EerMessagingOrganization"
Description: "Simple StructureMap that copies all fields from one Organization to another"
Usage: #definition

* url = "http://medcomehmi.dk/ig/eer/StructureMap/CopyOrganizationToEerOrganization"
* name = "CopyOrganizationToOrganization"
* status = #active


* group[0].name = "CopyOrgDetailed"
* group.typeMode = #types
* group.input[0].name = "src"
* group.input[=].type = "Organization"
* group.input[=].mode = #source
* group.input[+].name = "tgt"
* group.input[=].type = "Organization"
* group.input[=].mode = #target

/*
* group[0].rule[0].name = "copyMeta"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "meta"
* group[0].rule[=].source.variable = "m"
* group[0].rule[=].target[0].context = "tgt"
* group[0].rule[=].target[=].element = "meta"
* group[0].rule[=].target[=].transform = #create
* group[0].rule[=].target[=].parameter.valueString = "string"
* group[0].rule[=].target[+].context = "tgt"
* group[0].rule[=].target[=].element = "meta"
* group[0].rule[=].target[=].transform = #copy
* group[0].rule[=].target[=].parameter.valueId = "m"
* group[0].rule[=].rule[0].name = "r0"
* group[0].rule[=].rule[=].source.context = "prof"
* group[0].rule[=].rule[=].source.element = "profile"
* group[0].rule[=].rule[=].source.variable = "p"
* group[0].rule[=].rule[=].target.context = "prof"
* group[0].rule[=].rule[=].target.element = "profile"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "p"
*/

* group[0].rule[0].name = "copyMeta"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "meta"
* group[0].rule[=].target[0].context = "tgt"
* group[0].rule[=].target[=].element = "meta"
* group[0].rule[=].target[=].transform = #copy
* group[0].rule[=].target[=].parameter[0].valueString = "http://medcomehmi.dk/ig/eer/StructureDefinition/eer.dk.endpoint.messaging"

* group[0].rule[+].name = "copyName"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "name"
* group[0].rule[=].source.variable = "n"
* group[0].rule[=].target[0].context = "tgt"
* group[0].rule[=].target[=].element = "name"
* group[0].rule[=].target[=].transform = #create
* group[0].rule[=].target[=].parameter.valueString = "string"
* group[0].rule[=].target[+].context = "tgt"
* group[0].rule[=].target[=].element = "name"
* group[0].rule[=].target[=].transform = #copy
* group[0].rule[=].target[=].parameter.valueId = "n"

* group[0].rule[+].name = "copyActive"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "active"
* group[0].rule[=].source.variable = "a"
* group[0].rule[=].target[0].context = "tgt"
* group[0].rule[=].target[=].element = "active"
* group[0].rule[=].target[=].transform = #create
* group[0].rule[=].target[=].parameter.valueString = "boolean"
* group[0].rule[=].target[+].context = "tgt"
* group[0].rule[=].target[=].element = "active"
* group[0].rule[=].target[=].transform = #copy
* group[0].rule[=].target[=].parameter.valueId = "a"

* group[0].rule[+].name = "copyIdentifier"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "identifier"
* group[0].rule[=].source.variable = "sid"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "identifier"
* group[0].rule[=].target.variable = "tid"
* group[0].rule[=].target.transform = #create
* group[0].rule[=].target.parameter.valueString = "Identifier"
* group[0].rule[=].rule[0].name = "r0"
* group[0].rule[=].rule[=].source.context = "sid"
* group[0].rule[=].rule[=].source.element = "system"
* group[0].rule[=].rule[=].source.variable = "s"
* group[0].rule[=].rule[=].target.context = "tid"
* group[0].rule[=].rule[=].target.element = "system"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "s"
* group[0].rule[=].rule[+].name = "r1"
* group[0].rule[=].rule[=].source.context = "sid"
* group[0].rule[=].rule[=].source.element = "value"
* group[0].rule[=].rule[=].source.variable = "v"
* group[0].rule[=].rule[=].target.context = "tid"
* group[0].rule[=].rule[=].target.element = "value"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "v"

* group[0].rule[+].name = "copyType"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "type"
* group[0].rule[=].source.variable = "st"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "type"
* group[0].rule[=].target.variable = "tt"
* group[0].rule[=].target.transform = #create
* group[0].rule[=].target.parameter.valueString = "CodeableConcept"
* group[0].rule[=].rule[0].name = "CopyTypeR0"
* group[0].rule[=].rule[=].source.context = "st"
* group[0].rule[=].rule[=].source.element = "coding"
* group[0].rule[=].rule[=].source.variable = "sc"
* group[0].rule[=].rule[=].target.context = "tt"
* group[0].rule[=].rule[=].target.element = "coding"
* group[0].rule[=].rule[=].target.variable = "tc"
* group[0].rule[=].rule[=].target.transform = #create
* group[0].rule[=].rule[=].target.parameter.valueString = "Coding"
* group[0].rule[=].rule[0].rule[0].name = "CopyTypeR0R0"
* group[0].rule[=].rule[=].rule[=].source.context = "sc"
* group[0].rule[=].rule[=].rule[=].source.element = "system"
* group[0].rule[=].rule[=].rule[=].source.variable = "sys"
* group[0].rule[=].rule[=].rule[=].target.context = "tc"
* group[0].rule[=].rule[=].rule[=].target.element = "system"
* group[0].rule[=].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].rule[=].target.parameter.valueId = "sys"
* group[0].rule[=].rule[0].rule[+].name = "CopyTypeR0R1"
* group[0].rule[=].rule[=].rule[=].source.context = "sc"
* group[0].rule[=].rule[=].rule[=].source.element = "code"
* group[0].rule[=].rule[=].rule[=].source.variable = "code"
* group[0].rule[=].rule[=].rule[=].target.context = "tc"
* group[0].rule[=].rule[=].rule[=].target.element = "code"
* group[0].rule[=].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].rule[=].target.parameter.valueId = "code"

/*
* group[0].rule[+].name = "copyAddress"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "address"
* group[0].rule[=].source.variable = "sa"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "address"
* group[0].rule[=].target.variable = "ta"
* group[0].rule[=].target.transform = #create
* group[0].rule[=].target.parameter.valueString = "Address"
* group[0].rule[=].rule[0].name = "copyAddressR0"
* group[0].rule[=].rule[=].source.context = "sa"
* group[0].rule[=].rule[=].source.element = "text"
* group[0].rule[=].rule[=].source.variable = "t"
* group[0].rule[=].rule[=].target.context = "ta"
* group[0].rule[=].rule[=].target.element = "text"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "t"
*/
/*
* group[0].rule[+].name = "copyTelecom"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "telecom"
* group[0].rule[=].source.variable = "st"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "telecom"
* group[0].rule[=].target.variable = "tt"
* group[0].rule[=].target.transform = #create
* group[0].rule[=].target.parameter.valueString = "ContactPoint"
* group[0].rule[=].rule[0].name = "copyTelecomR0"
* group[0].rule[=].rule[=].source.context = "st"
* group[0].rule[=].rule[=].source.element = "system"
* group[0].rule[=].rule[=].source.variable = "sys"
* group[0].rule[=].rule[=].target.context = "tt"
* group[0].rule[=].rule[=].target.element = "system"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "sys"
* group[0].rule[=].rule[+].name = "copyTelecomR1"
* group[0].rule[=].rule[=].source.context = "st"
* group[0].rule[=].rule[=].source.element = "value"
* group[0].rule[=].rule[=].source.variable = "v"
* group[0].rule[=].rule[=].target.context = "tt"
* group[0].rule[=].rule[=].target.element = "value"
* group[0].rule[=].rule[=].target.transform = #copy
* group[0].rule[=].rule[=].target.parameter.valueId = "v"
*/
/*
* group[0].rule[+].name = "copyPartOf"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "partOf"
* group[0].rule[=].source.variable = "p"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "partOf"
* group[0].rule[=].target.transform = #copy
* group[0].rule[=].target.parameter.valueId = "p"
*/

* group[0].rule[+].name = "copyEndpoint"
* group[0].rule[=].source.context = "src"
* group[0].rule[=].source.element = "endpoint"
* group[0].rule[=].source.variable = "se"
* group[0].rule[=].target.context = "tgt"
* group[0].rule[=].target.element = "endpoint"
* group[0].rule[=].target.transform = #copy
* group[0].rule[=].target.parameter.valueId = "se"