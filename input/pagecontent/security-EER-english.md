**Disclaimer:**

        The security architecture is described in Danish in this document: 
        "Sikkerhedsarkitektur EHMI services v 0.98"*

        For developmenters parts of the security architecture is described in english
         and is outlined here on this page for EHMI Delivery Status (EDS). 

        However - when it comes to discussion of the true interpretation of the security architecture, 
        the Danish original is the true source of this interpretation. 
        In other words the Danish original and the meaning in Danish will 
        be the foundation of the interpretation.

<a href="https://medcomdk.github.io/ehmi/assets/documents/security/media/Sikkerhedsarkitektur%20EHMI%20services%20v098.pdf" target=_blank>*The document "Sikkerhedsarkitektur EHMI services v 0.98/Security architechture regarding EHMI central services v 0.98" can be found here (opens a new window)</a>

## Security for EHMI Endpoint Register (EER)

In the EHMI Endpoint Register (EER), the parties in the EHMI messaging infrastructure manage endpoint addresses for their various organizational units that need to receive messages.

The EHMI Addressing Service (EAS) is expected to be the sole consumer of EER data. EER serves as one of the authoritative sources that EAS uses to provide a unified search interface for EHMI users.

### EER usecases

There are two primary use cases for the EHMI Endpoint Register (EER):

1.  *Search and Lookup*:  
    EER provides an interface for searching and looking up organizations’ endpoints. In the production pilot (and likely in the long term), the EHMI Addressing Service (EAS) is the sole consumer of this interface.
2.  *Setup and Administration*:  
    EER provides an interface for setting up and managing organizations’ endpoints. Setup and administration are performed at the superuser level for the user’s organization. Superusers can gain access via a special administrator privilege assigned through the SEB User Catalog.

### Enrollment/Whitelisting of System Clients in EER (for Search and Lookup)

The EHMI Addressing Service (EAS), which is currently the only client performing searches and lookups in EER, is enrolled as a system client using the elements described in section 3.3 (Client Enrollment) __*of the general ‘Sikkerhedsmodel’*__. The following scope element is specified:

<table border="1">
    <tr>
        <td>EER system/Endpoint.rs system/Organization.rs</td>
    </tr>
</table>

**Metadata for an EER System Client**

No additional metadata needs to be specified beyond what is described in section 3.3.1 (Metadata for Clients) __*of the general ‘Sikkerhedsmodel’*__.

Example metadata document for an EER system client (i.e., the EHMI Addressing Service):

```
{
  "token_endpoint_auth_method": "tls_client_auth",
  "grant_types": [
    "client_credentials"
  ],
  "client_name": "Sundhedsadresseringsservice (EAS)",
  "scope": " EER system/Endpoint.rs system/Organization.rs",
  "contacts": [
    "eas-support@ehmi.dk"
  ],
  "tls_client_auth_subject_dn": "subject=CN=Systemleverandør ABC’s systemcertifikat, serialNumber=UI:DK-O:G:7000b95d-b9bc-415d-88fe-5561859e7399, O= Systemleverandør ABC, organizationIdentifier=NTRDK-34567812, C=DK"
}
```

### Enrollment/Whitelisting of User Clients (for Administration)

User clients used by superusers to manage entries in the Endpoint Register (EER) are enrolled solely with the elements described in section 3.3 (Client Enrollment) __*of the general ‘Sikkerhedsmodel’*__.

The following scope element is specified during enrollment:

<table border="1">
    <tr>
        <td>EER user/Endpoint.cruds user/Organization.cruds</td>
    </tr>
</table>

**Metadata for an EER User Client for Administration of Endpoint Register Entries**

For EER user clients, only the metadata elements described in section 3.3.1 (Metadata for Clients) __*of the general ‘Sikkerhedsmodel’*__ need to be specified.

Example metadata document for an EER user client:

```
{
  "token_endpoint_auth_method": "tls_client_auth",
  "grant_types": [
    "authorization_code",
    "refresh_token"
  ],
  "client_name": "Postkasseregister web-admin",
  "scope": "EER user/Endpoint.cruds user/Organization.cruds",
  "contacts": [
    "eer-support@ehmi.dk"
  ],
  "tls_client_auth_subject_dn": " subject=CN=Systemleverandør XYZ’s systemcertifikat, serialNumber=UI:DK-O:G: c91eada9-90a7-4187-94a3-f880df10348a, O= Systemleverandør XYZ, organizationIdentifier=NTRDK-67812345, C=DK",
  "redirect_uris": [
    "https://eer.ehmi.dk/web-admin"
  ]
}
```

### Calls to the Token Endpoint

To obtain an access token for accessing EER, the following scopes are specified:

<table border="1">
    <tr>
        <th> <b>Scope</b> </th> <th> Description </th>
    </tr>
    <tr>
        <td>EER</td><td>Indicates that the client is requesting an access token for EER.</td>
    </tr>
    <tr>
        <td>system/Endpoint.rs</td><td>(For system clients only) Specifies that the token should allow reading/searching for EER resources (which are FHIR bundles consisting of profiles Endpoint and Organization resources).</td>
    </tr>
    <tr>
        <td>system/Organization.rs</td><td>For system clients only) Specifies that the token should allow reading/searching for EER resources (which are FHIR bundles consisting of profiles Endpoint and Organization resources).</td>
    </tr>
    <tr>
        <td>user/Endpoint.cruds</td><td>(For user clients only) Specifies that the token should allow creating/reading/updating/deleting Endpoint resources (which are FHIR bundles consisting of profiles Endpoint and Organization resources).</td>
    </tr>
    <tr>
        <td>user/Organization.cruds</td><td>(For user clients only) Specifies that the token should allow creating/reading/updating/deleting Endpoint resources (which are FHIR bundles consisting of profiles Endpoint and Organization resources).</td>
    </tr>
</table>



**Validation of Calls at the Authorization Server**

Calls to the Token Endpoint are validated by the Authorization Server, which verifies the client’s TLS client certificate and checks that the client is enrolled/whitelisted with the specified scopes.

### Calls to EER

Calls to EER are made as described in the general security model, using REST calls over mutual TLS (two-way TLS), with the access token (which is sender-constrained) included in an HTTP header.

Example of a system clients call …. \<TODO\>

```
POST /base/XXXXXX HTTP/1.1
Host: eer.ehmi.dk
Accept: application/fhir+json
Content-Type: application/fhir+json
Content-Length: 6112
Authorization: Bearer eyJhb ... Dhi6g

{
  "parameter": [
    {
      "name": "YYYY",
      "resource": {
        "resourceType": "ZZZZ",
        // ZZZZ resource
      }
    }
  ]
}
```

**EER Access Control**

The Endpoint Register (EER) enforces access control by verifying that the access token is valid and confirming the “sender-constrained” property. This involves ensuring that the TLS client certificate used by the client matches the certificate embedded within the access token. Additionally, the token must have been issued for EER as the intended recipient.

For *searches and lookups*, the EER ensures that the access token contains the necessary scopes to authorize the client to perform the requested operations within the register.

For *administering endpoint register entries*, access is restricted to entries associated with the user’s own organization, based on the CVR number. The EER first checks that the user has been assigned a superuser role, as indicated in the priv claim of the access token. It then limits access to entries where the organization’s CVR number matches the cvr claim in the token, ensuring administrative privileges are confined to the relevant organization.