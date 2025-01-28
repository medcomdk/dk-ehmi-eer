CodeSystem: EerMessagingOrganizationIdentierType
Id: eer-sor-organization-identier-type
Title: "EER SOR Organization Identier Type CodeSystem"
Description: "CodeSystem containing codes for EER SOR Organization Identier Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #SOR "SOR Identifier" "Sorkode"
* #SORID "SOR Identifier" "Sorkode"
* #MunicipalityCode "Municipality Code" "Kommunekode"
* #RegionCode "Region Code" "Regionskode"
//* include codes from system http://hl7.org/fhir/ValueSet/identifier-type

ValueSet: EerMessagingOrganizationIdentierTypeVS
Id: eer-sor-organization-identier-type-valueset
Title: "EER SOR Organization Identier Type Valueset"
Description: "ValueSet containing codes for SOR Organization Identier Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-sor-organization-identier-type

CodeSystem: EerEndpointConnectionType
Id: eer-endpoint-connection-type
Title: "EER Connection Types CS"
Description: "eer-endpoint-connection-types for the EER Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #EerMessagingEdelivery "EHMI messaging via eDelivery"
* #vansMessaging "EHMI VANS messaging"
* #hl7-fhir-msg "hl7-fhir-msg"
* #hl7-fhir-rest "hl7-fhir-rest"
* #ihe-xds "ihe-xds - Cross-domain Document Sharing"

ValueSet: EerEndpointConnectionTypeVS
Id: eer-endpoint-connection-type-valueset
Title: "EER connection Types Valueset"
Description: "ValueSet containing codes for EER connectionTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-endpoint-connection-type
//* include #hl7-fhir-msg from system $mCSDEndpointConnectionType
//* include #hl7-fhir-rest from system $mCSDEndpointConnectionType
//* include #ihe-xds from system $mCSDEndpointConnectionType

CodeSystem: EerEndpointPayloadType
Id: ehmi-payload-type
Title: "EER Payload Types CS"
Description: "ehmi-payload-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
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

ValueSet: EerEndpointPayloadTypeVS
Id: ehmi-payload-type-valueset
Title: "EER payload Types Valueset"
Description: "ValueSet containing codes for EER payloadTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-payload-type

CodeSystem: EerMessagingOrganizationType
Id: eer-sor-organization-type
Title: "EER SOR Organization Types CS"
Description: "eer-sor-organization-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #IO "SOR Organization - Institution Owner IO (DK:IE)"
  * #HI "SOR Organization - Healthcare Institution HI (DK:SI)"
    * #OU "SOR Organization - Organizational Unit OU (DK:OE)"
* #IE "SOR Organization - Institution Owner IO" ""
  * #SI "SOR Organization - Healthcare Institution HI"
    * #OE "SOR Organization - Organizational Unit OU"

ValueSet: EerMessagingOrganizationTypeVS
Id: eer-sor-organization-type-valueset
Title: "EER SOR Organization Types Valueset"
Description: "ValueSet containing codes for EER eer-sor-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^compose.include[+].system = $EerMessagingOrganizationType
* ^compose.include[=].concept[+].code = #IO
* ^compose.include[=].concept[=].display = "Institution Owner"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Institutionsejer"
* ^compose.include[=].concept[+].code = #HI
* ^compose.include[=].concept[=].display = "Healthcare Institution"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Sundhedsinstitution"
* ^compose.include[=].concept[+].code = #OU
* ^compose.include[=].concept[=].display = "Organizational Unit"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Organisatorisk enhed"
* ^compose.include[=].concept[+].code = #IE
* ^compose.include[=].concept[=].display = "Institution Owner"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Institutionsejer"
* ^compose.include[=].concept[+].code = #SI
* ^compose.include[=].concept[=].display = "Healthcare Institution"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Sundhedsinstitution"
* ^compose.include[=].concept[+].code = #OE
* ^compose.include[=].concept[=].display = "Organizational Unit"
* ^compose.include[=].concept[=].designation[+].language = #da
* ^compose.include[=].concept[=].designation[=].value = "Organisatorisk enhed"
//* include codes from system eer-sor-organization-type

CodeSystem: EerSorNetOperator
Id: eer-sor-net-operator-type
Title: "EER SOR Netoperator Types CS"
Description: "eer-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #81000035007 "DataGruppen MultiMed A/S"
* #91000035009 "INU-IT A/S"
* #41000035001 "KMD"
* #100097 "MedCom (EHMI)"
* #51000035003 "TrueCommerce Denmark ApS"
* #11000035002 "Ukendt"
* #71000035005 "Vejle Amt"

ValueSet: EerSorNetOperatorVS
Id: eer-sor-net-operator-type-valueset
Title: "EER SOR Netoperator Types Valueset"
Description: "eer-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-sor-net-operator-type

CodeSystem: EHMIMedComMessageDefinitionType
Id: eer-medcom-message-definition-type
Title: "EHMIMedComMessageDefinitionType CodeSystem"
Description: "EHMIMedComMessageDefinitionTypeCS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #EDIFACT "Edifact"
* #OIOXML "OIOXML"
* #FHIR "FHIR"
* #ENVELOPE "Envelope"

ValueSet: EHMIMedComMessageDefinitionTypeVS
Id: eer-medcom-message-definition-type-valueset
Title: "EHMIMedComMessageDefinitionType Valueset"
Description: "EHMIMedComMessageDefinitionTypeVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-medcom-message-definition-type

CodeSystem: EerMessageDefinitionIdentifierSystem
Id: eer-messagedefinition-identifer-system
Title: "EerMessageDefinitionIdentifierSystem CodeSystem"
Description: "EerMessageDefinitionIdentifierSystemCS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #urn:dk:healthcare:medcom:messaging:edifact "urn:dk:healthcare:medcom:messaging:edifact"
* #urn:dk:healthcare:medcom:messaging:fhir "urn:dk:healthcare:medcom:messaging:fhir"
* #urn:dk:healthcare:medcom:messaging:oioxml "urn:dk:healthcare:medcom:messaging:oioxml"
* #urn:dk:healthcare:medcom:messaging:envelope "urn:dk:healthcare:medcom:messaging:envelope"

ValueSet: EerMessageDefinitionIdentifierSystemVS
Id: eer-messagedefinition-identifer-system-valueset
Title: "EerMessageDefinitionIdentifierSystem Valueset"
Description: "EerMessageDefinitionIdentifierSystemVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-messagedefinition-identifer-system

ValueSet: EHMIUseContextCodeSystemVS
Id: eer-messagedefinition-use-context-code-valueset
Title: "EHMIUseContextCodeSystem Valueset"
Description: "EHMIUseContextCodeSystemVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/usage-context-type

CodeSystem: EerSorIOOrganization
Id: eer-sor-io-organization-type
Title: "EER SOR Organization Types CS"
Description: "eer-sor-organization-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #GeneralPractitioner "SOR GeneralPractitioner Organization - Institution Owner IO (DK:IE)"
* #Municipality "SOR Municipality Organization - Institution Owner IO (DK:IE)"
* #Region "SOR Region Organization - Institution Owner IO (DK:IE)"
* #Generic "General encompassing the principle"

ValueSet: EerSorIOOrganizationVS
Id: eer-sor-io-organization-type-valueset
Title: "EER SOR IO Organization Types Valueset"
Description: "ValueSet containing codes for EER eer-sor-io-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-sor-io-organization-type

CodeSystem: EerSorUnitType
Id: eer-sor-unit-type
Title: "EER SOR Unit Types CS"
Description: "eer-sor-unit-type for the EER Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #kommune "Kommune"
* #region "Region"
* #sundhedsforvaltning "Sundhedsforvaltning"
* #hjemmesygeplejeenhed "Hjemmesygeplejeenhed"
* #hjemmeplejeenhed "Hjemmeplejeenhed"
* #plejehjem "Plejehjem"
* #bosted "Bosted"
* #genoptræningsenhed "Genoptræningsenhed"
* #handicap-og-psykiatrienhed "Handicap- og psykiatrienhed"
* #center-for-misbrugsbehandling "Center for misbrugsbehandling"
* #fysioterapi-og-ergoterapiklinik "Fysioterapi- og ergoterapiklinik"
* #tandplejeklinik "Tandplejeklinik"
* #sundhedscenter "Sundhedscenter"
* #sundhedsplejen "Sundhedsplejen"
* #administrativ-enhed "Administrativ enhed"
* #supplerende-oplysninger "Supplerende oplysninger"
* #anden-sundhedsinstitution "Anden sundhedsinstitution"
* #anden-EDI "Anden EDI"
* #sygeplejeklinik "Sygeplejeklinik"
* #behandlingscenter-for-stofmisbrugere "Behandlingscenter for stofmisbrugere"

ValueSet: EerSorUnitTypeVS
Id: eer-sor-unit-type-valueset
Title: "EER SOR Unit Types Valueset"
Description: "ValueSet containing codes for EER eer-sor-io-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-sor-unit-type

CodeSystem: EerSorClinicalAdministrativeHierarchy
Id: eer-sor-clinical-administrative-hierarchy
Title: "EER SOR Clinical Administrative Hierarchy CS"
Description: "CodeSystem containing codes for EER SOR Clinical Administrative Hierarchy"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #Hospital "Hospital"
* #Hospitalsområde "Hospitalsområde"
* #Center "Center"
* #Overafdeling "Overafdeling"
* #Afdeling "Afdeling"
* #Afsnit "Afsnit"

ValueSet: EerSorClinicalAdministrativeHierarchyVS
Id: eer-sor-clinical-administrative-hierarchy-valueset
Title: "EER SOR Clinical Administrative Hierarchy Valueset"
Description: "ValueSet containing codes for EER SOR Clinical Administrative Hierarchy"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system eer-sor-clinical-administrative-hierarchy

CodeSystem: EerDigitalSignatureType
Id: eer-digital-signature-type
Title: "EER digital-signature Types CS"
Description: "eer-digital-signature-types for the EER Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2024-09-01"
* ^experimental = true
* ^caseSensitive = true
* #ETSI "Digital Signature"

ValueSet: EerDigitalSignatureTypeVS
Id: eer-digital-signature-type-valueset
Title: "EER digital-signature Types VS"
Description: "eer-digital-signature-types for the EER Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2024-09-01"
* ^experimental = true
* include codes from system $EerDigSigCS
