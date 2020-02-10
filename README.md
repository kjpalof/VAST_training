# VAST_training
VAST training, remote attendance, seattle, wa Feb 2020

# From google drive document on the training 
# https://drive.google.com/open?id=1fNkfUicuSWxefHR6Z2ran85vvE1LHxtT
WORKSHOP
Spatiotemporal analysis of ecological time series
https://github.com/James-Thorson
 
When: Feb. 12-14, 2020 in Traynor Room at AFSC, Seattle

Instructor: James Thorson (HEPR), Cole Monnahan (REFM-SSMA), Cecilia O’Leary (RACE-GAP)
 
Attendance
Maximum in-person attendance:  30 participants
Off-site attendance:  unlimited (but instructors will provide no support except streaming access)
Sign-up:  Sign-up for 2020-02 training in Seattle
Principle for selecting attendees:  2-3 people per program (for AFSC/NWFSC programs) or institution (for academic and/or other science centers/agencies)
Final selection will be made by Dec. 13, 2019

Remote access:
Join Hangouts Meet
meet.google.com/tpr-hczg-qwz
Join by phone
*+1 226-213-8281, PIN: *872 489 231 9362,#

Class materials:  See google drive:  2020-02 -- VAST training in Seattle
 
Installation instructions (to be completed ahead of time):
 
1.    Install R and TMB, and check that its working:  https://github.com/nwfsc-assess/geostatistical_delta-GLMM/wiki/Steps-to-install-TMB
If necessary, install compiler/command line developer tools (Windows/macOS):
https://github.com/kaskr/adcomp/wiki/Download
2.    Install R package FishStatsUtils:  `devtools::install_github(“james-thorson/FishStatsUtils”)
macOS: Ensure that gfortran version is installed (8.2 also works for macOS >10.14)
https://github.com/fxcoudert/gfortran-for-macOS/releases
3.    Install R package VAST:  `devtools::install_github(“james-thorson/VAST”)
4.    Confirm that VAST is working by following the script here:  https://github.com/James-Thorson-NOAA/VAST/wiki/Simple-example
 
Learning goals:
Day 1:  Provide background for VAST, and show how to use User Manual, reference documentation, and simple examples
Day 2:  Demonstrate how to incorporate covariates, change the extrapolation-area, and explore standard outputs
Day 3:  Demonstrate multivariate models, e.g., for use in expanding age-composition data, generating ecosystem indices, expanding stomach contents, and analysing life-history  

Day #1 – Vector autoregressive spatio-temporal (VAST) models for stock, habitat, and
climate assessments
 
Time
Topic
Materials
Readings
9-9:30
(JIM)


Overview of VAST
Types of assessment
Case study examples
 
Thorson 2019 Fish Res -- VAST decision tree.pptx


(Thorson 2019a)
9:30-10
(JIM)


Examples of current uses
Combine northern and eastern Bering Sea
Spatially varying coefficients

Thorson [Not published] -- Combine EBS and NBS data for pollock 2018 SAFE.pptx
Thorson 2019 Limnology and Oceanography -- spatially-varying coefficient models.pptx

(Thorson 2019b)
10-11
(JIM)
User resources for VAST
User manual
 Reference docs
Simple examples
 
VAST website and wiki
https://github.com/James-Thorson-NOAA/VAST/#user-resources-for-learning-about-vast
 
VAST inputs & outputs reference docs
 
11-11:30
Break 
11:30-12:30
(JIM)
Code tutorial for VAST, and interpretation of standard outputs
Simple examples on wiki: www.github.com/James-Thorson-NOAA/VAST/wiki
 
12:30-1:30
Lunch
 
 
1:30-2:00
(JIM)
Bootstrap simulator
Bootstrap example on wiki: 
https://github.com/James-Thorson-NOAA/VAST/wiki/Simulatori
 
2:00-3:00
(JIM)
Discussion of previous simulation testing
 
 (Brodie et al. In press; Grüss et al. 2019; Johnson et al. 2019)
3:00-3:30
Break


3:30-5:00
Work in teams on topics identified during class (instructors will circulate)
 
 
 

Day #2 — Covariates, extrapolation-area, and standard outputs
 
Time
Topic
Materials
Readings
9-10
(COLE)
Density and catchability covariates
 
[Cole will provide materials]


10-11
(JIM)
Formula interface and tutorial
https://github.com/James-Thorson-NOAA/VAST/wiki/Specifying-covariates
 
 
11-11:30
Break
 
 
11:30-12:30
(CECILIA)
Defining new extrapolation areas
[Cecilia will provide materials]
 
12:30-1:30
Lunch
 
 
1:30-2:30
(JIM)
Discussion of common outputs
 
 
2:30-3:00
(COLE AND DAVE)
Acoustic data application and considerations 
 
 
3:00-3:30
Break
 
 
3:30-5:00
Work in teams
 
 


Day #3 –VAST and multivariate modelling options, e.g., for use in expanding age-composition data, generating ecosystem indices, expanding stomach contents, and analysing life-history 
 
Time
Topic
Materials
Readings
9-10
(CECILIA)
Expanding age-composition data
Thorson and Haltuch 2018 CJFAS -- Spatio-temporal expansion of composition data.pptx

https://github.com/James-Thorson-NOAA/VAST/wiki/Expand-age-and-length-composition
(Thorson and Haltuch 2018)
10-11
(JIM)
Joint dynamic species distribution models
 
Thorson Ianelli Larsen Ries Scheuerell Szuwalsky Zipkin 2016 GEB -- SDFA in Bering Sea.pptx

https://github.com/James-Thorson-NOAA/VAST/wiki/Ordination
(Thorson et al. 2016; Ovaskainen et al. 2017)



11-11:30
Break 
11:30-12:30
(JIM)
Empirical orthogonal functions
Empirical Orthogonal functions: Thorson Ciannelli Litzow [In preparation] -- Pacific biological oscillation.pptx
 
 In review
12:30-1:30
Lunch
 
 
1:30-2:00
(JIM)
MICE in space
Thorson Adams Holsman 2019 Fish and Fisheries -- MICE in space.pptx

https://github.com/James-Thorson-NOAA/VAST/wiki/MICE-in-space
 (Thorson et al. In press)
2:00-2:30
(ARNAUD)
Stomach content data


 
2:30-3:00
(ARNAUD)
Relative condition factor




3:00-3:30
Break
3:30-5:00
Work in teams on topics identified during class (instructors will circulate)
 
 
 
 



Works cited

Brodie, S., Thorson, J.T., Carroll, G., et al. (In press) Trade-offs in covariate selection for species distribution models: a methodological comparison. Ecography. doi:10.1111/ecog.04707.
Grüss, A., Walter, J.F., Babcock, E.A., Forrestal, F.C., Thorson, J.T., Lauretta, M.V. and Schirripa, M.J. (2019) Evaluation of the impacts of different treatments of spatio-temporal variation in catch-per-unit-effort standardization models. Fisheries Research 213, 75–93. doi:10.1016/j.fishres.2019.01.008.
Johnson, K.F., Thorson, J.T. and Punt, A.E. (2019) Investigating the value of including depth during spatiotemporal index standardization. Fisheries Research 216, 126–137. doi:10.1016/j.fishres.2019.04.004.
Ovaskainen, O., Tikhonov, G., Norberg, A., et al. (2017) How to make more out of community data? A conceptual framework and its implementation as models and software. Ecology Letters 20, 561–576. doi:10.1111/ele.12757.
Thorson, J.T. (2019a) Guidance for decisions using the Vector Autoregressive Spatio-Temporal (VAST) package in stock, ecosystem, habitat and climate assessments. Fisheries Research 210, 143–161. doi:10.1016/j.fishres.2018.10.013.
Thorson, J.T. (2019b) Measuring the impact of oceanographic indices on species distribution shifts: The spatially varying effect of cold-pool extent in the eastern Bering Sea. Limnology and Oceanography 64, 2632–2645. doi:10.1002/lno.11238.
Thorson, J.T., Adams, G. and Holsman, K. (In press) Spatio-temporal models of intermediate complexity for ecosystem assessments: A new tool for spatial fisheries management. Fish and Fisheries. doi:10.1111/faf.12398.
Thorson, J.T. and Haltuch, M.A. (2018) Spatiotemporal analysis of compositional data: increased precision and improved workflow using model-based inputs to stock assessment. Canadian Journal of Fisheries and Aquatic Sciences, 1–14. doi:10.1139/cjfas-2018-0015.
Thorson, J.T., Ianelli, J.N., Larsen, E.A., Ries, L., Scheuerell, M.D., Szuwalski, C. and Zipkin, E.F. (2016) Joint dynamic species distribution models: a tool for community ordination and spatio-temporal monitoring. Global Ecology and Biogeography 25, 1144–1158. doi:10.1111/geb.12464.

