
# TestVital example IG

- ci-build - http://build.fhir.org/ig/JohnMoehrke/testVital/branches/main/index.html

## Status

December 4, 2023

Workaround is known. Grahame said "this is an error in the base r4 spec, and the only way to resolve it is for you to manually specify a minimum of 1 for .code.coding" Note that the same is true of R4 and R4B. Current using-fhir-core-profiles branch does build clean.

December 1, 2023

Now that the IG publisher forces any observation that is a profiled vital sign to be compliant with the FHIR core profiles, I try to create a profile on BP and Weight but get errors.

Note that the error only appear if your profile is not consistant with the profiles declared in FHIR core. (See raw-profiles below where I define BP differently)

# chat

https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/vital-signs.20profiles.20errors

# testVitals

Main branch is using us-core and not showing any errors
- ci-build - http://build.fhir.org/ig/JohnMoehrke/testVital/branches/main/index.html

using-fhir-core-profiles is using fhir core profiles and getting errors on BP. Would also get them on height and weight. Does not throw errors on vitals.
- ci-build - https://build.fhir.org/ig/JohnMoehrke/testVital/branches/using-fhir-core-profiles/index.html

using-no-profiles is just examples that are compatible with FHIR core profiles, but are not declaring FHIR core profiles. No errors or warnings
- ci-build - https://build.fhir.org/ig/JohnMoehrke/testVital/branches/using-no-profiles/

raw-profiles is not using us-core or fhir core profiles, but defining profiles on BP and Height. These do not have a problem if they define exactly the same requirements as FHIR core profiles. But they can't deviate. If you define a BP and don't use the .code that the FHIR core profile uses, then an error will be thrown.
```
INFORMATION: Observation/ex-vitals-1: Observation.code.coding[0]: This element does not match any known slice defined in the profile http://hl7.org/fhir/StructureDefinition/bp|4.0.1 (this may not be a problem, but you should check that it's not intended to match a slice)
ERROR: Observation/ex-vitals-1: Observation.code: Observation.code.coding:BPCode: minimum required = 1, but only found 0 (from http://hl7.org/fhir/StructureDefinition/bp|4.0.1)
```
- ci-build -  https://build.fhir.org/ig/JohnMoehrke/testVital/branches/raw-profiles/index.html