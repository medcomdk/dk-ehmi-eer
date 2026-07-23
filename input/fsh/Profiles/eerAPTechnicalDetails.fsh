Profile: EER_AP_Organization_Owner
Parent: Organization
Id: eer-ap-organization-owner
Title: "EER AP Organization Owner"
Description: "The organization owner of an AP"
* identifier 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    CVR-ID 1..1
* identifier[CVR-ID] only CVRIdentifier
  * ^short = "VAT identification number, [DA] CVR-nummer"
* name 1..1
  * ^short = "The name of the organization. This is the name that will be displayed in the SMP"
* extension contains
    SmpOrganizationIdExtension named smpOrgId 0..1 MS and
    SmpMTLSKeyExtension named smpMTLSKey 1..* MS

* type 0..0
* telecom 0..0
* address 0..0
* partOf 0..0
* contact 0..0
* endpoint 0..0

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
* owner only Reference(EER_AP_Organization_Owner)
* owner 1..1
* extension contains
    SmpPublicKeyExtension named smpPublicKey 1..1 MS

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