# EHMI Endpoint Register (EER)

The EHMI Endpoint Register (EER) Profile supports registration and discovery of Endpoint adresses related to a SOR Unit in Danish Healthcare using a RESTful interface.

EER is in this first version build on these FHIR ressources

## Organization

In the first versions of EER Organizations are concidered “umbrella” entities, that holds the relation to SOR Organizations sharing the same SOR Identifier. 

these may be considered the administrative bodies under whose auspices care services are provided such as Healthcare Information Exchanges(HIEs), Integrated Delivery Networks (IDNs), Non-Government Organizations (NGOs), Faith-Based Organizations (FBOs) or even a one-physician family practice. An organization has a unique identifier and may have additional administrative attributes such as contact person, mailing address, etc. Departments of an institution, or other administrative units, may be represented as child Organizations of a parent Organization.

    Organization

        - As organizations reflects SOR, an Organization may have a relation to an Organization, which an Organization is part of
        - An organization has a relation to a device, that is primarily serving the organization's purpose, which in this case is a Device called an End User Application (EUA)
        - An organization may also have a relation to one or more Endpoints that serve the EUA with sending and receiving messages

    **SOR IO Organization** – is reflected as an Organization of the profile EER.SOR.InstitutionOwner.Organization

    **SOR HI Organization** – is reflected as an Organization of the profile EER.SOR.HealthcareInstitution.Organization

    **SOR OU Organization** – is reflected as an Organization of the profile EER.SOR.OrganizationalUnit.Organization

## Device

    Device

        - A device can be of two differnt kinds: 
            - End User Applications (EUA), which come in many flavours depending on which purpose the Organization has
                - Electronical HomeCare Journals (EOJ)
                - General Practitioners Systems (LPS)
                - Electronical Healthcare Records (EHR)
            - Middleware like 
                - Message Service Handlers (MSH) 
                - Network Access Points like 
                    - eDelivery Access Points (EAP) 
                    - Value Added Network Services Access Points (VANS)
            - End User Applications (EUA) serves Organizations
            - Network Access Points serves Endpoints
            - Message Service Handlers serves either EUAs or EAPs (or VANS)

## DeviceDefinition

    DeviceDefinition

        - A DeviceDefinition defines different kinds of devices with different purposes
        - A DeviceDefinition defines what kind of capabilities a Device has, for example which messagetypes it can handle, ingoing and outgoing

## Endpoint

An Organization may be reachable for electronic data exchange through electronic Endpoint(s). An Endpoint may be a FHIR server, an IHE web services actor, or some other mechanism. If an Organization does not have an Endpoint, it may still be reachable via an Endpoint at its parent Organization or an affiliated Organization. [See more...](Endpoint)

    Endpoint

        - An Endpoint has a relation to a device, that is primarily serving the endpoint's purpose, which in this case is a Device called an eDelivery Access Point (EAP)
        - An Endpoint can serve one or more SOR Organizations
        - An Endpoint will serve the Organization with different kinds of MedCom Messages, defined by MedCom MessageDefinitions. 
        
## MessageDefinition

    MessageDefinition

        - Core MedCom MessageDefinitions are defined together with its MedCom Message specification
        - Specialized MedCom MessageDefinitions may occur when serving aspecial purpose like specifying content of elements in a MedCom Message like acting as a template for how one can fill in content in different Messages, for instance like MedCom Referrals in the Referral Table (DA: Henvisningstabellen)
        - These Specialized MessageDefinitions will be treated in a Special IG for these purposes

   
The profile is based upon IHE mCSD profile and the use cases and solutions using mCSD are outlined in the [mCSD White Paper](https://profiles.ihe.net/ITI/papers/mCSD/index.html).

This profile supports registration of and querying for:

## 1:46.4.1 Concepts

The EHMI Endpoint Register (EER) Profile supports queries for resources related to care services discovery. The relationship between these entities is illustrated in Figure 1:46.4.1-1.

<!--![Top-level Relationships between Care Services Entities](mCSDRelationships.png)-->
<div style="clear: left;"></div>

**Figure 1:46.4.1-1: Top-level Relationships between Care Services Entities**

# Core Profiles

[EER SOR Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.Organization.html)

EER SOR General Organization

[EER SOR Institution Owner Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.InstitutionOwner.Organization.html)

EER SOR Institution Owner Organization IO (DK:IE)

[EER SOR Healthcare Institution Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.HealthcareInstitution.Organization.html)

EER SOR Healthcare Institution Organization HI (DK:SI)

[EER SOR Organizational Unit](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.OrganizationalUnit.Organization.html)

EER SOR Organizational Unit OU (DK:OE)

[SOR HealthcareService](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-medcom.sor.HealthcareService.html)

A profile on the HealthcareService resource for SOR.

[MedcomMessagingMessageDefinition](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-MedcomMessagingMessageDefinition.html)

A profile on the MessageDefinition resource for EHMI SOR. (Attempting to replace entries in the standardcatalogues from both MedCom and SDS)


## Extended Profiles

### SOR IO (DK: IE)

[EER SOR Institution Owner Municipality Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.InstitutionOwner.Municipality.Organization.html)

EER SOR Institution Owner Municipality Organization IO (DK:IE), a specialization of "EER SOR Institution Owner Organization IO (DK:IE)" focused on the municipality's profile.

[EER SOR Institution Owner Regional Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.InstitutionOwner.Regional.Organization.html)

EER SOR Institution Owner Regional Organization IO (DK:IE), a specialization of "EER SOR Institution Owner Organization IO (DK:IE)" focused on the region's profile.

### SOR HI (DK: SI)

[EER SOR Healthcare Institution Hospital Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.HealthcareInstitution.Hospital.Organization.html)

EER SOR Healthcare Institution Hospital Organization HI (DK:SI), a specialization of "EER SOR Healthcare Institution Organization HI (DK:SI)" focused on the hospital's profile.

### SOR OU (DK: OE)

[EER SOR Organizational Unit Hospital Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/StructureDefinition-EER.SOR.HospitalOUOrganization.Organization.html)

EER SOR Organizational Unit Hospital Organization OU (DK:OE), a specialization of "EER SOR Organizational Unit OU (DK:OE)" focused on the hospital's department profile.

## Instances

### SOR IO (DK: IE)

[EER.SOR.IO-AAR-Kommune as a SOR IO Organization](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/Organization-EER.SOR.IO-AAR-Kommune.311000016009.html)

An instance of the "EER SOR Institution Owner Municipality Organization IO (DK:IE)" profile

### SOR HI (DK: SI)

[AAR SOR HI Organization - Sundhed og Omsorg](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/Organization-EER.SOR.HI-AAR-Kommune.937961000016000.html)

An instance of the "EER SOR Healthcare Institution Organization HI (DK:SI)" profile

### SOR OU (DK: OE)

[EER.SOR.OU-AAR-Kommune.937971000016005](https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/Organization-EER.SOR.OU-AAR-Kommune.937971000016005.html)

An instance of the "EER SOR Organizational Unit OU (DK:OE)" profile
