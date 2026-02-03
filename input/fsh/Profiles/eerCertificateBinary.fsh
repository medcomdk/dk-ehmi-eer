/*
Extension: BinarySignature
Id: binary-signature
Title: "Signature for Binary Resource"
Description: "An extension that allows a Signature to be attached to a Binary resource."
Context: Binary
* ^version = "1.0.0"
* ^publisher = "Example Publisher"
* ^date = "2025-01-01"
* value[x] 0.. 
* value[x] only Signature
* valueSignature 0..1

Profile: EerCertificateBinary
Parent: Binary
Title: "EER Certificate Binary"
Description: "An EHMI profile of the Binary resource in order to handle the eDelivery."
* contentType = #application/x-x509-ca-cert
//* securityContext = Reference(EerCertificateBinary)
* extension contains binary-signature named signature 0..* MS 
//* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
//* extension[signature].valueSignature.type[0].code = "1.2.840.10065.1.12.1.1"
//* extension contains binary-signature named signature 0..*
//* extension contains eer-dk-eua-system-extension named eua-system 0..* MS 
//* extension[signature].url = "http://example.org/fhir/StructureDefinition/binary-signature" (exact)

Instance: ExampleEerCertificateBinary
InstanceOf: Binary
Title: "Example of a Signed Binary"
Usage: #example
* contentType = #application/x-x509-ca-cert
/*
//* data = "JVBERi0xLjQK..."   // base64-encoded content
* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
* extension[signature].valueSignature.type[0].code = "1.2.840.10065.1.12.1.1"
* extension[signature].valueSignature.when = "2025-01-18T14:30:00Z"
* extension[signature].valueSignature.who = Reference(Practitioner/123)
* extension[signature].valueSignature.targetFormat = "application/pdf"
* extension[signature].valueSignature.sigFormat = "application/pkcs7-signature"
* extension[signature].valueSignature.data = "MIIEpAIBAAKCAQEA..."


Extension: EerCertificateBinaryExtension
Id: eer-dk-certificate-binary-extension
Title: "EerCertificateBinaryExtension"
Description: "EerCertificateBinaryExtension"
* valueSignature 0.. 
* value[x] only Reference(EerDevice)
* obeys eer-eua-type-requirement
*/

