## Discovery of significant signatures from omics data
#### A Galaxy module from the [Workflow4metabolomics](http://workflow4metabolomics.org) project

### Description

**Version:** 2.2.1  
**Date:** 2015-11-18  
**Author:** Philippe Rinaudo and Etienne A. Thevenot (CEA, LIST, MetaboHUB, W4M Core Development Team)   
**Email:** [etienne.thevenot(at)cea.fr](mailto:etienne.thevenot@cea.fr)  
**Citation:** Rinaudo P., Boudah S., Junot C. and Thevenot E.A. (2015). biosigner: A new method for the discovery of restricted and stable molecular signatures from omics data. *Frontiers in Molecular Biosciences*, in review.   
**Licence:** CeCILL
**Reference history:** [W4M00003_diaplasma](http://galaxy.workflow4metabolomics.org/history/list_published)      
**Funding:** Agence Nationale de la Recherche ([MetaboHUB](http://www.metabohub.fr/index.php?lang=en&Itemid=473) national infrastructure for metabolomics and fluxomics, ANR-11-INBS-0010 grant)

### Installation

* Configuration file: **biosigner_config.xml**
* Image files: 
    + **static/images/biosigner_workflowPositionImage.png**   
    + **static/images/biosigner_workingExampleImage.png**  
* Wrapper file: **biosigner_wrapper.R**  
* R packages  
    + **batch** from CRAN  
> install.packages("batch", dep=TRUE)  
    + **biosigner** from Bioconductor (which itself depends on **ropls** from Bioconductor and **e1071** and **randomForest** from CRAN)  
> source("http://www.bioconductor.org/biocLite.R")  
> biocLite("biosigner")      

### Tests

The code in the wrapper can be tested by running the **tests/biosigner_tests.R** in R  

### News

##### CHANGES IN VERSION 2.2.1

    o Creation of the tool: with S3 versions of biosigner (< 1.0.0) and ropls (< 1.4.0)
    
***