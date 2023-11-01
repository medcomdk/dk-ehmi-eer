CodeSystem: EHMISOROrganizationIdentierType
Id: ehmi-sor-organization-identier-type
Title: "EHMI SOR Organization Identier Type CodeSystem"
Description: "CodeSystem containing codes for EHMI SOR Organization Identier Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #SOR
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

CodeSystem: EHMISORRegionType
Id: ehmi-sor-region-type
Title: "EHMI SOR Region Types CS"
Description: "ehmi-sor-region-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #1 "Other"
* #1084 "SOR Capital Region (DK:Region Hovedstaden)"
* #1082 "SOR Region Midtjylland"
* #1081 "Region Nordjylland"
* #1085 "Region Sjælland"
* #1083 "SOR Southern Region (DK:Region Syddanmark)"

ValueSet: EHMISORRegionTypeVS
Id: ehmi-sor-region-type-valueset
Title: "EHMI SOR Region Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-region-type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-region-type

CodeSystem: EHMISORMunicipalityType
Id: ehmi-sor-municipality-type
Title: "EHMI SOR Municipality Types CS"
Description: "ehmi-sor-Municipality-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* ^caseSensitive = true
* #0101 "København"
* #0147 "Frederiksberg"
* #0151 "Ballerup"
* #0153 "Brøndby"
* #0155 "Dragør"
* #0157 "Gentofte"
* #0159 "Gladsaxe"
* #0161 "Glostrup"
* #0163 "Herlev"
* #0165 "Albertslund"
* #0167 "Hvidovre"
* #0169 "Høje-Taastrup"
* #0173 "Lyngby-Taarbæk"
* #0175 "Rødovre"
* #0183 "Ishøj"
* #0185 "Tårnby"
* #0187 "Vallensbæk"
* #0190 "Furesø"
* #0201 "Allerød"
* #0210 "Fredensborg"
* #0217 "Helsingør"
* #0219 "Hillerød"
* #0223 "Hørsholm"
* #0230 "Rudersdal"
* #0240 "Egedal"
* #0250 "Frederikssund"
* #0253 "Greve"
* #0259 "Køge"
* #0260 "Halsnæs"
* #0265 "Roskilde"
* #0269 "Solrød"
* #0270 "Gribskov"
* #0306 "Odsherred"
* #0316 "Holbæk"
* #0320 "Faxe"
* #0326 "Kalundborg"
* #0329 "Ringsted"
* #0330 "Slagelse"
* #0336 "Stevns"
* #0340 "Sorø"
* #0350 "Lejre"
* #0360 "Lolland"
* #0370 "Næstved"
* #0376 "Guldborgsund"
* #0390 "Vordingborg"
* #0400 "Bornholm"
* #0410 "Middelfart"
* #0411 "Christiansø"
* #0420 "Assens"
* #0430 "Faaborg-Midtfyn"
* #0440 "Kerteminde"
* #0450 "Nyborg"
* #0461 "Odense"
* #0479 "Svendborg"
* #0480 "Nordfyns"
* #0482 "Langeland"
* #0492 "Ærø"
* #0510 "Haderslev"
* #0530 "Billund"
* #0540 "Sønderborg"
* #0550 "Tønder"
* #0561 "Esbjerg"
* #0563 "Fanø"
* #0573 "Varde"
* #0575 "Vejen"
* #0580 "Aabenraa"
* #0607 "Fredericia"
* #0615 "Horsens"
* #0621 "Kolding"
* #0630 "Vejle"
* #0657 "Herning"
* #0661 "Holstebro"
* #0665 "Lemvig"
* #0671 "Struer"
* #0706 "Syddjurs"
* #0707 "Norddjurs"
* #0710 "Favrskov"
* #0727 "Odder"
* #0730 "Randers"
* #0740 "Silkeborg"
* #0741 "Samsø"
* #0746 "Skanderborg"
* #0751 "Aarhus"
* #0756 "Ikast-Brande"
* #0760 "Ringkøbing-Skjern"
* #0766 "Hedensted"
* #0773 "Morsø"
* #0779 "Skive"
* #0787 "Thisted"
* #0791 "Viborg"
* #0810 "Brønderslev"
* #0813 "Frederikshavn"
* #0820 "Vesthimmerlands"
* #0825 "Læsø"
* #0840 "Rebild"
* #0846 "Mariagerfjord"
* #0849 "Jammerbugt"
* #0851 "Aalborg"
* #0860 "Hjørring"

ValueSet: EHMISORMunicipalityTypeVS
Id: ehmi-sor-municipality-type-valueset
Title: "EHMI SOR Municipality Types Valueset"
Description: "ValueSet containing codes for EHMI ehmi-sor-Municipality-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = true
* include codes from system ehmi-sor-municipality-type

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
