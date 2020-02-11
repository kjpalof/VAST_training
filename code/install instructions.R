# install starting instructions from Jim T.

# https://github.com/nwfsc-assess/geostatistical_delta-GLMM/wiki/Steps-to-install-TMB

#install.packages("TMB")
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

#install.packages("TMB")
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
devtools::install_github("james-thorson/FishStatsUtils", INSTALL_opts="--no-staged-install")

devtools::install_github("james-thorson/VAST", INSTALL_opts="--no-staged-install")
#devtools::install_github("james-thorson/VAST")

#library(githubinstall)
#githubinstall("VAST")

# confirm VAST install ----------------
#https://github.com/James-Thorson-NOAA/VAST/wiki/Simple-example
# Load packages
library(TMB)               
library(VAST)

# load data set
# see `?load_example` for list of stocks with example data 
# that are installed automatically with `FishStatsUtils`. 
example = load_example( data_set="EBS_pollock" )

# Make settings (turning off bias.correct to save time for example)
settings = make_settings( n_x=100, Region=example$Region, purpose="index", 
                          strata.limits=example$strata.limits, bias.correct=FALSE )

# Run model
fit = fit_model( "settings"=settings, "Lat_i"=example$sampling_data[,'Lat'], 
                 "Lon_i"=example$sampling_data[,'Lon'], "t_i"=example$sampling_data[,'Year'], 
                 "c_i"=rep(0,nrow(example$sampling_data)), "b_i"=example$sampling_data[,'Catch_KG'], 
                 "a_i"=example$sampling_data[,'AreaSwept_km2'], "v_i"=example$sampling_data[,'Vessel'] )

# Plot results
plot( fit )


# add Rtools to system path temporarily ------------
Sys.getenv('PATH') # prints system path - check to see
#Sys.setenv(PATH = paste("C:/Rtools/bin", Sys.getenv("PATH"), sep=";"))
#Sys.setenv(BINPREF = "C:/Rtools/mingw_$(WIN)/bin/")

