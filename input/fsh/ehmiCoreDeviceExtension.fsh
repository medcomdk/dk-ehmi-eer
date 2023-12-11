Extension: ehmiCoreSystemExtension
Id: ehmi-core-system-extension
Title:        "ehmi Core System Extension"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses"
* system Reference(Device) 0.. MS SU

Extension: ehmiCoreNetworkSupplySystemExtension
Id: ehmi-dk-core-network-supply-system-extension
Title: "ehmiCoreDeviceExtension"
Description: "Reference to a Device that is used to specify one or more systems which an Endpoint uses"
* networkSupplySystem Reference(Device) 0.. MS SU

/*
Profile:      ehmiCoreSystemExtension
Parent:       ehmiCoreDeviceExtension
Id:           ehmi.dk.core.system.extension
Title:        "ehmi Core System Extension"
Description:  """
A profile on the ehmiCoreDeviceExtension.
"""

Profile:      ehmiCoreNetworkSupplySystemExtension
Parent:       ehmiCoreDeviceExtension
Id:           ehmi.dk.core.network-supply-system.extension
Title:        "ehmi Core NetworkSupplySystem Extension"
Description:  """
A profile on the ehmiCoreDeviceExtension.
"""
* networkSupplierSystem Reference(Device) 0.. MS SU
*/
/* value[x] 0..1
* value[x] only Reference(MedComCorePractitionerRole or MedComCoreCareTeam)
* value[x] ^type.aggregation = #bundled
* value[x] ^short = "This element is used to describe a more specific sender than the MessageHeader.sender. It may be a careteam a homecare group in the municipality or a named general practitioner."
- SystemTypeIdentifier
- SystemSupplierIdentifier
- CommunicationSupplierIdentifier
 */