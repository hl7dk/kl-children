# REVERSE_ENGINEERING_REPORT — kl-children

## A. General diagnosis

### Architecture identified
FHIR Implementation Guide (IG) based on SUSHI for preventive child health in Denmark (KL-children / KLGateway). Structure:

- `input/fsh/*.fsh`: 27 FSH files defining profiles, extensions, questionnaires, questionnaire responses, delivery report examples
- `input/fsh/example.fsh`, `example2.fsh`: complete delivery report examples with multiple resources
- `input/pagecontent/`: IG pages
- `input/images/`: images
- `ig.ini`: IG publisher configuration
- No `sushi-config.yaml` in root
- No Dockerfile, no CI workflow

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Dependencies: dk-core, MedCom, KLCommonCodes, FBOE, SNOMED CT, LOINC, UCUM
- No automated tests

### Maintenance state
Default branch: main. Repository: https://github.com/hl7dk/kl-children. Version 1.0.0 not yet released. Automatic builds via build.fhir.org.

### Existing testing mechanisms
No automated tests found.

### Investigation limitations
- SUSHI not installed; IG build not executed.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-klchildren-001 | No sushi-config.yaml | P3 | CONFIRMED | repo root |
| REA-klchildren-002 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-klchildren-003 | No CI workflow configured | P3 | CONFIRMED | missing `.github/workflows` |

### Details of confirmed problems

**REA-klchildren-001 (P3, CONFIRMED)**: No `sushi-config.yaml` in the repository root. SUSHI configuration is not versioned in the repo.

**REA-klchildren-002 (P3, CONFIRMED)**: No automated tests to validate the 27 FHIR profiles defined in FSH nor generated StructureDefinitions.

**REA-klchildren-003 (P3, CONFIRMED)**: No `.github/workflows` directory — no CI for build, validation, or PR verification.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are problems not previously documented.

## E. Performance
Static IG build via SUSHI/build.fhir.org. No performance-sensitive operations.

## F. Technical improvements
- Add sushi-config.yaml (REA-klchildren-001)
- Add FSH tests (REA-klchildren-002)
- Add CI workflow (REA-klchildren-003)

## G. Execution plan
All independent and low risk.

## H. Expected outcome
More complete IG with versioned configuration, CI, and automated testing.

**Tools used:** git, gh, PowerShell, static code inspection.  
**Limitation:** SUSHI not installed.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\kl-children` (clone of upstream, branch main).
