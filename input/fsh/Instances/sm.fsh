Instance: MCSDOrganizationToFHIRMapManual
InstanceOf: StructureMap
Usage: #definition

// --- Metadata (Standard FSH) ---
* url = "example.org"
* name = "MCSDOrganizationToFHIRMapManual"
* status = #draft
* description = "Explicit definition of StructureMap using * syntax for every element (Rettet V4)."

// --- Eksplicit definition af Strukturer (Source/Target) med * ---
* structure[+].url = "example.org"
* structure[=].mode = #source
* structure[=].alias = "mc" 

* structure[+].url = "hl7.org"
* structure[=].mode = #target
* structure[=].alias = "f" 

// --- Eksplicit definition af Grupper og Regler med * ---

* group[+].name = "OrganizationGroup"
* group[=].typeMode = #none // <-- Rettet kode fra 'type-and-mode' til 'type-only'
* group[=].documentation = "Main group for Organization mapping."

// Kontekster for gruppen (INPUTS).
* group[=].input[+].mode = #source
* group[=].input[=].type = "MCSDOrganization"
* group[=].input[=].name = "kilde-org-input" 

* group[=].input[+].mode = #target
* group[=].input[=].type = "Organization"
* group[=].input[=].name = "maal-org-output" 


// Regler inden for gruppen 
* group[=].rule[+].name = "map-name"
* group[=].rule[=].source[+].context = "mc" 
* group[=].rule[=].source[=].element = "name"
* group[=].rule[=].target[+].context = "f" 
* group[=].rule[=].target[=].element = "name"
* group[=].rule[=].target[=].transform = #copy
