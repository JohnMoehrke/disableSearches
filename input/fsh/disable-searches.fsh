Instance: patch-disable-searches
InstanceOf: Bundle
Title: "Disable Unnecessary searches"
Description: "based on the searches that va.gov and backend need"
Usage: #example
* type = #batch
// General parameters
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=_id" // Resource-id"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=_lastUpdated" // Resource-lastUpdated"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=identifier" // clinical-identifier"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=patient" // clinical-patient"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_text" // DomainResource-text"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_content" // Resource-content"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_profile" // Resource-profile"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_query" // Resource-query"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_security" // Resource-security"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_source" // Resource-source"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=_tag" // Resource-tag"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=code" // clinical-code"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=type" // clinical-type"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=date" // clinical-date"
// AllergyIntolerance parameters
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=clinical-status" // AllergyIntolerance-clinical-status
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=verification-status" // AllergyIntolerance-verification-status"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=asserter" // AllergyIntolerance-asserter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=category" // AllergyIntolerance-category"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=criticality" // AllergyIntolerance-criticality"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=last-date" // AllergyIntolerance-last-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=manifestation" // AllergyIntolerance-manifestation"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=onset" // AllergyIntolerance-onset"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=recorder" // AllergyIntolerance-recorder"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=route" // AllergyIntolerance-route"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=severity" // AllergyIntolerance-severity"
/*
// Condition
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=Condition-clinical-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=Condition-subject"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-abatement-age"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-abatement-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-abatement-string"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-asserter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-body-site"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-category"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-encounter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-evidence"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-evidence-detail"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-onset-age"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-onset-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-onset-info"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-recorded-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-severity"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-stage"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Condition-verification-status"

// DiagnosticReport
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-category"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-subject"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-based-on"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-conclusion"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-issued"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-media"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-performer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-result"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-results-interpreter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DiagnosticReport-specimen"

// DocumentReference
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DocumentReference-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DocumentReference-subject"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=DocumentReference-category"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-authenticator"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-author"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-contenttype"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-custodian"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-description"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-event"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-facility"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-format"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-language"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-location"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-period"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-related"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-relatesto"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-relation"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-security-label"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-setting"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=DocumentReference-relationship"

// Immunization
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=Immunization-status"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-location"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-lot-number"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-manufacturer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-performer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-reaction"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-reaction-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-reason-code"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-reason-reference"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-series"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-status-reason"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-target-disease"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Immunization-vaccine-code"

// Patient
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter?name=Patient-identifier"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-active"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address-city"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address-country"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address-postalcode"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address-state"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-address-use"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-birthdate"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-death-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-deceased"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-email"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-family"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-gender"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-general-practitioner"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-given"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-language"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-link"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-name"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=Patient-organization"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-phone"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-phonetic"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter?name=individual-telecom"
*/

Instance: activate
InstanceOf: Parameters
Usage: #inline
* parameter.name = "operation"
* parameter.part[0].name = "type"
* parameter.part[=].valueCode = #replace
* parameter.part[+].name = "path"
* parameter.part[=].valueString = "status"
* parameter.part[+].name = "value"
* parameter.part[=].valueCode = #active

Instance: retire
InstanceOf: Parameters
Usage: #inline
* parameter.name = "operation"
* parameter.part[0].name = "type"
* parameter.part[=].valueCode = #replace
* parameter.part[+].name = "path"
* parameter.part[=].valueString = "status"
* parameter.part[+].name = "value"
* parameter.part[=].valueCode = #retired
