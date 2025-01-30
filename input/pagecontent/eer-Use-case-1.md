# Get Device metadata by DeviceID

A MSH or AP calls EER to retrieve the necessary Device metadata information for its own use to handle the data required by EDS DeliveryStatus registrations. The data is pretty static, so it's possible to store this locally and save the infrastructure for too many calls on this.

The sequence diagram for this is as follows:

<img src="./eer_getDeviceDataByDeviceId.png" alt="eer_getDeviceDataByDeviceId" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">
 
<!--This use case is conforming to this OperationDefinition: <a href="http://medcomehmi.dk/ig/dk-ehmi-eas/OperationDefinition-eas.getReceivingOrganizationBySORId.html">OperationDefinition-eas.getReceivingOrganizationBySORId</a--> 

This use case is conforming to this OperationDefinition: 

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eer.eer_getDeviceDataByDeviceId

    URL: [base]/eer_getDeviceDataByDeviceId/Device?identifer=[Device-identifer]

    Input parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/Device

    Output parameters Profile:

    http://medcomehmi.dk/ig/dk-ehmi-eer/StructureDefinition/EerDevice

# Error use cases for EER use case 1

- error use case 4a - EerDevice-Information does not exist

### Error use case 1a - EER-DeviceData does not exist

Should an error occur when calling EER to obtain the EerDevice metadata, an error response stating this is packed and returned to the caller of EER as illustrated by:

<img src="./eer_getDeviceDataByDeviceId_error1.png" alt="eer_getDeviceDataByDeviceId_error1" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

 