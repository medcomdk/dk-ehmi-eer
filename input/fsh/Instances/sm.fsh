Instance: Map-EerSorOrganization-To-EerMessagingOrganization
InstanceOf: StructureMap
Title: "Copy Organization to Organization"
Description: "Simple StructureMap that copies all fields from one Organization to another"
Usage: #definition
* url = "http://medcomehmi.dk/ig/eer/StructureMap/Map-EerSorOrg-To-EerMessagingOrg"
* name = "MapOrgToOrg"
* status = #active

* structure[0].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/Eer.Sor.Organization"
* structure[=].mode = #source
* structure[=].alias = "source"
* structure[+].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/Eer.Messaging.Organization"
* structure[=].mode = #target
* structure[=].alias = "target"

* group.name = "MapEerSorOrganizationToMessagingOrganization"
* group.typeMode = #types
* group.input[0].name = "src"
* group.input[=].type = "Organization"
* group.input[=].mode = #source
* group.input[+].name = "tgt"
* group.input[=].type = "Organization"
* group.input[=].mode = #target

* group.rule[0].name = "CreateMessagingOrganization"
* group.rule[=].source.context = "src"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.transform = #create
* group.rule[=].target.parameter.valueString = "Organization"

* group.rule[+].name = "SetProfile"
* group.rule[=].source.context = "src"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "meta.profile"
* group.rule[=].target.transform = #append
* group.rule[=].target.parameter.valueString = "http://medcomehmi.dk/ig/eer/StructureDefinition/Eer.Messaging.Organization"

* group.rule[+].name = "CopySORIdentifier"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "identifier"
* group.rule[=].source.variable = "id"
* group.rule[=].source.condition = "id.system = 'http://ehealth.sundhed.dk/fhir/NamingSystem/sor'"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "identifier"
* group.rule[=].target.transform = #append
* group.rule[=].target.parameter.valueString = "id"

* group.rule[+].name = "CopyGLNIdentifier"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "identifier"
* group.rule[=].source.variable = "id"
* group.rule[=].source.condition = "id.system = 'urn:oid:1.2.208.176.1.1'"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "identifier"
* group.rule[=].target.transform = #append
* group.rule[=].target.parameter.valueString = "id"

* group.rule[+].name = "CopyName"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "name"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "name"
* group.rule[=].target.transform = #copy

* group.rule[+].name = "CopyTelecom"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "telecom"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "telecom"
* group.rule[=].target.transform = #copy

* group.rule[+].name = "CopyAddress"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "address"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "address"
* group.rule[=].target.transform = #copy