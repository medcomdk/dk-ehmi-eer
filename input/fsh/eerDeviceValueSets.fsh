CodeSystem: EerDeviceType
Id: eer-device-type
Title: "EER-Device-Type CodeSystem"
Description: "CodeSystem containing codes for EER-Device-Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2024-02-01"
* ^experimental = true
* ^caseSensitive = true
* #EUA "End User Application" "EUA"
  * #EOJ "Electronical Homecare Journal" "EOJ"
  * #LPS "General Practitioner System" "LPS"
  * #EHR "Electronical Healthcare Record" "EHR"
* #MIDDLEWARE "eDelivery Access Point" "MIDDLEWARE"
  * #MSH "Message Service Handler" "MSH"
  * #EAP "eDelivery Access Point" "EAP"
  * #VANS "VANS Access Point" "VANS"


ValueSet: EerDeviceTypeVS
Id: eer-device-type-valueset
Title: "EER SOR Organization Identier Type Valueset"
Description: "ValueSet containing codes for EER-Device-Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-device-type

