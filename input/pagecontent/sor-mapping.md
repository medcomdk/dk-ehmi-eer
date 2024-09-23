# EER Endpoint Register (EER) and SOR

Traditionally messaging metadata for a SOR unit has been placed in SOR and SOR-EDI.

EER replaces and reorganizes how these messaging metadata are represented.

The following table gives and overview of how these messaging metadata are mapped and reorganized in EER:

<table style="width:80%; border: 1px solid black; border-collapse: collapse;">
  <th>
    <td>SOR</td>
    <td>EER</td>
    <td>Link</td>
    <td>Notes</td>
  </th>
  <tr>
    <td>SOR-Unit</td>
    <td>EER-Organization</td>
    <td>Link</td>
    <td>Note, that this is EER-Organization representing the SOR-Unit is only caarying the most necessary information from SOR. It is not a complete representation of the SOR unit. It holds the relationship between the SOR-unit and the EER-Endpoint. <b><i>Most importantly it will not carry the GLN-identifier as it has been moved to the Endpoint ressource</i></b></td>
  </tr>
  <tr>
    <td>SOR-GLN</td>
    <td>EER-Endpoint</td>
    <td><a href="./StructureDefinition-eer.dk.endpoint.html"></td>
    <td>EER-Endpoint represents or hold relationsships to all metadata regarding an endpoint in EHMI. In EHMI messaging it will hold  SOR-GLN is now the primary identifier of an EER -Endpoint ressource</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>Link</td>
    <td></td>
  </tr>
</table>