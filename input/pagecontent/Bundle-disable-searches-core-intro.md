Given that this is all we need are the following Resources and search parameters.

| Resource Type      | Searches                                                                     |
| ------------------ | ---------------------------------------------------------------------------- |
| AllergyIntolerance | _lastUpdated, _id, identifier, patient, clinical-status, verification-status |
| Condition          | _lastUpdated, _id, identifier, patient, clinical-status                      |
| Observation        | _lastUpdated, _id, identifier, patient, category, status                     |
| Immunization       | _lastUpdated, _id, identifier, patient, status                               |
| DocumentReference  | _lastUpdated, _id, identifier, patient, status, category                         |
| DiagnosticReport   | _lastUpdated, _id, identifier, patient, status, category                     |
| Patient            | _lastUpdated, _id, identifier                                                |
{: .grid}

We get the following set of Bundles, limiting the number of SearchParameters changed to 10-20 per Bundle.

- [Bundle Disable Searches Core](Bundle-disable-searches-core.html)
- [Bundle Disable Searches Patient](Bundle-disable-searches-patient.html)
- [Bundle Disable Searches Allergies](Bundle-disable-searches-allergy.html)
- [Bundle Disable Searches Conditions](Bundle-disable-searches-condition.html)
- [Bundle Disable Searches DiagnosticReport](Bundle-disable-searches-diagnostic.html)
- [Bundle Disable Searches DocumentReference](Bundle-disable-searches-documentreference.html)
- [Bundle Disable Searches Immunization](Bundle-disable-searches-immunization.html)
- [Bundle Disable Searches Observation](Bundle-disable-searches-observation.html)
- [Bundle Disable Searches Observation combo and component](Bundle-disable-searches-observation-c.html)

Submit the Bundles to HAPI, then force a $reindex operation. You should see all the unnecessary indexes go away, and those that you need will stay.

Unfortunately when you submit the SearchParameter updates, HAPI fires off many threads (one for each SearchParameter) that reindexes. This is true even on most current HAPI (7.6). Would be better to disable reindexing, send the Bundle, then reindex once. `setMarkResourcesForReindexingUponSearchParameterChange()` can be used to turn off reindexing on each SearchParameter. This seems to have been released in HAPI 7.2.2 or later. So not helpful to 6.10.

#### How this was built

1. Start with the [FHIR R4 Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
2. Download the [search-parameters.json](https://hl7.org/fhir/R4/search-parameters.json)
3. Remove the above entries by "name", as we want to keep these index
   1. Note that some of the above are generic such as `_lastUpdated`, `_id`, `identifier`, and `patient`
4. Remove the resources NOT mentioned above, as we don't need those as we will never populate those resources
5. for each entry kept, remove the `extension`,  `publisher`, `contact`, and `description`. These are not needed and can cause conflicts given that this is not the same as published by HL7, and the descriptions contain narrative with links into FHIR core but the descriptions are not helpful.
6. for each entry add request, POST to SearchParameter
7. MOST critical set each SearchParameter retained to `status` = `retired`

