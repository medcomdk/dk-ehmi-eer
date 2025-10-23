Profile: EerMessageDefinition
Parent: MessageDefinition
Title: "EER MessageDefinition"
Description: "A profile of the MessageDefinition resource."
* identifier 1..1 MS SU
* identifier.system from $EerMessagedefinitionIdentiferSystemVS
* identifier.system 1..1 //MS SU
* identifier.period.start 1..1 MS SU
* identifier.period.end 0..1 MS SU
* identifier.type from $EerMedComMessageDefinitionTypeVS
* identifier.type 1..1 MS SU
* identifier.type.coding.system = $EerMedComMessageDefinitionType
* identifier.use 1..1 MS SU
* identifier.value 1..1 MS SU
* version 1..1 MS SU
* title 1..1 MS SU
* replaces.value 0..1 MS
* publisher 0..1 MS SU
* publisher = "MedCom, https://www.medcom.dk"
* contact 1.. MS SU
* contact ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = id
  * ^slicing.rules = #open
* contact contains
    InteroperabilityConsultant 1..1 MS SU and
    SubjectMatterExpert 0..1 MS SU
* contact[InteroperabilityConsultant].id 1..1 MS
* contact[InteroperabilityConsultant].id = "InteroperabilityConsultant"
* contact[InteroperabilityConsultant].name 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.system 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.use 1..1 MS SU
* contact[InteroperabilityConsultant].telecom.use = #work
* contact[InteroperabilityConsultant].telecom.value 1..1 MS SU

* contact[SubjectMatterExpert].id 1..1 MS
* contact[SubjectMatterExpert].id = "SubjectMatterExpert"
* contact[SubjectMatterExpert].name 1..1 MS SU
* contact[SubjectMatterExpert].telecom.system 1..1 MS SU
* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.use 1..1 MS SU
* contact[SubjectMatterExpert].telecom.use = #work
* contact[SubjectMatterExpert].telecom.value 1..1 MS SU
* useContext.code.system = $EerUsageContextCodeSystem
* useContext.code from $EerUsageContextCodeSystemVS
* jurisdiction 1..1 MS SU
* jurisdiction = #DK
* category 1..1 MS SU
* category = #notification
* responseRequired 1..1 MS 
