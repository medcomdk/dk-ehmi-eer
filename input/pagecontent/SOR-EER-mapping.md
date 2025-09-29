Traditionally messaging metadata for a SOR unit has been placed in SOR and SOR-EDI.

EER replaces and reorganizes how these messaging metadata are represented.

The following table gives and overview of how these messaging metadata are mapped and reorganized in EER:

<table style="width:90%; border: 1px solid black; border-collapse: collapse;">
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <th>SOR</th>
    <th>EER</th>
    <th>Link</th>
    <th>Notes</th>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>SOR-Unit</td>
    <td>EER-Organization</td>
    <td><a href="./StructureDefinition-Eer.Messaging.Organization.html">EER-SOR-Organization</a></td>
    <td>Note, that this is EER-SOR-Organization representing the SOR-Unit is only carrying the most necessary information from SOR. It is not a complete representation of the SOR unit. It holds the relationship between the SOR-unit and the EER-Endpoint. <b><i>Most importantly it will not carry the GLN-identifier as it has been moved to the Endpoint ressource.</i></b></td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>SOR-EDI</td>
    <td>EER-Endpoint with MedCom MessageDefinitions as payloadType</td>
    <td><a href="./StructureDefinition-eer.dk.endpoint.html">EER-Endpoint</a></td>
    <td>EER-Endpoint represents or hold relationsships to all metadata regarding an endpoint in EHMI. EER-Endpoint holds relationsships to all MedCom Messages through the references of payloadTypes (MedCom MessageDefinitions). A MedCom MessageDefinition is defined together with the FHIR Message Profile and is included in an IG.</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>SOR-GLN (attribute)</td>
    <td>EER-Endpoint</td>
    <td><a href="./StructureDefinition-eer.dk.endpoint.html">EER-Endpoint</a></td>
    <td>In EHMI messaging it will hold  SOR-GLN is now the primary identifier of an EER-Endpoint ressource.</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>SOR-System (attribute)</td>
    <td>EER-Device</td>
    <td><a href="./StructureDefinition-EerDevice.html">EER-Device</a></td>
    <td>EER-Device represents the System, End-User Application (EUA), that operates for the organization on the endpoint. Only MedCom Certified Systems can appear as a EER-device.</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>SOR-Network Supply System (attribute)</td>
    <td>EER-Device</td>
    <td><a href="./StructureDefinition-EerDevice.html">EER-Device</a></td>
    <td>EER-Device represents the network System, Message Service Handler (MSH) or eDelivery Access Point (AP), that operates for the organization on the endpoint. While SOR-System is the actal EUA, the SOR-Network is the more technical device that connects with the EHMI Network. Only MedCom Certified Systems can appear as a EER-device.</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td>x</td>
    <td>y</td>
    <td>Link</td>
    <td>z</td>
  </tr>
</table>