# EHMI Endpoint Register (EER)

***

    **Disclaimer** 
    
    **To be specified in Q2 2024**

<br/> 
The EHMI Endpoint Register (EER) Profile supports discovery of Endpoint adresses related to a SOR Unit in Danish Healthcare using a RESTful interface.

The profile is based upen and inspired by the IHE mCSD profile and the use cases and solutions using mCSD are outlined in the mCSD White Paper.

This version of the profile supports registration of and querying for the following use cases:

**EHMI Core**
- Registration of communicating SOR organizational units
- Registration of endpoints correlating with a SOR organizational unit

  **ehmiSMP**
  - registration of eDelivery Access Points (AP) as Devices for a SOR organizational unit and its EHMI Endpoint
  - registration of SMP metadata for the SMP lookup service for certain messages (documents) for a given EHMI Endpoint

**EHMI Addressing Service**
- getReceiverDataBySORID

**EHMI Delivery Status**
- registration of reporting Devices for a "station" in the messageflow.
- getting data for reporting Devices in the messageflow.
<!--
The EHMI Endpoint Register (EER) Profile supports registration and discovery of Endpoint adresses related to a SOR Unit in Danish Healthcare using a RESTful interface.
-->
<!--
As SOR will be developed to host only the regular physical locations of an organizational unit, EER will take over the role of SOR-EDI, which hosts the GLN number of a SOR unit and its supported messagetypes. GLN is the actual foreign key to SOR in SOR-EDI. In EER the foreign key to SOR will be the SORID. Thereby the SOR Unit will be able to have more Endpoints expressed by GLN. Util the transition of SOR to be able to handle this, EER will be limited to have only one GLN per SOR unit.
-->
<!--
EER will in the first version serve the following purposes:
- EER will be the authoritative register for FHIR messaging endpoints
- EER will be the authoritative register for FHIR document sharing endpoints for FHIR messages
- EER will be the master register for SMP registrations (EHMI Core) for the above
- EER will serve EHMI Addressing Service (EAS) in EAS's effort to deliver the correct receiverdata for a messaging sender.
-->
<!--
**As expressed in "Elaborated Vision for Message Communication in the Health Sector" (slightly reformulated):**
-->
<!--
Information about an organizational unit’s mailbox is available in SMP, which opens an important distinction. On one hand, a mailbox is related to the organizational unit it receives messages for and, on the other, a mailbox is also related to the message infrastructure itself through which the messages are sent. 
-->
<!--
SMP is part of the latter, but today the mailbox information is located in SOR, that is, very closely coupled to the former. In order to accommodate both, and to make the existing coupling to SOR less tight as well as to allow for the one-to-many relation between an organizational unit and its mailboxes, it is decided to move the mailbox information to an independent register of mailboxes outside SOR. 
-->
<!--
In this way, the three distinct business-related concepts of organizational unit, mailbox, and message types are separated into three separate but related registers SOR, EER, and SMP. 
-->
<!--
**_As expressed in "Elaborated Vision for Message Communication in the Health Sector" a decision on which IHE directory service should be followed, it is decided to follow the mCSD profile, while being pragmatic to this approach and develop it as needed in versions_**
-->
<!--
<br/> 
-->
<!--
## An outline of the components of the EHMI Endpoint Register (EER) can be seen here:
-->
<!--
<br/> 
-->
<!-- 
![EHMI Endpoint Register and its surrounding components](/ehmi/assets/images/ehmi-eas-and-eer.png )
-->
