Extension: SMP_PEM_Certificate
Id: smp-pem-certificate
Title: "SMP PEM Certificate"
Description: "PEM encoded public certificate for use in the eDelivery network"
* value[x] only string

Extension: SMP_mTLS_Certificate
Id: smp-mtls-certificate
Title: "SMP mTLS Certificate"
Description: "PEM encoded mutual TLS certificate for use in the eDelivery network"
* value[x] only string

Profile: EER_AP_Technical_Details
Parent: EerDevice
Id: eer-ap-technical-details
Title: "EER AP Technical Details"
Description: "Technical details of an eDelivery Access Point (AP) for registration in the SMP/PORS API"
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* identifier contains
    SMP-Org-Id 0..1 and
    SMP-PEM-Certificate-Id 0..1 and
    SMP-mTLS-Certificate-Id 0..1

* identifier[SMP-Org-Id] only EDeliveryIdentifier
  * type = EDeliveryIdentifiersCS#smp-org-id
  * ^short = "The organization ID of the AP in the SMP/PORS API."
* identifier[SMP-PEM-Certificate-Id] only EDeliveryIdentifier
  * type = EDeliveryIdentifiersCS#smp-pem-certificate-id
  * ^short = "The PEM certificate ID of the AP in the SMP/PORS API."
* identifier[SMP-mTLS-Certificate-Id] only EDeliveryIdentifier
  * type = EDeliveryIdentifiersCS#smp-mtls-certificate-id
  * ^short = "The mTLS certificate ID of the AP in the SMP/PORS API."

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

* extension contains SMP_PEM_Certificate named smpCertificate 1..1 MS
* extension[smpCertificate]
  * ^short = "The PEM encoded certificate used in the SMP for eDelivery message exchange"
* extension contains SMP_mTLS_Certificate named smpMTLSCertificate 1..1 MS
* extension[smpMTLSCertificate]
  * ^short = "The p.12 public MitId System Certificate modifier. Can be found by calling https://registrationservice-demo.nemhandel.dk/nemhandelpors/rest/business/isAgreementAccepted with your MitId system certificate. The output looks something like 'Current certificate or sector9 user ID (sub) (CVR:11111111-UID:UI:DK-O:G:f9fa19ef-e64e-4c25-bf37-fdc14970daf5)' and the public modifier is everything in the parentheses. Example: 'CVR:11111111-UID:UI:DK-O:G:f9fa19ef-e64e-4c25-bf37-fdc14970daf5'"

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

Profile: EDeliveryIdentifier
Parent: Identifier
Id: edelivery-identifier
Title: "eDelivery Identifier"
Description: "Unique id associated with some resource within the eDelivery SMP network"
* value 1..
* type 1..1
  * coding from EDeliveryIdentifiersVS (required)
  * text 0..0

* use 0..0
* system 0..0
* period 0..0
* assigner 0..0

CodeSystem: EDeliveryIdentifiersCS
Id: edelivery-identifiers
Title: "eDelivery Identifiers"
Description: "Identifiers within the eDelivery SMP network"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* #smp-org-id "SMP Organization Id"
* #smp-pem-certificate-id "SMP PEM Certificate Id"
* #smp-mtls-certificate-id "SMP mTLS Certificate Id"
* #smp-participant-id "SMP Participant Id"
* #smp-receiver-service-id "SMP Receiver Service Id"

ValueSet: EDeliveryIdentifiersVS
Id: edelivery-identifiers-vs
Title: "eDelivery Identifiers VS"
Description: "Identifiers within the eDelivery SMP network"
* include codes from system EDeliveryIdentifiersCS