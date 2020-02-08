# install starting instructions from Jim T.

# https://github.com/nwfsc-assess/geostatistical_delta-GLMM/wiki/Steps-to-install-TMB

install.packages("TMB")
######################
# Simulate data for a linear mixed model with random intercepts
######################

set.seed(1)
Factor = rep( 1:10, each=10)
Z = rnorm( length(unique(Factor)), mean=0, sd=1)

X0 = 0
Y = Z[Factor] + X0 + rnorm( length(Factor), mean=0, sd=1)

######################
# Run in TMB
######################

install.packages("TMB")
library(TMB)
Version = "linear_mixed_model"

# Download CPP file
setwd( tempdir() )
download.file( url="https://raw.githubusercontent.com/James-Thorson/mixed-effects/master/linear_mixed_model/linear_mixed_model.cpp", destfile="linear_mixed_model.cpp", method="auto")
compile( paste0(Version,".cpp") )

# Generate inputs for TMB
Data = list( "n_data"=length(Y), "n_factors"=length(unique(Factor)), "Factor"=Factor-1, "Y"=Y)
Parameters = list( "X0"=-10, "log_SD0"=2, "log_SDZ"=2, "Z"=rep(0,Data$n_factor) )
Random = c("Z")

# Build TMB object
dyn.load( dynlib(Version) )
Obj = MakeADFun(data=Data, parameters=Parameters, random=Random)  #

# Check that TMB is working
Obj$fn( Obj$par )


## installing other packages from github ----------
#devtools::install_github("seacode/gmacs", subdir = "/gmr", ref = "develop") #- only needs to be performed once.
require(devtools)
devtools::install_github("james-thorson/FishStatsUtils")

devtools::install_github("james-thorson/VAST")


