/*
Instance: Map-EerSorOrganization-To-EerMessagingOrganization
InstanceOf: StructureMap
Usage: #definition

* url = "http://medcomehmi.dk/ig/eer/StructureMap/Map-EerSorOrganization-To-EerMessagingOrganization"
* name = "MapEerSorOrganizationToEerMessagingOrganization"
* status = #active

* structure[0].url = "http://hl7.org/fhir/StructureDefinition/Organization"
* structure[0].mode = #source
* structure[0].alias = "src"

* structure[1].url = "http://hl7.org/fhir/StructureDefinition/Organization"
* structure[1].mode = #target
* structure[1].alias = "tgt"

* group[0].name = SOR_to_Messaging
* group[0].typeMode = sourceAndTarget

* group[0].input[0].name = src
* group[0].input[0].type = Eer.Sor.Organization
* group[0].input[0].mode = source

* group[0].input[1].name = tgt
* group[0].input[1].type = Eer.Messaging.Organization
* group[0].input[1].mode = target

* group[0].rule[0].name = copyIdentifier
* group[0].rule[0].source[0].context = src
* group[0].rule[0].source[0].element = identifier
* group[0].rule[0].target[0].context = tgt
* group[0].rule[0].target[0].element = identifier
* group[0].rule[0].target[0].transform = #copy

* group[0].rule[1].name = copyName
* group[0].rule[1].source[0].context = src
* group[0].rule[1].source[0].element = name
* group[0].rule[1].target[0].context = tgt
* group[0].rule[1].target[0].element = name
* group[0].rule[1].target[0].transform = #copy

* group[0].rule[2].name = copyAddress
* group[0].rule[2].source[0].context = src
* group[0].rule[2].source[0].element = address
* group[0].rule[2].target[0].context = tgt
* group[0].rule[2].target[0].element = address
* group[0].rule[2].target[0].transform = #copy

* group[0].rule[3].name = copyTelecom
* group[0].rule[3].source[0].context = src
* group[0].rule[3].source[0].element = telecom
* group[0].rule[3].target[0].context = tgt
* group[0].rule[3].target[0].element = telecom
* group[0].rule[3].target[0].transform = #copy

* group[0].rule[4].name = copyPartOf
* group[0].rule[4].source[0].context = src
* group[0].rule[4].source[0].element = partOf
* group[0].rule[4].target[0].context = tgt
* group[0].rule[4].target[0].element = partOf
* group[0].rule[4].target[0].transform = #copy
*/