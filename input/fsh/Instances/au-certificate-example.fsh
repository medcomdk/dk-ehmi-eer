/*
Alias: $smd-interfaces = http://hl7.org.au/fhir/CodeSystem/smd-interfaces
Alias: $endpoint-payload-type = http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type

Instance: example0
InstanceOf: Endpoint
Usage: #example
* extension[0].url = "http://hl7.org.au/fhir/StructureDefinition/au-receivingfacility"
* extension[=].extension[0].url = "namespace-id"
* extension[=].extension[=].valueString = "CIB"
* extension[=].extension[+].url = "universal-id"
* extension[=].extension[=].valueString = "877F9695-1298-4E6A-B432-0FDD46AD80B8"
* extension[=].extension[+].url = "universal-id-type"
* extension[=].extension[=].valueString = "GUID"
* extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/au-receivingapplication"
* extension[=].extension[0].url = "namespace-id"
* extension[=].extension[=].valueString = "Argus"
* extension[=].extension[+].url = "universal-id"
* extension[=].extension[=].valueString = "Argus:7.6.0"
* extension[=].extension[+].url = "universal-id-type"
* extension[=].extension[=].valueString = "L"
* extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509"
* extension[=].valueString = "-----BEGIN CERTIFICATE-----\r\nMIIEUjCCAzqgAwIBAgIGBWtwrJyAMA0GCSqGSIb3DQEBBQUAMFwxCzAJBgNVBAYTAkFVMRwwGgYDVQQKDBNBcmd1c0Nvbm5lY3RpbmdDYXJlMQ4wDAYDVQQLDAVBcmd1czEfMB0GA1UEAwwWQXJndXNDb25uZWN0aW5nQ2FyZU9DQTAeFw0xMDAyMDEwMTAwMDBaFw0yMDAyMDEwMTAwMDBaMFIxCzAJBgNVBAYTAkFVMRUwEwYDVQQKDAxBcmd1c0Nvbm5lY3QxLDAqBgNVBAMMI0FDQzU5NTkwMTAwMDAwMDAuaWQuYXJndXNkY2EuY29tLmF1MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtwp4wmpAF6HG//gJeqqDHoHDkT6mzkh2bJpyZ7lNvS7DTMZifS7kXBeMhfkYyoaE/LOefDo/nOvcDUrxWcIwDmrePxtih6a2+kYpacZbf6Xf01k9ROlv6mNeisaZQKX9osjtOGwk/vdVEr/i9PODX1lqX0l1FXKP9U21/zBV78YvO3/3XYrwU4EKDiDiHV94LN4pV4SPC+Qw9CgLYz0PxuMuzlEmTXpBlrHitrA8hI6QzPSEuuGbWCoPOKgG+CWP+HmMoCzkGrz/d94b9X+vrOp06BvezXgKHwYhGpLKc3H5c4S9pwc1se22uub5S0q1bZzoeQ22yOAvR/rRx6TmqQIDAQABo4IBIjCCAR4wagYDVR0RBGMwYYIjQUNDNTk1OTAxMDAwMDAwMC5pZC5hcmd1c2RjYS5jb20uYXWGOmh0dHA6Ly9ucy5hcmd1c2RjYS5jb20uYXUvc21kL2lkL2hvc3RuYW1lL0FDQzU5NTkwMTAwMDAwMDAwHwYDVR0jBBgwFoAUvLowVU1USjwCNjvruRZ9LgUSSPwwHQYDVR0OBBYEFIOhOzyPRAuzPkXA+8vQ0lQbykPsMAwGA1UdEwEB/wQCMAAwGQYDVR0gBBIwEDAOBgwqJAGPUYdqAQEBBAMwNwYDVR0lBDAwLgYEVR0lAAYIKwYBBQUHAwEGCCsGAQUFBwMCBggrBgEFBQcDAwYIKwYBBQUHAwQwDgYDVR0PAQH/BAQDAgM4MA0GCSqGSIb3DQEBBQUAA4IBAQBmp734Rx5FbpeJuh+BDkymhY2+CgRmgSxX40Dz36QuynX+lwCH7cNa/oAKz/v6McsyNApjXJIdbbJDL0P2nFQXRIE4pO0VSCmeFesQXLeASpd7Zkp/8NQWKYH/X/XNeTCEhuuYupktL/nIcq0fTyTUx5JYKoljgq3wofKMu1iR2lGD9JQXKW//v9jQgwJUgp1sc6Tc59zLYE7ZRigU9g65Pc3Fuk0r1l1oOLQBEg7Y61GoyQhv5ih0BBilgZD7m2K7ZaUD4fY5PnaQujxpkkYWEBBvInBaRZ1yMhfSCQMaGNQ77qEEezjR6uGIqVisJpbDE0W+MMWlNiYbkmnQk5/X\r\n-----END CERTIFICATE-----"
* identifier[0].system = "http://example.org/enpoint-identifier"
* identifier[=].value = "Argus SupportUnknownL"
* identifier[+].system = "http://ns.electronichealth.net.au/smd/target"
* identifier[=].value = "http://ns.argusdca.com.au/smd/id/hostname/ACC5959010000000"
* status = #active
* connectionType = $smd-interfaces#http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010
* name = "Telstra Health Secure Messaging Endpoint"
* managingOrganization.display = "Telstra Health"
* contact.system = #email
* contact.value = "cib@argus.example.net"
* contact.use = #work
* period.start = "2017-08-18"
* payloadType.coding[0] = $endpoint-payload-type#http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706
* payloadType.coding[+] = $endpoint-payload-type#http://ns.electronichealth.net.au/ds/sc/deliver/hl7Mdm/2012
* payloadType.coding[+] = $endpoint-payload-type#http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012
* payloadMimeType = #application/hl7-v2
* address = "https://uatsmd.connectingcare.com/cc.smd/SealedMessageDelivery.svc"
*/