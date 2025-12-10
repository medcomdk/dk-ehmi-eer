Instance: CopyOrganizationToOrganization
InstanceOf: StructureMap
Title: "Copy Organization to Organization"
Description: "Simple StructureMap that copies all fields from one Organization to another"
Usage: #definition

* url = "http://medcomehmi.dk/ig/eer/StructureMap/CopyOrganizationToOrganization"
* name = "CopyOrganizationToOrganization"
* status = #active

* structure[0].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/Organization"
* structure[=].mode = #source
* structure[=].alias = "source"
* structure[+].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/Organization"
* structure[=].mode = #target
* structure[=].alias = "target"

* group[0].name = "CopyOrgDetailed"
* group.typeMode = #types
* group.input[0].name = "src"
* group.input[=].type = "Organization"
* group.input[=].mode = #source
* group.input[+].name = "tgt"
* group.input[=].type = "Organization"
* group.input[=].mode = #target

// ---- Identifier (complex datatype)
* group[0].rule[0].name = "copyIdentifier"
* group[0].rule[0].source[0].context = "src"
* group[0].rule[0].source[0].element = "identifier"
* group[0].rule[0].target[0].context = "tgt"
* group[0].rule[0].target[0].element = "identifier"
* group[0].rule[0].target[0].transform = #copy

// ---- active (boolean)
* group[0].rule[1].name = "copyActive"
* group[0].rule[1].source[0].context = "src"
* group[0].rule[1].source[0].element = "active"
* group[0].rule[1].target[0].context = "tgt"
* group[0].rule[1].target[0].element = "active"
* group[0].rule[1].target[0].transform = #copy

// ---- type (CodeableConcept)
* group[0].rule[2].name = "copyType"
* group[0].rule[2].source[0].context = "src"
* group[0].rule[2].source[0].element = "type"
* group[0].rule[2].target[0].context = "tgt"
* group[0].rule[2].target[0].element = "type"
* group[0].rule[2].target[0].transform = #copy

// ---- name (string)
* group[0].rule[3].name = "copyName"
* group[0].rule[3].source[0].context = "src"
* group[0].rule[3].source[0].element = "name"
* group[0].rule[3].target[0].context = "tgt"
* group[0].rule[3].target[0].element = "name"
* group[0].rule[3].target[0].transform = #copy

// ---- alias (string[])
* group[0].rule[4].name = "copyAlias"
* group[0].rule[4].source[0].context = "src"
* group[0].rule[4].source[0].element = "alias"
* group[0].rule[4].target[0].context = "tgt"
* group[0].rule[4].target[0].element = "alias"
* group[0].rule[4].target[0].transform = #copy

// ---- address (Address[])
* group[0].rule[5].name = "copyAddress"
* group[0].rule[5].source[0].context = "src"
* group[0].rule[5].source[0].element = "address"
* group[0].rule[5].target[0].context = "tgt"
* group[0].rule[5].target[0].element = "address"
* group[0].rule[5].target[0].transform = #copy

// ---- contact (Backbone element)
* group[0].rule[6].name = "copyContact"
* group[0].rule[6].source[0].context = "src"
* group[0].rule[6].source[0].element = "contact"
* group[0].rule[6].target[0].context = "tgt"
* group[0].rule[6].target[0].element = "contact"
* group[0].rule[6].target[0].transform = #copy

// ---- partOf (Reference)
* group[0].rule[7].name = "copyPartOf"
* group[0].rule[7].source[0].context = "src"
* group[0].rule[7].source[0].element = "partOf"
* group[0].rule[7].target[0].context = "tgt"
* group[0].rule[7].target[0].element = "partOf"
* group[0].rule[7].target[0].transform = #copy

// ---- telecom (ContactPoint[])
* group[0].rule[8].name = "copyTelecom"
* group[0].rule[8].source[0].context = "src"
* group[0].rule[8].source[0].element = "telecom"
* group[0].rule[8].target[0].context = "tgt"
* group[0].rule[8].target[0].element = "telecom"
* group[0].rule[8].target[0].transform = #copy

// ---- endpoint (Reference[])
* group[0].rule[9].name = "copyEndpoint"
* group[0].rule[9].source[0].context = "src"
* group[0].rule[9].source[0].element = "endpoint"
* group[0].rule[9].target[0].context = "tgt"
* group[0].rule[9].target[0].element = "endpoint"
* group[0].rule[9].target[0].transform = #copy
