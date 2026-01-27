Instance: LaegerneStjernepladsen.SOR.698131000016001
InstanceOf: EerSorOrganization
Title: "Example EER SOR Organization"
Description: "An example instance of the EER SOR Organization with a required endpoint."
* id = "LaegerneStjernepladsen.SOR.698131000016001"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#IE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
//sor-institution-owner
* contact[SOR-Owner].purpose.coding.code = $contactentity-type#ADMIN
* contact[SOR-Owner].purpose.coding.system = $contactentity-type
* contact[SOR-Owner].extension[+].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension[=].valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* contact[SOR-Owner].extension[+].url = "http://medcomehmi.dk/ig/eer/StructureDefinition/eer-certificate-binary-string-extension"
* contact[SOR-Owner].extension[=].valueString = """LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0t
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
//* extension[=].valueReference = Reference(Binary/EerCertificateBinaryStringSample)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.698141000016008
InstanceOf: EerSorOrganization
Title: "EER SOR Organization - LaegerneStjernepladsen.SOR.698141000016008"
Description: "EER SOR Organization - LaegerneStjernepladsen.SOR.698141000016008"
* id = "LaegerneStjernepladsen.SOR.698141000016008"
* name = "Lægerne Stjernepladsen I/S"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
* partOf = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#SI
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* contact[SOR-Owner].purpose.coding.code = $contactentity-type#ADMIN
* contact[SOR-Owner].purpose.coding.system = $contactentity-type
* contact[SOR-Owner].extension.url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension.valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.698161000016009
InstanceOf: EerSorOrganization
Title: "EER SOR Organization - LaegerneStjernepladsen.SOR.698161000016009"
Description: "EER SOR Organization - LaegerneStjernepladsen.SOR.698161000016009"
* id = "LaegerneStjernepladsen.SOR.698161000016009"
* name = "Tine Nørregaard Nielsen"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "543210987654321"
//* partOf = Reference(Organization/LaegerneStjernepladsen.SOR.698141000016008)
* type[SOR-Hierarchy].coding.code = $EerSorOrganizationTypeCS#OE
* type[SOR-Hierarchy].coding.system = $EerSorOrganizationTypeCS
* contact[SOR-Owner].purpose.coding.code = $contactentity-type#ADMIN
* contact[SOR-Owner].purpose.coding.system = $contactentity-type
* contact[SOR-Owner].extension.url = "http://medcomehmi.dk/ig/eer/StructureDefinition/contactdetail-organization-reference-extension"
* contact[SOR-Owner].extension.valueReference = Reference(Organization/LaegerneStjernepladsen.SOR.698131000016001)
* endpoint[+] = Reference(Endpoint/LaegerneStjernepladsen.SOR.5790002401428)

Instance: LaegerneStjernepladsen.SOR.5790002401428
InstanceOf: EerSorEndpoint
Title: "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428"
Description: "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428"
* id = "LaegerneStjernepladsen.SOR.5790002401428"
* identifier[GLN-ID].value = "5790002401428"
* identifier[GLN-ID].system = "http://www.gs1.org/gln"
* status = #active
* period.start = "2025-01-01"
* connectionType.code = $EerEndpointConnectionTypeCS#EerMessagingEdelivery
* connectionType.system = $EerEndpointConnectionTypeCS
* name = "EER SOR Endpoint - LaegerneStjernepladsen.SOR.5790002401428 FHIR Endpoint"
* managingOrganization.reference = "Organization/LaegerneStjernepladsen.SOR.698131000016001"
* extension[ap-system].valueReference = Reference(EerDeviceAP-MultiMedAP)
* address = "https://example.org/fhir"
* payloadMimeType[+] = #text/xml
* payloadMimeType[+] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::homecareobservation-message##urn:dk:medcom:fhir:homecareobservation-message::1.2  "HomeCareObservation 1.2"
* payloadType[+] = $EhmiMessageDefinitionUri##urn:dk:healthcare:medcom:messaging:fhir:structuredefinition::acknowledgement-message##urn:dk:medcom:fhir:acknowledgement-message::2.0	
//* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:ehmi:messaging:envelope:xml:sbdh:1.0
* payloadType[+] = $EhmiMessageDefinitionUri#urn:dk:healthcare:messaging:oasis:ebxml:schema:xsd::ehmisbdh-acknowledgement##urn:dk:ehmi:sbdh:ehmisbdh-acknowledgement::1.0
