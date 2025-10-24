// TODO: All these need the type element, such as "EUA" for EerDeviceEUA
Instance: EerDeviceAP-MultiMedAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-MultiMedAP"
* id = "EerDeviceAP-MultiMedAP"
* identifier.value = "EerDeviceAP-MultiMedAP"
* definition = Reference(EerDeviceDefinitionAP)
* status = #active
* deviceName.name = "MultiMedAP"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"
// TODO: Currently we will then have the type both in the EerDeviceDefinition and the EerDevice instances, is that ok?
// There are instances where you can have two different types in the definition and the instance.. That shouldn't be allowed if we keep it both places, then we need an invariant
// actually what does the devicedefinition do? It does nothing currently.
// the device type definition is a sort of categorization of devices. Do we need that? 
// TODO: I'm going to suggest to just delete the DeviceDefinition entirely
// KISS, keep it simple stupid
* type = $EerDeviceTypeCS#AP "eDelivery Access Point"

Instance: EerDeviceAP-KvalitetsItAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-KvalitetsItAP"
* id = "EerDeviceAP-KvalitetsItAP"
* identifier.value = "EerDeviceAP-KvalitetsItAP"
* definition = Reference(EerDeviceDefinitionAP)
* status = #active
* deviceName.name = "BizKitAP"
* deviceName.type = #manufacturer-name
* manufacturer = "BizKit"

Instance: EerDeviceMSH-MultiMedMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-MultiMedMSH"
* identifier.value = "EerDeviceMSH-MultiMedMSH"
* definition = Reference(EerDeviceDefinitionMSH)
* status = #active
* deviceName.name = "MultiMedMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceMSH-EGClineaEUA
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-EGClineaEUA"
* identifier.value = "EerDeviceEUA-EGClineaEUA"
* definition = Reference(EerDeviceDefinitionEUA)
* status = #active
* deviceName.name = "EGClineaEUA"
* deviceName.type = #manufacturer-name
* manufacturer = "Novax"

Instance: EerDeviceMSH-SystematicMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-SystematicMSH"
* identifier.value = "EerDeviceMSH-SystematicMSH"
* definition = Reference(EerDeviceDefinitionMSH)
* status = #active
* deviceName.name = "SystematicMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceMSH-SystematicCura
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-SystematicCura"
* identifier.value = "EerDeviceEUA-SystematicCura"
* definition = Reference(EerDeviceDefinitionEUA)
* status = #active
* deviceName.name = "Systematic Cura"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceDefinitionAP
InstanceOf: EerDeviceDefinition
Description: "An EerDeviceDefinition-AP instance of the EerDeviceDefinition-AP resource."
* identifier.value = "EerDeviceDefinitionAP"
* type = $EerDeviceTypeCS#AP "eDelivery Access Point"

Instance: EerDeviceDefinitionMSH
InstanceOf: EerDeviceDefinition
Description: "An EerDeviceDefinition-MSH instance of the EerDeviceDefinition-MSH resource."
* identifier.value = "EerDeviceDefinitionMSH"
* type = $EerDeviceTypeCS#MSH "Message Service Handler"

Instance: EerDeviceDefinitionEUA
InstanceOf: EerDeviceDefinition
Description: "An EerDeviceDefinition-EUA instance of the EerDeviceDefinition-EUA resource."
* identifier.value = "EerDeviceDefinitionEUA"
* type = $EerDeviceTypeCS#EUA "End User Application"
