Instance: EerDeviceAP-MultiMedAP
InstanceOf: EerDeviceAP
Description: "EerDeviceAP-MultiMedAP"
* id = "EerDeviceAP-MultiMedAP"
* identifier.value = "EerDeviceAP-MultiMedAP"
* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionAP")
* status = #active
* deviceName.name = "MultiMedAP"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceMSH-MultiMedMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-MultiMedMSH"
* identifier.value = "EerDeviceMSH-MultiMedMSH"
* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionMSH")
* status = #active
* deviceName.name = "MultiMedMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "MultiMed"

Instance: EerDeviceMSH-NovaxEUA
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-NovaxEUA"
* identifier.value = "EerDeviceEUA-NovaxEUA"
* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionEUA")
* status = #active
* deviceName.name = "NovaxEUA"
* deviceName.type = #manufacturer-name
* manufacturer = "Novax"

Instance: EerDeviceMSH-SystematicMSH
InstanceOf: EerDeviceMSH
Description: "EerDeviceMSH-SystematicMSH"
* identifier.value = "EerDeviceMSH-SystematicMSH"
* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionMSH")
* status = #active
* deviceName.name = "SystematicMSH"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"

Instance: EerDeviceMSH-SystematicEUA
InstanceOf: EerDeviceEUA
Description: "EerDeviceEUA-SystematicEUA"
* identifier.value = "EerDeviceEUA-SystematicEUA"
* definition = Reference("http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerEndpointDeviceDefinitionEUA")
* status = #active
* deviceName.name = "Systematic Cura"
* deviceName.type = #manufacturer-name
* manufacturer = "Systematic"
