#!/usr/bin/env Rscript
#' ---------------------------
#'
#' Script name: break_glass_in_case_of_emergency.R
#'
#' Version: 0.0.1
#'
#' Purpose of script: If stuck in cavatica with a brand new instance, install reqs 
#'
#' Author: Robert R Butler III
#'
#' Date Created: 2026-04-22
#'
#' Copyright (c) 2026
#' Email: rrbutler@stanford.edu
#'
#' ---------------------------
#'
#' Notes:
#'
#'   This is built for CAVATICA using the Rstudio SB Bioinformatics environment 
#'   R v4.5.1 - BioC 3.21
#'
#'   Usage:
#'      Rscript break_glass_in_case_of_emergency.R
#'
#' ---------------------------

#' load up the packages we will need:  (uncomment as required)

library(remotes)
options(repos = c(CRAN = "https://cloud.r-project.org"))

#' ---------------------------

# custom shit cause cavatica sux
# Create the directory
dir.create("~/.R", recursive = TRUE, showWarnings = FALSE)

# # First ensure Makevars is set up
# cat('CXX = g++ -std=c++14
# CXX11 = g++ -std=c++14
# CXX14 = g++ -std=c++14
# CXX17 = g++ -std=c++17
# CXXFLAGS = -O2 -g -Wall -fPIC
# ', file = "~/.R/Makevars")

# # Restart R session first (important!)
# .rs.restartR()  # In RStudio

install.packages("RcppParallel")
install_github("traversc/stringfish")
install_github("traversc/qs")

# basic packages
install.packages(
  pkgs = c('RobustRankAggreg', 'harmony'), 
  dependencies = TRUE
)
install_github('immunogenomics/presto') # CRAN package outage
install_github("rspatial/terra")

# Giotto install (can opt for a specific version if available)
# install_github("drieslab/GiottoUtils")
install_github("drieslab/GiottoUtils@R4.4.0")
# GiottoUtils::suite_install(ref = 'suite')
GiottoUtils::suite_install(ref = 'R4.4.0')


