Instance: EerDeviceAP-MultiMedAP
InstanceOf: EER_AP_Technical_Details
Description: "EerDeviceAP-MultiMedAP"
* identifier[0].value = "MultiMedAP"
* status = #active
* deviceName.name = "MultiMed AP"
* manufacturer = "MultiMed"
* contact[+]
  * system = #phone
  * value = "+123456789"
* url = "https://eDelivery.MultiMed.com/endpoint"
* owner = Reference(ExampleEerMessagingOrganization)

* extension[smpPublicKey].extension[certificate].valueBase64Binary = "TUlJQkNnS0NBUUVB"

* extension[smpMTLSKey][+].extension[certificateSubject].valueString = "CVR:11111111-UID:UI:DK-O:G:f9fa19ef-e64e-4c25-bf37-fdc14970daf5"
* extension[smpMTLSKey][=].extension[certificateId].valueString = "14"
* extension[smpMTLSKey][+].extension[certificateSubject].valueString = "CVR:11111111-UID:UI:DK-O:G:f9a27671-971f-4e3a-a3b6-cd5864a69cc0"

Instance: EerDeviceMSH-MultiMedMSH
InstanceOf: EerDevice
Description: "EerDeviceMSH-MultiMedMSH"
* identifier[0].value = "EerDeviceMSH-MultiMedMSH"
* type = $EerDeviceTypeCS#MSH "Message Service Handler"
* status = #active
* deviceName.name = "MultiMedMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceEUA-EGClineaEUA
InstanceOf: EerDevice
Description: "EerDeviceEUA-EGClineaEUA"
* identifier[0].value = "EerDeviceEUA-EGClineaEUA"
* type = $EerDeviceTypeCS#EUA "End User Application"
* status = #active
* deviceName.name = "EGClineaEUA"
* deviceName.type = #manufacturer-name
* manufacturer = "Novax"

Instance: EerDeviceMSH-SystematicMSH
InstanceOf: EerDevice
Description: "EerDeviceMSH-SystematicMSH"
* identifier[0].value = "EerDeviceMSH-SystematicMSH"
* type = $EerDeviceTypeCS#MSH "Message Service Handler"
* status = #active
* deviceName.name = "SystematicMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceEUA-SystematicCura
InstanceOf: EerDevice
Description: "EerDeviceEUA-SystematicCura"
* identifier[0].value = "EerDeviceEUA-SystematicCura"
* type = $EerDeviceTypeCS#EUA "End User Application"
* status = #active
* deviceName.name = "Systematic Cura"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"