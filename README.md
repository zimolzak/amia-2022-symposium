% AMIA 2022 Annual Symposium
% notes by Andrew Zimolzak
% November 5--9, 2022

# W16: CDS Standards for Value-Based and QI

https://tinyurl.com/amia-cds

- Robert Jenders, MD, UCLA
- Bryn Rhodes, Alphora
- Howard Strasberg, MD, Wolters Kluwer
- Guilherme Del Fiol, MD,
- kawamoto
- haug

## Overview & Arden Syntax

Jenders. Knowl repr includes Arden, HQMF, and CQL Clin Qual Language.
Core to HL7 is the FHIR data model. Knowl access examples
(competitors?) include infobutton, CDS hooks, and SMART on FHIR. HQMF
declarative, in contrast to arden or CQL.

Arden: originally late 1980s. Original idea was docs could validate a
Medical Logic Model by inspection, but that didn't really happen. XML
in 2014 versus finally address curly braces in 2023 with FHIR, so have
standardized references to data.

## CDS Hooks

Rhodes.

Continuum of interoperability: Lexical, syntactic, semantic, logical,
process. FHIR is for semantic, well not really, not out of the box,
not intended. FHIR *Resources* do syntax, and *Profiles* do semantics.
Also 5 modules

- foundation
- conformance
- administration
- clinical
- reasoning

Got computable guidelines, and have a way to deliver them, such as:
Look up manually, SMART on FHIR, or native within EHR, hybrid, others.
*US Core* Profile, which has patient Profile, etc.

Data models:

1. base FHIR
2. US Core
3. QI Core
4. Content

Useful Things from 3 can go down to layer 2 for example.

CQL. Packaged by CPG.

Interoperability resources: good slide number 43 in pdf. Where
`ValueSet` comes in to play. "IG" = FHIR *Implementation Guide*.
Specification IG says "how do you build and report on a quality
measure." Java and JavaScript based reference implementations.

"AHRQ Pain Management Summary".

## CDS Hooks

Howard Strasberg.


What is the EHR event that triggers a call to the
CDS server? Common ones would be opening a patient chart, or ordering
a medicationl. One of original reasons it was developed was: SMART on
FHIR apps exist, but you need to know the app exists

Implementation *process* more than flipping a switch.

Q: FDA on CDS, treat as device.

## infobutton and CDS Hooks

Del Fiol

## 

Ken Kawamoto

## biz proc modeling

Peter Haug

object mgt group, OMG