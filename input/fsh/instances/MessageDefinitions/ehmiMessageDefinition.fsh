Profile: EHMIMessageDefinition
Parent: MessageDefinition
Description: "An example profile of the MessageDefinition resource."
//* url from ehmi-medcom-message-definition-uri-valueset
* identifier 1..1 MS SU
//* identifier.system from ehmi-medcom-message-definition-uri-valueset
* identifier.system from ehmi-messagedefinition-identifer-system-valueset
* identifier.system 1..1 //MS SU
//* identifier.system = $EHMIMessageDefinitionIdentifierSystem#MedCom
* identifier.period.start 1..1 MS SU
* identifier.period.end 0..1 MS SU
* identifier.type from ehmi-medcom-message-definition-type-valueset
* identifier.type 1..1 MS SU
* identifier.use 1..1 MS SU
* identifier.value 1..1 MS SU
* version 1..1 MS SU
* name 1..1 MS SU
* title 1..1 MS SU
* replaces.value 0..1 MS
* publisher 1..1 MS SU
* publisher = "MedCom, https://www.medcom.dk"
* contact 1.. MS SU
* contact ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = id
  * ^slicing.rules = #open //#closed eller #open 
* contact contains
    InteroperabilityConsultant 1..1 MS SU and
    SubjectMatterExpert 0..1 MS SU
// InteroperabilityConsultant
* contact[InteroperabilityConsultant].id 1..1 MS
* contact[InteroperabilityConsultant].id = "InteroperabilityConsultant"
* contact[InteroperabilityConsultant].name 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.system 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.system = #email (exactly)
* contact[InteroperabilityConsultant].telecom.use 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.use = #work (exactly)
* contact[InteroperabilityConsultant].telecom.value 1..1 MS SU
// SubjectMatterExpert
* contact[SubjectMatterExpert].id 1..1 MS
* contact[SubjectMatterExpert].id = "SubjectMatterExpert"
* contact[SubjectMatterExpert].name 1..1 MS SU
* contact[SubjectMatterExpert].telecom.system 1..1 MS SU
* contact[SubjectMatterExpert].telecom.system = #email (exactly)
* contact[SubjectMatterExpert].telecom.use 1..1 MS SU
* contact[SubjectMatterExpert].telecom.use = #work (exactly)
* contact[SubjectMatterExpert].telecom.value 1..1 MS SU
//* description 1..1 MS SU
//* description only valueMarkdown 
//* description.valueMarkdown = "Natural language description of the message definition" 
//* useContext 1..1 MS SU
//* useContext = "Message Context"
* useContext.code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type" (exactly)
* jurisdiction 1..1 MS SU
* jurisdiction = #DK
* category 1..1 MS SU
* category = #notification (exactly)
* responseRequired 1..1 MS 
* responseRequired = #always (exactly)
