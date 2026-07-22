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

Extension: SmpOrganizationIdExtension
Id: smp-organization-id
Title: "SMP Organization ID"
Description: "The organization ID of the owner of the AP in the SMP/PORS API"
* value[x] only string
* valueString 1..1

Extension: SmpCertificateIdExtension
Id: smp-certificate-id
Title: "SMP Certificate ID"
Description: "The SMP/PORS assigned identifier of a certificate"
* value[x] only string
* valueString 1..1

Extension: SmpPublicCertificateExtension
Id: smp-public-certificate
Title: "SMP Public Certificate"
Description: "The Base64 certificate body: the content between the PEM BEGIN CERTIFICATE and END CERTIFICATE lines"
* value[x] only base64Binary
* valueBase64Binary 1..1

Extension: SmpCertificateSubjectExtension
Id: smp-certificate-subject
Title: "SMP Certificate Subject"
Description: "The subject from the MitID Erhverv system certificate"
* value[x] only string
* valueString 1..1

Extension: SmpPublicKeyExtension
Id: smp-public-key
Title: "SMP Public Key"
Description: "The public certificate used by the SMP for eDelivery message exchange"
* value[x] 0..0
* extension contains
    SmpCertificateIdExtension named certificateId 0..1 MS and
    SmpPublicCertificateExtension named certificate 1..1 MS

Extension: SmpMTLSKeyExtension
Id: smp-mtls-key
Title: "SMP mTLS Key"
Description: "The MitID Erhverv system-certificate subject used for SMP/SML mTLS access"
* value[x] 0..0
* extension contains
    SmpCertificateIdExtension named certificateId 0..1 MS and
    SmpCertificateSubjectExtension named certificateSubject 1..1 MS

Extension: SmpParticipantIdExtension
Id: smp-participant-id
Title: "SMP Participant ID"
Description: "The participant ID of the endpoint in the SMP/PORS API"
* value[x] only string
* valueString 1..1

Extension: SmpReceiverServiceIdExtension
Id: smp-receiver-service-id
Title: "SMP Receiver Service ID"
Description: "The receiver service ID of the endpoint in the SMP/PORS API"
* value[x] only string
* valueString 1..1