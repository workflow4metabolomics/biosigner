#!/bin/bash

# Install dependencies
R -e "install.packages(c('batch', 'randomForest'), dependencies = TRUE, repos = 'https://cloud.r-project.org/')"

# Install library
R -e 'source("http://bioconductor.org/biocLite.R") ; biocLite("biosigner")'
