/*Instance: GLN
InstanceOf: NamingSystem
Usage: #definition
* url = "http://terminology.hl7.org/NamingSystem/GLN"
* version = "1.0.0"
* name = "GLN"
* title = "Global Location Number (GLN)"
* status = #active
* kind = #identifier
* date = "2021-12-02T00:00:00-00:00"
* publisher = "GS1"
* contact.name = "GS1;Avenue Louise 326, 1050 Brussels, Belgium"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+1 937 435 3870"
* contact.telecom[+].system = #url
* contact.telecom[=].value = "https://www.gs1.org/gs1-global-office"
* responsible = "GS1"
* description = "Global Location Number (GLN) can be used by companies to identify their locations, giving them complete flexibility to identify any type or level of location required.\r\n\r\nFor more information as to how GLNs are used in healthcare, see a GS1 provided guide located here https://www.gs1.org/docs/healthcare/GLN_Healthcare_Imp_Guide.pdf \r\n\r\nFor additional information regarding the GLN standard refer to the GS1 General Specifications (https://www.gs1.org/standards/barcodes-epcrfid-id-keys/gs1-general-specifications) and for assignment refer to the GS1 GLN Allocation Rules (https://www.gs1.org/1/glnrules/en/).\r\n\r\nGS1 local offices handle all enquiries related to GS1 standards. Please see the list of GS1 offices (https://www.gs1.org/contact/overview) for more information.\r\n\r\nIn relation to the \"Healthcare GLN Implementation Guideline\":\r\n\r\n\"GS1®, under its IP Policy, seeks to avoid uncertainty regarding intellectual property claims by requiring the participants in the Work Group that developed this Healthcare GLN Implementation Guideline to agree to grant to GS1 members a royalty-free licence or a RAND licence to Necessary Claims, as that term is defined in the GS1 IP Policy. Furthermore, attention is drawn to the possibility that an implementation of one or more features of this Specification may be the subject of a patent or other intellectual property right that does not involve a Necessary Claim. Any such patent or other intellectual property right is not subject to the licensing obligations of GS1. Moreover, the agreement to grant licences provided under the GS1 IP Policy does not include IP rights and any claims of third parties who were not participants in the Work Group.\r\n\r\nAccordingly, GS1 recommends that any organisation developing an implementation designed to be in conformance with this Specification should determine whether there are any patents that may encompass a specific implementation that the organisation is developing in compliance with the Specification and whether a licence under a patent or other intellectual property right is needed. Such a determination of a need for licencing should be made in view of the details of the specific system designed by the organisation in consultation with their own patent counsel.\"\r\n\r\n\"GS1 disclaims all liability for any damages arising from use or misuse of this document, whether special, indirect, consequential, or compensatory damages, and including liability for infringement of any intellectual property rights, relating to use of information in or reliance upon this document.\"\r\n\r\nGS1 and the GS1 logo are registered trademarks of GS1 AISBL."
* uniqueId[0].type = #oid
* uniqueId[=].value = "1.3.88"
* uniqueId[=].preferred = true
* uniqueId[+].type = #uri
* uniqueId[=].value = "http://www.gs1.org/gln"
* uniqueId[=].preferred = true
* uniqueId[=].period.start = "2021-12-02"
*/
Profile: GLN_Identifier
Parent: Identifier
Id: dk-medcom-eer-gln-identifier
Title: "GLN Identifier"
Description: "Identifier holding a 13 digit GLN"
* ^url = "http://medcomehmi.dk/ig/eer/StructureDefinition/dk-medcom-eer-gln-identifier"
* ^version = "1.1.0"
* ^status = #draft
* ^date = "2025-12-01T23:15:40+01:00"
* use = #official (exactly)
* system 1..
* system = "http://www.gs1.org/gln" (exactly)
* value 1..
* value obeys gln-length and gln-modulus-10

Invariant: gln-length
Description: "GLN must be exactly 13 characters long"
* severity = #error
* expression = "value.matches('^[0-9]{13}$')"

Invariant: gln-modulus-10
Description: "GLN must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
* severity = #warning //should be error but for now ony a warning
* expression = "((\n    (value.substring(0,1).toInteger()*1)+\n    (value.substring(1,1).toInteger()*3)+\n    (value.substring(2,1).toInteger()*1)+\n    (value.substring(3,1).toInteger()*3)+\n    (value.substring(4,1).toInteger()*1)+\n    (value.substring(5,1).toInteger()*3)+\n    (value.substring(6,1).toInteger()*1)+\n    (value.substring(7,1).toInteger()*3)+\n    (value.substring(8,1).toInteger()*1)+\n    (value.substring(9,1).toInteger()*3)+\n    (value.substring(10,1).toInteger()*1)+\n    (value.substring(11,1).toInteger()*3)\n    ) mod(10)+value.substring(12,1).toInteger()=10)"