Instance: SearchParameter-SmpParticipantId
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpParticipantIdSearchParameter"
* description = "Search Endpoint resources by SMP/PORS participant ID"
* code = #smp-participant-id
* base = #Endpoint
* type = #token
* expression = "Endpoint.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-participant-id').value"

Instance: SearchParameter-SmpReceiverServiceId
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpReceiverServiceIdSearchParameter"
* description = "Search Endpoint resources by SMP/PORS receiver service ID"
* code = #smp-receiver-service-id
* base = #Endpoint
* type = #token
* expression = "Endpoint.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-receiver-service-id').value"

Instance: SearchParameter-SmpOrganizationId
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpOrganizationIdSearchParameter"
* description = "Search Organization resources by SMP/PORS organization ID"
* code = #smp-organization-id
* base = #Organization
* type = #token
* expression = "Organization.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-organization-id').value"

Instance: SearchParameter-SmpMTLSCertificateId
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpMTLSCertificateIdSearchParameter"
* description = "Search Organization resources by SMP/PORS mTLS certificate ID"
* code = #smp-certificate-id
* base = #Organization
* type = #token
* expression = "Organization.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-mtls-key').extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-certificate-id').value"

Instance: SearchParameter-SmpMTLSCertificateSubject
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpMTLSCertificateSubjectSearchParameter"
* description = "Search Organization resources by SMP/PORS mTLS certificate subject"
* code = #smp-certificate-subject
* base = #Organization
* type = #token
* expression = "Organization.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-mtls-key').extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-certificate-subject').value"

Instance: SearchParameter-SmpPublicKeyCertificateId
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "SmpPublicKeyCertificateIdSearchParameter"
* description = "Search Device resources by SMP/PORS public-key certificate ID"
* code = #smp-certificate-id
* base = #Device
* type = #token
* expression = "Device.extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-public-key').extension('http://medcomehmi.dk/ig/eer/StructureDefinition/smp-certificate-id').value"