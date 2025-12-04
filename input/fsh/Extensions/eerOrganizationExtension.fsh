Extension: ContactDetailOrganizationReferenceExtension
Id: contactdetail-organization-reference-extension
Title: "ContactDetailOrganizationReferenceExtension"
Description: "Reference to an SOR-OrganizationalUnit that is the InstitutionOwner unit"
* value[x] 1..1 
* value[x] only Reference(EerSorOrganization)
* obeys eer-sorIE-type-requirement

Invariant: eer-sorIE-type-requirement
Description: "The referenced EerSorOrganization SHALL be of type IE."
Severity: #error
Expression: "value.resolve().type.coding.where(code = 'IE').exists()"
