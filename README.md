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
