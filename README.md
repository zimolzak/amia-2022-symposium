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





# Academia industry lessons workshop

Research expertise and the data, and reputation, versus money and
scaling and talent.

Loop these three types of study: performance, usability, impact. There
are phases, much like phases in drug trials[^phase]. Discovery,
performance, efficacy, *therapeutic* efficacy (including UI design),
safety and effectiveness.

[^phase]: Park Y *et al*. Evaluating artificial intelligence. *JAMIA
Open* 2020 Sep 8.

Gift vs grant vs contract.





# Year in Review

"When in doubt, do good work." Hripcsak's Hrule.

## Education

What is is, vs how to use, vs create next thing, vs teach *using*
informatics.

*Appl Clin Inform* Shenson et al. Engaging housestaff as informatics
 collaborators. Lots of projects like order sets. Make team
 responsible visible.

*Appl Clin Inform* Patel J et al. A data-driven assessment of the us
 health informatics programs. 94 universities. Only 58% with course in
 DB mgt. Lacks training in sociotechnical.

*Psicothema* Early prediction of student learning performance through
 data mining. Javier Lopez-Zambrano et al.

Humphreys BL et al. *Transforming Biometical Informatics and Health
Information*. Don Lindberg and the US NLM. 2021. IOS press. Another
chapter on the Woods Hole course.

## people and organization

Abraham J et al. *JAMIA* Risk factors associated with medication
ordering errors. WashU. 1000 void, 800 err, 190 reached patient, 0
harm. Interviewed 355 people, Sys Egr Init for Pt Safety.

Giardina and Singh

## Clinical research

Ficek et al JAMIA

Jamia, design and impl of an integratede data model to support clin &
transl. Wood E, Campion T. Cornell

## Nursing

Use ML to transform standard nurse plan to research variables. *JAMIA*
Maciera et al.

## NLP

Lederman A et al. Uni Melbourne. JAMIA.

## open source

open source auto insulin. NEJM. burnside M et al. uni Otago new
zealand. Apps for smartphone. Not regulated. AndroidAPS compared to
manual pump mgt.

## kd and data mining

xu z, wang f et al. Crit Care. Sepsis subphenotyping. 72 SOFA scores
and clustered based on trajectories. Phenotypes called RI DI DW RW for
some reason. Basically unsupervised.

Nat Med. Prospective, multi-site study. Adams, Saria et al.

## Visual analytics

Vbridge. IEE trans vis comp graph. Cheng and Veeramachaneni. Features
and data to explain healthcare models.

## problem evolution

a flexible framework. JBI. makoto. uni utah. Cohorts over time.

## decision support

mccoy wright jamia clickbusters. 10 step process.

## mental health

dna methylation of childhood trauma predict psy disorders 17 yr after.
*Molecular Psychiatry*.

## consumer

debunking health misinformation. mourali m et al. calgary. *JMIR*.
Little known about impact of corrections. What's the impact of
extended back and forth of false claims (on attitudes). *N* = 500,
view these debates.

symptom checker apps. Schmieding M et al. *JMIR*. Some have got beter.
Healthy Children, Drugs.com, Isabel, Symptomate. Median triage
accuracy 59% to 55% (about whether you should go in). Apps in 2020
were *less* risk averse. Few apps outperformed laypersons.

## Theme: DEI

gichoya J, Zhang H. emory. race detection in x-ray.

quality of sdoh. Cook L, Weiskopf N. JAMIA. OHSU. impute, use multiple
sources, use validated tools.

## Theme: Women

comparison of women and men. hartzler A, stipelman C. UWashington. *JAMIA*.
4700 submissions, acceptance rates, sentiment analysis. Women 1st
author increased 38 to 43, then 37 to 44. sentiment the same M vs W.
Also looked at awards. Years 2017--2020 trends.

gender repr *JAMIA*. griffin A, chung A. UNC. public web sites, 74%
progs let by men, 83% fellowships men.

women IT managers in Saudi Arabia. aldekhyyel R et al. *JAMIA*. Not
particular social challenges. It was the field itself.

Bright T, Mccoy A et al. AMIA first look program *JAMIA*. The program
increased the interest of 87 ishg women. Linkedin profile review.

Grando A, Chapman W. Women in AMIA leadership program. *JAMIA*. Pre
post survey about using strengths, know career vision, leadership
ocnfidence, circumvent barriers, influence decision, guide a group,
prepare for change, manage conflict.

## Theme: Ethics

*BMC Medical Ethics*. Tosoni S, Liu F. consent on sharing personal
 health information. Share what and with whom. Discomfort went down a
 bit, mostly.

triplett c, bloss c. UC La Jolla. *JAMIA*. tribal perspective on
privacy and health data sharing. Codesign.

A Scoping review of ethics considerations. elhadad n. *JAMIA*.

## Making sense

There are 27, which includes working groups, plus Women DEI and 25x5
(committees). *N* = 90 some papers. Presented 48. 33 from JAMIA. COVID
papers from 13 to 11 to 6. Had 3 systematic reviews, 5 scoping
reviews, 1 rapid review.




# Doctoral Dissertation S30

Hripcsak S29 standing room only, in breakout room not ballroom.

## annotation efficient DL

zongwei zhou. Annotate those points that are close to decision
boundary. Diversity-based: don't annotate two points that are very
close together in space. Computing diversity (completely) and
maximizing that turns out to be NP-hard. published in journal of
digital imaging, medical image analysis, CVPR (a computer vision
conference). Active selection is better than random at improving
efficiency of annotation.

UNet++: has "deep supervision." Triangular array of nodes $X^{0,0}$ at
left corner of triangle, to $X^{m,0}$ at bottom corner, and $X^{0,m}$
at right corner.

https://github.com/mrgiovanni

https://arxiv.org/abs/1912.05074v2

## AI for Health Coaching

Elliot Mitchell, sr data sci at Geisinger

Chronic conditions on the rise. T2DM.

AI:
: able to perform taks that require intelligence

ML:
: learns from data

Rule based:
: does a task based on machine-readable repr of knowledge

*Computer Supported Collaborative Work* 2021. Chatbot vs human
 coaching. About 10 pt per group, 4 coaches.

approaches to chatbot

- scripted
- rule based
- data driven (reinforcement learning)
- random

used *FoodNLU*. Reinforcement learning, where reward for reaching stop
criteria, reward for info gain, penalty for each question.
Crowdsourced a corpus; that's on github. *CHI* paper too.




# EHR data quality

## Telehealth vs not, for T2DM

wileykk@musc.edu

Higher information score $I$ means observations more regularly
distributed. Or "information density" score. $N = 5027$. Timeliness
measure, also timeliness by Hinrich's quotient. Those with telehealth
have measurements slightly more timely. Completeness measure too. Info
density: about equal between the two.

## Self report Demographics

team from Geisinger. shikha sinha, raghuveer puttagunta, heather
marney.

One questionnaire. Race, ethn, language, sexuality/gender, military.

## FIRE ALARM happened!

## All of Us: data QC and assessment methods

Lina Sulieman. Pheno algo replication & diversity. OHDSI pheno
library: 212 phenos, 763 algorithms.

Denny 2013 Nat Biotech.

Bastarache 2022. pheno reference map

MENA = middle eastern and north african

## Errors in height and weight

Andrew Guide.

Challenge is *individually* implausible values. Auto detection.
Method: weighted GAM for location scael and shape. wGAMLSS. Kind of
makes percentiles. Four types:

- extreme SD-score
- expo-wt moving avg (ewma)
- consecutive measurements
- multiple errors

$n = 5,287,792$ weights. 98--99% are no error. Extreme values are
rare, most are "large consecutive change" type errors, so hard to
notice. PPV is low for both, so algo does false pos, and weights are a
little harder. But good sn and sp.





# Cancer, S90

## prostate

Ellen. likelihood visualization for patients, side effects of external beam
radiation for prostate cancer. Other tx in future: brachy, stereotactic,
radiation surgery. Even if only one main tx, still help pt understand
what to expect.

## Modeling sx control with HL7 FHIR

Nan Huo. FHIR-based mCODE model: "minimal common oncology data
elements." E2C2 project at Mayo: surveys pts on sx---"ehr
fffacilitated cancer symptom control." The things that collects were
not covered by mCODE. FSH is FHIR shorthand, a domain specific lang
for defining FHIR. $N = 25$ vars in E2C2, and $\frac{11}{25}$ are not
well covered, hence extending the model. FHIR allows mult tools: *FSH
tools,* (which they used,) but also *Forge FHIR*. Created
`CancerSymptomType` extension; can include that in `SymptomScore`
profile. Want standard codes but don't have those for some E2C2
elements like `time_since_last_hospitalization`. See also
https://github.com/fhircat/e2c2-fsh-modeling

## Lung Cancer Screening Shared Decision Making

Polina Kukhareva. App economy timeline: FHIR, SMART on FHIR, US Core
FHIR, and 2021 interoperability rules. ReImagine EHR: create once, use
everywhere.

inaccuracies in electronic health records smoking. *JAMIA* Kukhareva
et al.

## mCODE 3 year update

@TravisOsterman from Vandy. CodeX. EHR endpoints for cancer clinical
trials. Lot of time abstracting outcomes into data capture. But try
EHR. We have 16 trials using ICAREdata, actively working on adverse
event reporting too. Prior auth: build on DaVinci specs to supplement
PA reqs with mCODE. mCODE maturity: tech review group wants to make
some commitments to implementers (about likelihood, frequency,
magnitude) of changes, and commit to not doing "breaking changes." FMM
= FHIR Maturity Model, which goes from "Draft (0)" to "FMM 6." Level
FMM 4 is we discuss with implementers before making
non-backward-compatible breaking changes. So like `Treatment` domain
is FMM 3, and `Assessment`, `Disease`, and `Patient` are $\ge 4$.
`Assessment` includes comorbidities, and "comorbidities are hard."
Least mature is `Genomics` domain: you're not routinely using FHIR to
access structured genomic data from your EHR, maybe because you don't
even *have* structured genomic data in your EHR! Level FMM 4 doesn't
*preclude* breaking changes, but we will *discuss*. FMM is ironically
not computable. Take the mCODE STU 2 data model and overlay the FMM on
it with, say, color coding. Thanks to CodeX members and Community of
Practice. travis.osterman@vumc.org

## Chemo and response (RECIST) from clinical notes

UTHealth SBMI. Xu Zuo. Irrelevant: increased growth of eye lashes.
Hypotheses: would consider $X$ if there is good response to
carboplatin. Negation: MRI does not show any clear evidence of
progression. RECIST := {PD, SD, PR, CR}. Cohen's $\kappa = 0.78$. Can
compute a "cross-sentence distance." Split $n = 600$ training, and 100
test. Distance between chemo mentions and response mentions. Distance
7 ish based on sentence, 60 something based on token. Interpreted as
"kind of near each other." "Unable to complete information extraction
using one single model."





# Research Informatics S70

## VIADS

Visual interactive analysis for filter/summarize large Data Sets.
Needs to be hierarchical terminology.

## consenting

Jihad Obeid, MUSC. In-person consenting is challenging. Travel, safety
during pandemic, time, Federalwide Assurance (FWA) at sites. They
Compared 3 remote modalities: paper, e-consent (REDCap link where
patient gets a link and signs), teleconsent (video communication with
doxy.me). Several usability questionnaires like IBM CSUQ, NASA TLX.

## synthetic data from privacy-preserving synthesis

Mandis Beigi, Medidata.

- Why deep ANN don't work for generating
clinical trial data.

- Fidelity evaluation metrics for synthetic data.

- Differential privacy and privacy evaluation tests.

Deident, "just" remove PII like name, SSN, DOB. Then data aggregation
like $k$-anonymity. Then generation: variational autoencoder, GAN,
MedGAN, CTGAN, RNN. Local data $r^i \to$ embed into lower-dim metric
space $v^j$. Select a seed point, find its $k$ neighbors in $v$ space,
generate new records by randomly selecting features from its $k$
neighbors. Add truncated Gaussian noise. Finally filtering like
outlier detection, $k$-anonymity check, and make sure data comes from
$\ge 3$ sponsors. "Fidelity and privacy is a zero-sum game." Fidelity
evaluation, also privacy evaluation.

## semi-automate certainty of evidence

@IrbazRiaz

Living systematic reviews[^lsr] exist, but want living *interactive*
systematic reviews, because search $\to$ extract $\to$ etc. is hard.
And also users can interact with results/evidence. Web based UI for
looking at evidence. The meta-a itself can't necessarily tell you
things like risk of bias; have to go back to study itself. Need
measure $I^2$ of inconsistency[^guyatt]. Finally, human in the loop.
Overall Certainty of Evidence $\approx f($ risk of bias +
inconsistency + indirectness + imprecision + publication bias +
importance). PI Huan He.

[^lsr]: Elliott *et al*. 2014 *PLOS Medicine*.

[^guyatt]: Guyatt *et al*. 2011 *J Clin Epi*.




# Evaluation Methods S80

Moderator: Li Zhou, of BWH.

## Eval of ML for COVID outcome prediction

Batia Wiesenfeld, NYU Business. Pressure to discharge patients who are
improving, to make room. *Whom can I discharge safely?* Want to know
who has low risk in the subsequent 36 hours. Model[^rasav] not
described here. It is cloud based. *Convergent parallel mixed-methods*
design. Model implemented as a RCT; every other patient had
predictions masked. Phase 1 of evaluation: Survey the staff, $N = 175$
respondents. Question: are tool users different from non-users (in
their survey responses)? Phase 2: qualitative. $M = 10$. RCT somewhat
underpowered. Overall reduction about 0.2 days LOS, not significant,
powered for 0.5 day. $N \approx 1000$ patients in that RCT (*q.v.*).
Attendings ($n \approx 90$) were real target group. Users
significantly less uncertain, better able to anticipate discharge,
compared to non-users. Confidence: yes more confident, but fully
mediated by "able to anticipate" and not mediated by "less uncertain."
Prelim evidence says AI actually leads to investigating case *further*
(among those who trust the AI).

Qualitative Themes:

- We lacked mental models of *e.g.*, disease course.
- We didn't have treatment algorithms.
- Hard to interpret markers if they're contradictory.
- Uncertainty was psychologically taxing, 2-hump nature traumatizing.

Over time they relied on tool less. They knew who was okay and who was
not. Had a mental model at that point. Sometimes information overload
later, too.

[^rasav]: Rasavian et al 2021 *NPJ Digital Medicine*

## Summarization for Barrett

Ali Soroush, instructor, Columbia. Courtney Diamond. "Event level
summaries." Data extraction. Esoph adenoCA is rising, and screening is
a thing[^shahe]. Normal, Barrett's, dysplastic Barrett's, cancer.
Manual extraction is hard. Automated extraction of administrative
codes has "inadequate granularity" and "poorly captures temporality."
Meaning: can't say subtypes of BE, and can't say who's on standard of
care. NLP often applied to c-scope screening. Extracted BE from
pathology at VA[^nguy]. They want to do data extraction too. Path text
from CUMC data repo (epic and allscripts) plus structured from
Provation procedure DB. Extract CUI with MetaMap Lite. Provation has
dropdowns etc. Years 2016--2020, must have BE as an indication
$n=977$. Had devel and validation of 150 each. $\frac{105}{150}$ had
confirmed BE. Like 350--390 "unique events."

1. remove headers, punctuation
2. merge impression into 1 list
3. merge notes with procedure data
4. extract concepts
5. expert-created rule base used to make an event-level summary

Metamap plus negex specifically extracted location:diagnosis pairs.
Columns like "what was the endoscopic treatment" and "what was the
diagnosis." Had some reviewers. Calculated $\kappa$ plus acc, F1, Pr,
Re.

**Results:** F like 0.836 dev, and 0.824 in validation. For binary "no
dys vs bad" or "no ca vs ca" they did some more performance
characteristics.

Kinds of error:

- NER
- semantic analysis (like path says could be this or that)
- database (missing report)
- human (typo "Barret")

First *data extraction and summarization pipeline*. Limitation:
pre-processing needs to be adapted to each institution. Rules based
parts too. But guiding principles should remain generalizable across
institutions. Or if an institution doesn't use Provation, or if the
procedure doc will modify the text output by Provation.

[^nguy]: Wenker et al CGH 2022

[^shahe]: Shaheen et al AJG 2022

## Emergency presentation measure

Me

## Modifiable Inpatient cost variability

Fouladvand, Stanford. Some costs due to pt factors like how sick, and
others due to deviations in medical practice and delivery. Psychoses
has most enpat days at 3679, BMT 3002, ECMO or trach with vent > 96hr
next 2893. Each MS-DRG has a coefficient of variation. DRG ranked by
direct cost: ecmo with 100%, bmt 67%, heart transplant 66%, etc.
Thirdly, rank by encounter frequency *and* variance of direct costs:
heart transplant with MCC, then ecmo, then heart transplant without
MCC. Eventually, $I = \frac{q \cdot \sigma}{p}$ where $I$ is impact,
$q$ is volume, $\sigma$ is variability, $p$ is predictability.

## HIT for 2ndary CA prevention, review

Constance Owens, George Mason. Cancer screening works, colon, breast,
cervical, but under-used. HIT effective, often used to promote. But
need to know barriers/facilitators. And how do they actually do the
enhancement of screening? Final studies $n=101$. US-based, and
published 2015--2021. RE-AIM[^reaim] framework about dissemination and
implementation (also ERIC[^eric] and ITIM[^itim] which is kind of
hybrid ImpSci and informatics). Charted the data on multiple axes
like what HIT function (was it CDS, risk ident, provider assessment,
patient decision aid, tracking adherence); or what exact activity was
supported by the HIT; $etc*.

[^reaim]: glasgow 1999

[^eric]: powell 2015

[^itim]: schoville 2015

Found 34% non experimental, 29% RCT. Often not reporting racial
make-up of population. Most popular HIT functions: cds panel mgt and
outreach, cds point of care, track adherence.
