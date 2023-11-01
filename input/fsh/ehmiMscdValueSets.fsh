CodeSystem: EHMISOROrganizationIdentierType
Id: ehmi-sor-organization-identier-type
Title: "EHMI SOR Organization Identier Type CodeSystem"
Description: "CodeSystem containing codes for EHMI SOR Organization Identier Type"
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

ValueSet: EHMISORorganizationIdentierTypeVS
Id: ehmi-sor-organization-identier-type-valueset
Title: "EHMI SOR Organization Identier Type Valueset"
Description: "ValueSet containing codes for SOR Organization Identier Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-organization-identier-type

CodeSystem: EHMIEndpointConnectionType
Id: ehmi-connection-type
Title: "EHMI Connection Types CS"
Description: "ehmi-connection-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
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
* ^experimental = true
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

ValueSet: EHMIEndpointPayloadTypeVS
Id: ehmi-payload-type-valueset
Title: "EHMI payload Types Valueset"
Description: "ValueSet containing codes for EHMI payloadTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-payload-type

CodeSystem: EHMISOROrganization
Id: ehmi-sor-organization-type
Title: "EHMI SOR Organization Types CS"
Description: "ehmi-sor-organization-type for the EHMI Messaging Infrastructure"
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

ValueSet: EHMISOROrganizationVS
Id: ehmi-sor-organization-type-valueset
Title: "EHMI SOR Organization Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^compose.include[+].system = $EHMISOROrganizationType
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
//* include codes from system ehmi-sor-organization-type

CodeSystem: EHMISORNetOperator
Id: ehmi-sor-net-operator-type
Title: "EHMI SOR Netoperator Types CS"
Description: "ehmi-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #81000035007 "DataGruppen MultiMed A/S"
* #91000035009 "INU-IT A/S"
* #41000035001 "KMD"
* #100097 "MedCom (eDelivery)"
* #51000035003 "TrueCommerce Denmark ApS"
* #11000035002 "Ukendt"
* #71000035005 "Vejle Amt"

ValueSet: EHMISORNetOperatorVS
Id: ehmi-sor-net-operator-type-valueset
Title: "EHMI SOR Netoperator Types Valueset"
Description: "ehmi-sor-net-operator-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-net-operator-type

CodeSystem: EHMIMedComMessageDefinitionType
Id: ehmi-medcom-message-definition-type
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
Id: ehmi-medcom-message-definition-type-valueset
Title: "EHMIMedComMessageDefinitionType Valueset"
Description: "EHMIMedComMessageDefinitionTypeVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-medcom-message-definition-type

CodeSystem: EHMIMessageDefinitionIdentifierSystem
Id: ehmi-messagedefinition-identifer-system
Title: "EHMIMessageDefinitionIdentifierSystem CodeSystem"
Description: "EHMIMessageDefinitionIdentifierSystemCS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #urn:dk:healthcare:medcom:messaging:edifact "urn:dk:healthcare:medcom:messaging:edifact"
* #urn:dk:healthcare:medcom:messaging:fhir "urn:dk:healthcare:medcom:messaging:fhir"
* #urn:dk:healthcare:medcom:messaging:oioxml "urn:dk:healthcare:medcom:messaging:oioxml"
* #urn:dk:healthcare:medcom:messaging:envelope "urn:dk:healthcare:medcom:messaging:envelope"

ValueSet: EHMIMessageDefinitionIdentifierSystemVS
Id: ehmi-messagedefinition-identifer-system-valueset
Title: "EHMIMessageDefinitionIdentifierSystem Valueset"
Description: "EHMIMessageDefinitionIdentifierSystemVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-messagedefinition-identifer-system

ValueSet: EHMIUseContextCodeSystemVS
Id: ehmi-messagedefinition-use-context-code-valueset
Title: "EHMIUseContextCodeSystem Valueset"
Description: "EHMIUseContextCodeSystemVS for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/usage-context-type

CodeSystem: EHMISORIOOrganization
Id: ehmi-sor-io-organization-type
Title: "EHMI SOR Organization Types CS"
Description: "ehmi-sor-organization-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #GeneralPractitioner "SOR GeneralPractitioner Organization - Institution Owner IO (DK:IE)"
* #Municipality "SOR Municipality Organization - Institution Owner IO (DK:IE)"
* #Region "SOR Region Organization - Institution Owner IO (DK:IE)"
* #Generic "General encompassing the principle"

ValueSet: EHMISORIOOrganizationVS
Id: ehmi-sor-io-organization-type-valueset
Title: "EHMI SOR IO Organization Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-io-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-io-organization-type

CodeSystem: EHMISORUnitType
Id: ehmi-sor-unit-type
Title: "EHMI SOR Unit Types CS"
Description: "ehmi-sor-unit-type for the EHMI Messaging Infrastructure"
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

ValueSet: EHMISORUnitTypeVS
Id: ehmi-sor-unit-type-valueset
Title: "EHMI SOR Unit Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-io-organization-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-unit-type

CodeSystem: EHMISORClinicalAdministrativeHierarchy
Id: ehmi-sor-clinical-administrative-hierarchy
Title: "EHMI SOR Clinical Administrative Hierarchy CS"
Description: "CodeSystem containing codes for EHMI SOR Clinical Administrative Hierarchy"
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

ValueSet: EHMISORClinicalAdministrativeHierarchyVS
Id: ehmi-sor-clinical-administrative-hierarchy-valueset
Title: "EHMI SOR Clinical Administrative Hierarchy Valueset"
Description: "ValueSet containing codes for EHMI SOR Clinical Administrative Hierarchy"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-clinical-administrative-hierarchy
