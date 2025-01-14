# EER Endpoint Register (EER)

The EER Endpoint Register (EER) Profile supports RESTful queries across related care services resources and discovery of Endpoint addresses related to a SOR Organizational Unit in Danish Healthcare using a RESTful interface.

This version of the profile supports registration of and querying for the following use cases:

**EHMI Core**
- Registration of communicating SOR Organizational units
- Registration of Endpoints correlating with a SOR organizational unit

  **ehmiSMP**
    - registration of eDelivery Access Points (AP) as Devices for a SOR organizational unit and its EHMI Endpoint
    - registration of SMP metadata for the SMP lookup service for certain messages (documents) for a given EHMI Endpoint

<br>

**EHMI Addressing Service**
- getReceiverDataBySORID
  - This means that a search for Receiver Data will be a search for an organization where 
      - the input parameter will be a SORID 
      - the output will be an Organization ressource with its corresponding Endpoint

<br>

**EHMI Delivery Status**
- registration of reporting Devices for a "station" in the messageflow.
- getting data for reporting Devices in the messageflow.

<br>

## Relationship with and scoping to IHE MCSD

The profile is based upon and inspired by the IHE mCSD profile and the use cases and solutions using mCSD are outlined in the [mCSD White Paper](https://profiles.ihe.net/ITI/papers/mCSD/index.html).

Currently supported profiles of the IE MSCD profiles stated in [1:46 Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/IHE-IHE-volume-1.html#1-46-mobile-care-services-discovery-mcsd) are:

**1. Organization**

Organizations are “umbrella” entities; these may be considered the administrative bodies under whose auspices care services are provided such as Healthcare Information Exchanges(HIEs), Integrated Delivery Networks (IDNs), Non-Government Organizations (NGOs), Faith-Based Organizations (FBOs) or even a one-physician family practice. An organization has a unique identifier and may have additional administrative attributes such as contact person, mailing address, etc. Departments of an institution, or other administrative units, may be represented as child Organizations of a parent Organization.

**7. Endpoint**

An Organization may be reachable for electronic data exchange through electronic Endpoint(s). An Endpoint may be a FHIR server, an IHE web services actor, or some other mechanism. If an Organization does not have an Endpoint, it may still be reachable via an Endpoint at its parent Organization or an affiliated Organization.

**Other MCSD Profiles**

Other profiles like the following will be considered supported in the coming versions of EER.

  2. Facility
  3. Location 
  4. Jurisdiction 
  5. Practitioner 
  6. Healthcare Service 
  8. OrganizationAffiliation 

## EER actors and transactions

EER will support the following MCSD actors and their transactions in this version:

Table 1: EER Profile - Actors and Transactions

| Actors | Transactions	| Initiator or Responder | Optionality | Reference |
| ------ | ------------ | ---------------------- | ----------- | --------- | 
| Care Services Selective Consumer	| Find Matching Care Services [IHE-ITI-90]	| Initiator	| R	| ITI TF-2: 3.90
| Care Services Selective Supplier	| Find Matching Care Services [IHE-ITI-90]	| Responder	| R	| ITI TF-2: 3.90
| Care Services Update Consumer	Request | Care Services Updates [IHE-ITI-91]	| Initiator	| R	| ITI TF-2: 3.91
| Care Services Update Supplier	Request | Care Services Updates [IHE-ITI-91]	| Responder	| R	| ITI TF-2: 3.91

While Consumer Actors (clients) will implement the Initiator transactions, EER as a Supplier Actor will implement the Responder transactions.

## EER enhancements of MCSD

While MCSD is a great framework for an organizational directory of healthcare providers, it lacks a few things to be able to replace part of the Danish SOR Directory.

SOR includes:

- software solutions (in FHIR: Devices) for the organizational units both as the direct end-user application (EUA) and the network access points (AP) serving a particular organizational unit
- messages supported by the Endpoints

EER enheances MCSD with what SOR includes and adds furthermore:

- Devices and their corresponding DeviceDefinitions
  - eerDevice and its derivations:
    - End User Applications (eerDeviceEUA)
    - Network Access Point devices (eerDeviceAP)
    - Message Service Handlers (eerDeviceMSH) (might be software solutions standing alone or built ino EUAs or APs)
- Messages defined as MessageDefinitions

Message Service Handlers (eerDeviceMSH) are software solutions standing alone or built ino EUAs or APs. When stand-alone solutions, it is helpful to see them acting in the diagrams. Below the two diagrams show EER with and without MSHs.

<figure>
  <img src="eerDiagramWithoutMSH.png" alt="EER Diagram without MSH" style="vertical-align:middle;margin:50px 10px;width:50%">
  <figcaption><b>EER Diagram without MSH</b></figcaption>
</figure>
<br clear="all">

<!--img src="hr.png" alt="HR">
<br clear="all"-->
<!--div include eerDiagramWithMSH.svg %} </div-->

<figure>
  <img src="eerDiagramWithMSH.png" alt="EER Diagram including MSH" style="vertical-align:middle;margin:50px 10px;width:50%">  
  <figcaption><b>EER Diagram including MSH</b></figcaption>
</figure>
<br clear="all">

