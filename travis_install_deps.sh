#!/bin/bash

# Install dependencies
R -e "install.packages(c('batch', 'randomForest'), dependencies = TRUE, repos = 'https://cloud.r-project.org/')" || exit 1

# Install library
R -e 'source("http://bioconductor.org/biocLite.R") ; biocLite("biosigner")' || exit 2
