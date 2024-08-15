# Get Receiver metadata by SORID

An EUA calls EAS to retrieve the necessary message address metadata information for a potential receiver of a message. The sequence diagram for this is as follows:

<img src="./1_1_getReceiverData.png" alt="1_1_getReceiverData_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
Initially, when EAS receives this request, the given organization id is validated, after which relevant organization information associated with the organization id is obtained from SOR. With this and the type of message to be sent, the EHMI Endpoint Register (EER) is then called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the second call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

This use case is conforming to this OperationDefinition: <a href="OperationDefinition-eas.getReceivingOrganizationBySORId.html">OperationDefinition-eas.getReceivingOrganizationBySORId</a> 

# Error use cases for EAS use case 1

- error use case 4a - SOR-Information does not exist
- error use case 4b - EER-ReceiverData does not exist

### Error use case 1a - EER-ReceiverData does not exist

Correspondingly, should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

<img src="./1_1a_getReceiverData_error1.png" alt="1_1a_getReceiverData_error1_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
