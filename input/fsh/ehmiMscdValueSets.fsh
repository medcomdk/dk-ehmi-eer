CodeSystem: EHMIEndpointConnectionType
Id: ehmi-connection-type
Title: "EHMI Connection Types CS"
Description: "ehmi-connection-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #eDeliveryMessaging "EHMI messaging via eDelivery"
* #vansMessaging "EHMI messaging"
* #hl7-fhir-msg "hl7-fhir-msg"
* #hl7-fhir-rest "hl7-fhir-rest"
* #ihe-xds "ihe-xds - Cross-domain Document Sharing"

ValueSet: EHMIEndpointConnectionTypeVS
Id: ehmi-connection-type-valueset
Title: "EHMI connection Types Valueset"
Description: "ValueSet containing codes for EHMI connectionTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-connection-type
//* include #hl7-fhir-msg from system $mCSDEndpointConnectionType
//* include #hl7-fhir-rest from system $mCSDEndpointConnectionType
//* include #ihe-xds from system $mCSDEndpointConnectionType

CodeSystem: EHMIEndpointPayloadType
Id: ehmi-payload-type
Title: "EHMI Payload Types CS"
Description: "ehmi-payload-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #urn:dk:medcom:edelivery:messaging:fhir "MedCom FHIR message on eDelivery"
* #urn:dk:medcom:vans:messaging:fhir "MedCom FHIR message on VANS"
* #urn:dk:medcom:edelivery:messaging:edi "MedCom edi message on eDelivery"
* #urn:dk:medcom:vans:messaging:edi "MedCom edi message on VANS"
* #urn:dk:medcom:edelivery:messaging:oioxml "MedCom oioxml message on eDelivery"
* #urn:dk:medcom:vans:messaging:oioxml "MedCom oioxml message on VANS"

ValueSet: EHMIEndpointPayloadTypeVS
Id: ehmi-payload-type-valueset
Title: "EHMI payload Types Valueset"
Description: "ValueSet containing codes for EHMI payloadTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-payload-type
