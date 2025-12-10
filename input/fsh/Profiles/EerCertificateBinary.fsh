/*
Extension: EncryptionCertificatePEMx509
Id: encryption-certificate-pem-x509
Title: "Encryption Certificate PEM X509"
Description: "This extension applies to the Endpoint resource and is used to support encrypted certificate content for use with an endpoint. This extension allows an endpoint entry to define a suitable certificate for use in communications on the associated channel."
Context: Endpoint
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base"
* ^url = "http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509"
* ^version = "6.0.0-ci-build"
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia FHIR Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG"
* ^contact.telecom.use = #work
* ^jurisdiction = urn:iso:std:iso:3166#AU
* ^copyright = "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved."
* . ^short = "PEM X509 certificate"
* . ^definition = "Mechanism to hold the value of a X509 certificate as a string (base64 encoded PEM certificate)."
* url = "http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509" (exactly)
* value[x] 1..
* value[x] only string
* value[x] ^short = "Base64 encoded string PEM format X509 certificate"
* value[x] ^definition = "Base64 encoded string containing PEM (RFC 7468) formatted X509 certificate."
*/

Extension: EerCertificateBinaryStringExtension
Id: eer-certificate-binary-string-extension
Title: "EER Certificate Binary String Extension"
Description: "An EER profile of a Binary extension resource in order to handle the eDelivery Certificate needs"
Context: "Organization.contact"
//* url = "http://medcomehmi.dk/ig/eer/StructureDefinition/eer-certificate-binary-string-extension"
* value[x] 1..1 
* value[x] only string
* value[x] ^short = "Base64 encoded string PEM format X509 certificate"
* value[x] ^definition = "Base64 encoded string containing PEM (RFC 7468) formatted X509 certificate."
//* obeys eer-sorIE-type-requirement

Invariant: eer-certificate-binary-string-requirement
Description: "The referenced EerCertificateBinary SHALL be of type."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'IE').exists()"

Extension: EerCertificateBinaryExtension
Id: eer-certificate-binary-extension
Title: "EER System Extension - EUA"
Description: "An EER profile of a Binary extension resource in order to handle the eDelivery Certificate needs"
Context: "Organization"
* value[x] 0.. 
* value[x] only Reference(EerCertificateBinary)
* obeys eer-certificate-binary-requirement

Invariant: eer-certificate-binary-requirement
Description: "The referenced EerCertificateBinary SHALL be of type."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'IE').exists()"

Profile: EerCertificateBinary
Parent: Binary
Title: "EER Certificate Binary"
Description: "An EER profile of the Binary resource in order to handle the eDelivery Certificate needs"
* contentType = #application/x-x509-ca-cert
//* extension contains eer-certificate-binary-string-extension named EerPkiPublicKeyString 0..1 MS 
* data 0..1
  * ^short = "Base64 encoded string PEM format X509 certificate"
//* extension contains binary-signature named EerPkiPublicKey 0..1 MS 
//* EerPkiPublicKey
//* extension contains eer-dk-msh-system-extension named msh-system 0..* MS 
//* securityContext = Reference(EerCertificateBinary)
//* extension contains binary-signature named signature 0..* MS 
//* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
//* extension[signature].valueSignature.type[0].code = "1.2.840.10065.1.12.1.1"
//* extension contains binary-signature named signature 0..*
//* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
//* extension[signature].url = "http://example.org/fhir/StructureDefinition/binary-signature" (exact)

/*
Instance: EerCertificateBinarySample
InstanceOf: EerCertificateBinary
Title: "Example of a EerCertificateBinary"
Usage: #example
* contentType = #application/x-x509-ca-cert
* data = """LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t
TUlJRWVUQ0NBMkdnQXdJQkFnSVFUSFJpK2FiSXV2SXZJb3pZcFRwdGVqQU5CZ2txaGtpRzl3MEJBUXNGQURCTg==
TVVzd1NRWURWUVFESGtJQVRRQlRBQzBBVHdCeUFHY0FZUUJ1QUdrQWVnQmhBSFFBYVFCdkFHNEFMUUJRQURJQQ==
VUFBdEFFRUFZd0JqQUdVQWN3QnpBQ0FBV3dBeUFEQUFNZ0ExQUYwd0hoY05NalV4TVRFek1UZzBPREkzV2hjTg==
TWpVeE1URTBNVGcxTXpJM1dqQmxNVFF3TWdZS0NaSW1pWlB5TEdRQkdSWWtORGc1T0Rnd01tRXRObUV3TWkwMA==
TXpkbExXSmxZall0TkRkallqaGtZakptTkROa01TMHdLd1lEVlFRREV5UXhORGRsWXpBeU1pMDRPVGMxTFRRMA==
TnpJdE9XWTVOaTAxTURjeFpUbGxOR0l4TVRNd2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3Z2dFSw==
QW9JQkFRRGI1V0tFWjA3amhiRUtLWGEzbVRlbWE1S1YxRXNqOUsxUXlhYzNtV0JxVml6R1RPL2xvbVk4MHhWdA==
MEhCQ0h1T1NqMXpka0ZCMkY0Wnd5U1NyVHQ3SGdScHFLbGJsbmd5L1dKZFNoNDJlYmNjckZERzdGQXc0OXJZYw==
NXRTbnVqdnFvbVAyNTFuUTNyenZiQ2svSXF0bDNqL1JWU1RETUlXc253bGlpTFZkZ3V4K3Z4bmxYTFBJbFJsSA==
bHJsdHBPL1FZcy9CNWgxNm9DOU5ZQ0paMmJNVGFIZzNnV0cvRHcwZmcvZERQSmVQSld4NnBrN0FWV2RSTG9iWQ==
dDdOcWZSRkREMG9KbkEreEduNTY3WmhLNEJrZXRCc2JtVnhOb3c0UU80SUUyT0RSdjRkbHp1MHk3cTg4SmVHNQ==
cnhQbDh6cEU4S3gyZjcvdXZUcU1zR3NpWmtYeEFnTUJBQUdqZ2dFN01JSUJOekFPQmdOVkhROEJBZjhFQkFNQw==
QmFBd2dmSUdBMVVkRVFTQjZqQ0I1NElOVFVWRVEwOU5MVTlXU1MxUVE0SU5UVVZFUTA5TkxVOVdTUzFRUTRJVA==
TW1Fd1lqb3pPREE2TWpsbU5UbzZOalk0TTRJT01Ua3lMakUyT0M0eE1DNHhOaldDRFRFd0xqRTROQzQ0Tnk0eA==
T0RlQ0RURXdMakl3TUM0eU1ESXVNekNDRERFM01pNHhPQzR4TnpZdU1ZSW1NakF3TVRvMll6ZzZabVl4WXpveg==
TURJek9tWXhZVFU2TjJVMk56b3pORGMwT2pNeU1qV0NKakl3TURFNk5tTTRPbVptTVdNNk16QXlNenBqTlRKaQ==
T2pSbU9EZzZNMkpoTXpwa05qa3dnaVl5TURBeE9qWmpPRHBtWmpGak9qTXdNak02TkRBNFpqbzRPREV6T21VeQ==
TTJVNk0yVTNaVEFUQmdOVkhTVUVEREFLQmdnckJnRUZCUWNEQVRBYkJna3JCZ0VFQVlJM0ZRb0VEakFNTUFvRw==
Q0NzR0FRVUZCd01CTUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFBYlJzUEYrb0QremlBblhjNFA5RXVYeVU1OA==
bVEvS2ZQLzBTcHpDRzZxdE5mT2tuaEx4SFRFMU9zQVZXeGJkSXNIWEdtWXRXRTZKbGtQTDRwZFBtNUdLYzA3UA==
Mng4WG1RYXpkek43ZlBSV2J6dnRNcElSNlV2TkdkZG42R3p6WG1Oc0dpeUovU0NEL01Cajh0M0ROTU1VdmdWTw==
YjJWazg4RG9jZGt5R0Rtbk54bEFZVUEvZnAwWHNFci9YKzl4dDRRa014S1h0ODZpWk1ubWJacmdNUmdId0phUA==
dVMzdmVNRXgxNy84MjJ3OHN3VmxCbEM0S1ExanFhSjNCd01BaFhwT3RFZGdNTDh2Vks0bkRoNkRaMXVZektLVA==
QmVpcEw1SjAzT2VTdldIMVRrbzdYYS9FcWpaamFKdys0Q1QwNXY4M2hjaWJPSVYxeWZwMU9qQ0NsaTNy
LS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQ==
"""   // base64-encoded content
*/

/*
Instance: EerCertificateBinaryStringSample
InstanceOf: EerCertificateBinaryStringExtension
Title: "Example of a EerCertificateBinary"
Usage: #inline
//* extension[+].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/eer-certificate-binary-string-extension"
* extension[+].valueString = """LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t
TUlJRWVUQ0NBMkdnQXdJQkFnSVFUSFJpK2FiSXV2SXZJb3pZcFRwdGVqQU5CZ2txaGtpRzl3MEJBUXNGQURCTg==
TVVzd1NRWURWUVFESGtJQVRRQlRBQzBBVHdCeUFHY0FZUUJ1QUdrQWVnQmhBSFFBYVFCdkFHNEFMUUJRQURJQQ==
VUFBdEFFRUFZd0JqQUdVQWN3QnpBQ0FBV3dBeUFEQUFNZ0ExQUYwd0hoY05NalV4TVRFek1UZzBPREkzV2hjTg==
TWpVeE1URTBNVGcxTXpJM1dqQmxNVFF3TWdZS0NaSW1pWlB5TEdRQkdSWWtORGc1T0Rnd01tRXRObUV3TWkwMA==
TXpkbExXSmxZall0TkRkallqaGtZakptTkROa01TMHdLd1lEVlFRREV5UXhORGRsWXpBeU1pMDRPVGMxTFRRMA==
TnpJdE9XWTVOaTAxTURjeFpUbGxOR0l4TVRNd2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3Z2dFSw==
QW9JQkFRRGI1V0tFWjA3amhiRUtLWGEzbVRlbWE1S1YxRXNqOUsxUXlhYzNtV0JxVml6R1RPL2xvbVk4MHhWdA==
MEhCQ0h1T1NqMXpka0ZCMkY0Wnd5U1NyVHQ3SGdScHFLbGJsbmd5L1dKZFNoNDJlYmNjckZERzdGQXc0OXJZYw==
NXRTbnVqdnFvbVAyNTFuUTNyenZiQ2svSXF0bDNqL1JWU1RETUlXc253bGlpTFZkZ3V4K3Z4bmxYTFBJbFJsSA==
bHJsdHBPL1FZcy9CNWgxNm9DOU5ZQ0paMmJNVGFIZzNnV0cvRHcwZmcvZERQSmVQSld4NnBrN0FWV2RSTG9iWQ==
dDdOcWZSRkREMG9KbkEreEduNTY3WmhLNEJrZXRCc2JtVnhOb3c0UU80SUUyT0RSdjRkbHp1MHk3cTg4SmVHNQ==
cnhQbDh6cEU4S3gyZjcvdXZUcU1zR3NpWmtYeEFnTUJBQUdqZ2dFN01JSUJOekFPQmdOVkhROEJBZjhFQkFNQw==
QmFBd2dmSUdBMVVkRVFTQjZqQ0I1NElOVFVWRVEwOU5MVTlXU1MxUVE0SU5UVVZFUTA5TkxVOVdTUzFRUTRJVA==
TW1Fd1lqb3pPREE2TWpsbU5UbzZOalk0TTRJT01Ua3lMakUyT0M0eE1DNHhOaldDRFRFd0xqRTROQzQ0Tnk0eA==
T0RlQ0RURXdMakl3TUM0eU1ESXVNekNDRERFM01pNHhPQzR4TnpZdU1ZSW1NakF3TVRvMll6ZzZabVl4WXpveg==
TURJek9tWXhZVFU2TjJVMk56b3pORGMwT2pNeU1qV0NKakl3TURFNk5tTTRPbVptTVdNNk16QXlNenBqTlRKaQ==
T2pSbU9EZzZNMkpoTXpwa05qa3dnaVl5TURBeE9qWmpPRHBtWmpGak9qTXdNak02TkRBNFpqbzRPREV6T21VeQ==
TTJVNk0yVTNaVEFUQmdOVkhTVUVEREFLQmdnckJnRUZCUWNEQVRBYkJna3JCZ0VFQVlJM0ZRb0VEakFNTUFvRw==
Q0NzR0FRVUZCd01CTUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFBYlJzUEYrb0QremlBblhjNFA5RXVYeVU1OA==
bVEvS2ZQLzBTcHpDRzZxdE5mT2tuaEx4SFRFMU9zQVZXeGJkSXNIWEdtWXRXRTZKbGtQTDRwZFBtNUdLYzA3UA==
Mng4WG1RYXpkek43ZlBSV2J6dnRNcElSNlV2TkdkZG42R3p6WG1Oc0dpeUovU0NEL01Cajh0M0ROTU1VdmdWTw==
YjJWazg4RG9jZGt5R0Rtbk54bEFZVUEvZnAwWHNFci9YKzl4dDRRa014S1h0ODZpWk1ubWJacmdNUmdId0phUA==
dVMzdmVNRXgxNy84MjJ3OHN3VmxCbEM0S1ExanFhSjNCd01BaFhwT3RFZGdNTDh2Vks0bkRoNkRaMXVZektLVA==
QmVpcEw1SjAzT2VTdldIMVRrbzdYYS9FcWpaamFKdys0Q1QwNXY4M2hjaWJPSVYxeWZwMU9qQ0NsaTNy
LS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQ==
"""   // base64-encoded content
*/

Instance: MinBinaryRessource
InstanceOf: Binary
Usage: #example
* contentType = #text/plain // Angiver MIME-typen for indholdet
* data = "SGVsbG8gV29ybGQh" // Det base64-kodede indhold for "Hello World!"
