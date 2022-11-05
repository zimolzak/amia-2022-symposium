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

Del Fiol (I networked during this segment)

## Clinical use of standards for different FHIR

Ken Kawamoto, Utah

Epic SMART on FHIR CDS hooks all production-supported. Cerner starting
to get hooks, has other alternative. Tried with bilirubin[^bili]. Won
first HL7/AMIA FHIR app showcase. How do you avoid just adding more
alterts? We call it a win and are glad when they follow the alert 15%
of the time! Meaning 85% of the time useless. Another one, diabetes rx
shared decision[^dmshared][^dms2]. And for opioid uses CDS
Hooks. Regex to parse the prescription *Sig*. About 20% are
unstructured for us.  Needed to calculate the
oral morphine equivalents too. 

[^dmshared]: Tarumi S, Takeuchi W, Qi R, et al. Predicting
pharmacotherapeutic outcomes for type 2 diabetes: An evaluation of
three approaches to leveraging electronic health record data from
multiple sources. J Biomed Inform. 2022;129:104001.
doi:10.1016/j.jbi.2022.104001

[^dms2]: Tarumi S, Takeuchi W, Chalkidis G, et al. Leveraging
Artificial Intelligence to Improve Chronic Disease Care: Methods and
Application to Pharmacotherapy Decision Support for Type-2 Diabetes
Mellitus. Methods Inf Med. 2021;60(S 01):e32-e43.
doi:10.1055/s-0041-1728757

[^bili]: Kawamoto K, Kukhareva P, Shakib JH, et al. Association of an
Electronic Health Record Add-on App for Neonatal Bilirubin Management
With Physician Efficiency and Care Quality. JAMA Netw Open.
2019;2(11):e1915343. Published 2019 Nov 1.
doi:10.1001/jamanetworkopen.2019.15343

Lung cancer screening shared decision,
sponsored by AHRQ. CMS requires you to use decision aid before you
screen. 23-var predictive model from NCI. MDCalc for EHR. Also CDS
hooks to *prompt* smart on fhir app use.

Vendor differences: what data can be *read* or *written*. And also
*speed* is rarely talked about but actually big challenge. Vendors to
make breaking changes. Could take 40 seconds to pull medication
history for recent past on a geriatric patient.

FHIR Wrapper *q.v.*, and COOL logical data module *q.v.* which is a
canonical logical model so that it's consistent even when vendor makes
a change.

## biz proc modeling

Peter Haug

object mgt group, OMG. Standards of OMG that are within BPM+:

- bpmn, biz process model and notation
- dmn, decision
- cmmn, case management, which is new and medical-specific

BPMN is about workflows, meaning task to task over time. Example,
diagnosing pulmonary embolism. Suspected: start with Revised Geneva
score, which has 8 elements. Gear icon means "call to FHIR service."
Plus means parallel. Some are human tasks, with different icon from
gear.

DMN is about one point in time. FEEL = Friendly Enough Expression
Language. Decision table. Kind of a way of saying: `if age > 65 then
score[1]=1; if hemolysis == present then score[2]=1; result =
sum(score)`.

Used to fill in gaps with Java code; now we have DMN.

Arden: can do decis support rulle

CQL: an expression language, more about terminologies and data access

DMN: *visual* representation of decision logic. Kind of like `SWITCH`
statement that is visual. Or also, "how you steer things within
certain nodes in BPMN."

## Q and A

Not Group exercise. Those slides are pp. 21--27 of the PDF.
