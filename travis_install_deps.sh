#!/bin/bash

# Get all dependencies
dependencies=$(grep 'requirement.*type="package.*>' biosigner_config.xml | grep -v biodb | sed 's!^.*>r-\([^<>]*\)</.*$!\1!')

# Install dependencies
for dep in $dependencies ; do

	# Get version
	version=$(grep "requirement.*type=\"package.*>r-$dep" biosigner_config.xml | sed 's/^.*version="\([^"]*\)".*$/\1/')

	# Install package
	R -e "devtools::install_version('$dep', version = '$version', repos = 'https://cloud.r-project.org/')"
done

R -e 'source("http://bioconductor.org/biocLite.R") ; biocLite("biosigner")'
