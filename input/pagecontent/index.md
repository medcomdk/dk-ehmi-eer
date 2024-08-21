# EHMI Endpoint Register (EER)

The EHMI Endpoint Register (EER) Profile supports discovery of Endpoint adresses related to a SOR Unit in Danish Healthcare using a RESTful interface.

The profile is based upen and inspired by the IHE mCSD profile and the use cases and solutions using mCSD are outlined in the [mCSD White Paper](https://profiles.ihe.net/ITI/papers/mCSD/index.html).

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



