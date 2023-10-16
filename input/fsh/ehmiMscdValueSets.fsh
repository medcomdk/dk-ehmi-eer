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
* #urn:dk:medcom:prod:messaging:fhir "MedCom FHIR message as a production message"
* #urn:dk:medcom:test:messaging:fhir "MedCom FHIR message as a test message"
* #urn:dk:medcom:prod:messaging:edi "MedCom edi message as a production message"
* #urn:dk:medcom:test:messaging:edi "MedCom edi message as a test message"
* #urn:dk:medcom:prod:messaging:oioxml "MedCom oioxml message as a production message"
* #urn:dk:medcom:test:messaging:oioxml "MedCom oioxml message as a test message"
* #urn:dk:medcom:prod:messaging:sbdh "MedCom SBDH envelope as a production message"
* #urn:dk:medcom:test:messaging:sbdh "MedCom SBDH envelope as a test message"
* #urn:dk:medcom:prod:messaging:sbdhack "MedCom SBDH Ack message as a production message"
* #urn:dk:medcom:test:messaging:sbdhack "MedCom SBDH Ack message as a test message"

ValueSet: EHMIEndpointPayloadTypeVS
Id: ehmi-payload-type-valueset
Title: "EHMI payload Types Valueset"
Description: "ValueSet containing codes for EHMI payloadTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-payload-type

CodeSystem: EHMISOROrganization
Id: ehmi-sor-organization-type
Title: "EHMI SOR Organization Types CS"
Description: "ehmi-sor-organization-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #IO "SOR Organization - Institution Owner IO (DK:IE)"
* #HI "SOR Organization - Healthcare Institution HI (DK:SI)"
* #OU "SOR Organization - Organizational Unit OU (DK:OE)"

ValueSet: EHMISOROrganizationVS
Id: ehmi-sor-organization-type-valueset
Title: "EHMI SOR Organization Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-sor-organization-type

CodeSystem: EHMISORRegionType
Id: ehmi-sor-region-type
Title: "EHMI SOR Region Types CS"
Description: "ehmi-sor-region-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #1 "Other"
* #1084 "SOR Capital Region (DK:Region Hovedstaden)"
* #1082 "SOR Region Midtjylland	"
* #1081 "Region Nordjylland	"
* #1085 "Region Sjælland	"
* #1083 "SOR Southern Region (DK:Region Syddanmark)"

ValueSet: EHMISORRegionTypeVS
Id: ehmi-sor-region-type-valueset
Title: "EHMI SOR Region Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-region-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-sor-region-type

CodeSystem: EHMISORNetOperator
Id: ehmi-sor-net-operator-type
Title: "EHMI SOR Netoperator Types CS"
Description: "ehmi-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #81000035007 "DataGruppen MultiMed A/S	"
* #91000035009 "INU-IT A/S	"
* #41000035001 "KMD	"
* #100097 "MedCom (eDelivery)	"
* #51000035003 "TrueCommerce Denmark ApS	"
* #11000035002 "Ukendt	"
* #71000035005 "Vejle Amt	"

ValueSet: EHMISORNetOperatorVS
Id: ehmi-sor-net-operator-type-valueset
Title: "EHMI SOR Netoperator Types Valueset"
Description: "ehmi-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-sor-net-operator-type

