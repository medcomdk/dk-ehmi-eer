Instance: EHMI.SOR.HI.HealthcareService.Organization-1.0
InstanceOf: SORHealthcareService
Description: "An example of an SOR HI Organization."
* id = "EHMI.SOR.HI.HealthcareService.Organization-1.0"
* identifier.value = "EHMI.SOR.HI.HealthcareService.Organization-1.0"
* name = "EHMI.SOR.HI.HealthcareService.Organization-1.0"
//* type[facility] = #prov
//* type[facility].coding.code = #facility
//* type[facility].coding.system = https://profiles.ihe.net/ITI/mCSD/CodeSystem/IHE.mCSD.Organization.Location.Types
* providedBy = Reference(Organization/EHMI.SOR.HI.Facility.Organization-1.0)
* type = #358
* specialty = #394602003
