Profile:      EerDigitalSignature
Parent:       Basic
Id:           eer.dk.digitalsignature
Title:        "EER Digital Signature for eDelivery"
Description:  "EER Digital Signature for eDelivery"
* identifier 1..1 MS SU
* code.coding.code = #ETSI
* code.coding.code from $EerDigSigVS
* code.coding.display = "Digital Signature"
* code.coding.system = $EerDigSigCS
* extension contains eer-dk-digital-signature-extension named digitalsignature 1..1 MS 



Extension: EerDigitalSignatureExtension
Id: eer-dk-digital-signature-extension
Title: "EER Digital Signature for eDelivery Extension"
Description: "EER Digital Signature for eDelivery Extension"
* valueSignature.sigFormat 1..1
* valueSignature.data 1..1
* value[x] only valueSignature




