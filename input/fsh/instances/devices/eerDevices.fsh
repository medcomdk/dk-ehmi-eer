Instance: EerDeviceAP-MultiMedAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-MultiMedAP"
* id = "EerDeviceAP-MultiMedAP"
* identifier.value = "EerDeviceAP-MultiMedAP"
//* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionAP")
* definition = Reference(EerEndpointDeviceDefinition4AP)
* status = #active
* deviceName.name = "MultiMedAP"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceAP-BizKitAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-BizKitAP"
* id = "EerDeviceAP-BizKitAP"
* identifier.value = "EerDeviceAP-BizKitAP"
//* definition = Reference("StructureDefinition/EerEndpointDeviceDefinitionAP")
* definition = Reference(EerEndpointDeviceDefinition4AP)
* status = #active
* deviceName.name = "BizKitAP"
* deviceName.type = #manufacturer-name
* manufacturer = "BizKit"

Instance: EerDeviceMSH-MultiMedMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-MultiMedMSH"
* identifier.value = "EerDeviceMSH-MultiMedMSH"
//* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionMSH")
* definition = Reference(EerEndpointDeviceDefinition4MSH)
* status = #active
* deviceName.name = "MultiMedMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceMSH-NovaxEUA
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-NovaxEUA"
* identifier.value = "EerDeviceEUA-NovaxEUA"
//* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionEUA")
* definition = Reference(EerEndpointDeviceDefinition4EUA)
* status = #active
* deviceName.name = "NovaxEUA"
* deviceName.type = #manufacturer-name
* manufacturer = "Novax"

Instance: EerDeviceMSH-SystematicMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-SystematicMSH"
* identifier.value = "EerDeviceMSH-SystematicMSH"
//* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionMSH")
* definition = Reference(EerEndpointDeviceDefinition4MSH)
* status = #active
* deviceName.name = "SystematicMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceMSH-SystematicCura
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-SystematicCura"
* identifier.value = "EerDeviceEUA-SystematicCura"
//* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionEUA")
* definition = Reference(EerEndpointDeviceDefinition4EUA)
* status = #active
* deviceName.name = "Systematic Cura"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"
