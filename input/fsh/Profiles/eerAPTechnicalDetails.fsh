Profile: EER_AP_Technical_Details
Parent: EerDevice
Id: eer-ap-technical-details
Title: "EER AP Technical Details"
Description: "Technical details of an eDelivery Access Point (AP) for registration in the SMP/PORS API"
* type = $EerDeviceTypeCS#AP
* status 1..1
  * ^short = "If the AP is not 'active' it won't be registered in the SMP"
* deviceName 1..1
  * name 1..1
    * ^short = "The name of the device and the name of the organization operating the device. Example: 'Aarhus AP - KIT'"
  * type = http://hl7.org/fhir/device-nametype#user-friendly-name
    * ^short = "The name should be user friendly as it is used to distinguish APs in the SMP"
* contact 1..*
  * ^short = "The contact details, which will be included in the SMP registration. Used for troubleshooting and support"
  * system 1..1
  * value 1..1
* url 1..1
  * ^short = "The technical eDelivery URL address of the endpoint. This is the address that is used in the SMP"
* owner 1..1
* owner only Reference(EerMessagingOrganization)
  * ^short = "The organization that owns the AP. This is used to create the organization in the SMP and associate the certificates with it"

* extension contains
    SmpOrganizationIdExtension named smpOrgId 0..1 MS and
    SmpPublicKeyExtension named smpPublicKey 1..1 MS and
    SmpMTLSKeyExtension named smpMTLSKey 1..* MS


* definition 0..0
* udiCarrier 0..0
* statusReason 0..0
* distinctIdentifier 0..0
* manufactureDate 0..0
* expirationDate 0..0
* lotNumber 0..0
* serialNumber 0..0
* modelNumber 0..0
* partNumber 0..0
* specialization 0..0
* version 0..0
* property 0..0
* patient 0..0
* location 0..0
* safety 0..0
* parent 0..0