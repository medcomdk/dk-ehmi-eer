Instance: SearchParameter-MessageType
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EERMessageTypeSearchParameter"
* description = "Search EerMessagingOrganization resources by Message Type i.e. endpoint payloadType"
* code = #messageType
* base = #Organization
* type = #token
* expression = "Organization.endpoint.resolve().payloadType.coding"
