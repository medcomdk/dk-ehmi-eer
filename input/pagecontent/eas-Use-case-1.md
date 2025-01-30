# Get Receiver metadata by SORID

An End User Application, EUA, calls EAS to retrieve the necessary message address metadata information for a potential receiver of a message. The sequence diagram for this is as follows:

<img src="./eer_eas_1_1_getReceiverDataBySorId.png" alt="1_1_getReceiverData_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
Initially, when EAS receives this request, the given organization id is validated, after which relevant organization information associated with the organization id is obtained from SOR. With this and the type of message to be sent, the EER Endpoint Register (EER) is then called to obtain the GLN number and other relevant information, and finally the response is packed and sent back to the caller of EAS. The message type is, again, needed in the second call to EAS, such that EAS can return the correct response for the given message type – it could for example be that the system of the general practitioner does not support receiving the particular type of message.

<!--This use case is conforming to this OperationDefinition: <a href="http://medcomehmi.dk/ig/dk-ehmi-eas/OperationDefinition-eas.getReceivingOrganizationBySORId.html">OperationDefinition-eas.getReceivingOrganizationBySORId</a--> 

This use case is conforming to this OperationDefinition: 

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eer.getReceivingOrganizationBySORId

    URL: [base]/getReceivingOrganizationBySORID/EerCoreOrganization?identifer=[SOR-identifer]&MessageType=[MessageType]

    Input parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerCoreOrganization

    Output parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerMessagingOrganization

# Error use cases for EAS use case 1

- error use case 4a - SOR-Information does not exist

### Error use case 1a - EER-ReceiverData does not exist

Should an error occur when calling EER to obtain the GLN number and other relevant information, an error response stating this is packed and returned to the caller of EAS as illustrated by:

<img src="./eer_eas_1_1_getReceiverDataBySorId_error1.png" alt="1_1_getReceiverData_error1_getReceivingOrganizationBySORId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

 