FROM ubuntu:14.04

MAINTAINER Etienne Thevenot (etienne.thevenot@cea.fr)


# Update and upgrade system
RUN apt-get update
RUN apt-get -y upgrade

# Install R and other needed packages
RUN apt-get -y install r-base
RUN R -e "install.packages('batch', lib='/usr/lib/R/library', dependencies = TRUE, repos='http://mirrors.ebi.ac.uk/CRAN')"
RUN R -e "source('http://bioconductor.org/biocLite.R') ; biocLite('biosigner')"

# Clone tool
RUN apt-get -y install git
RUN git clone -b docker https://github.com/workflow4metabolomics/biosigner /files/biosigner

# Make executable and available in the path
RUN chmod u+x /files/biosigner/biosigner_wrapper.R && cp /files/biosigner/biosigner_wrapper.R /usr/local/bin/

# Clean up
RUN apt-get clean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Define Entry point script
ENTRYPOINT ["/files/biosigner/biosigner_wrapper.R"]
