FROM biocontainers/biocontainers:v1.2.0_cv1

RUN conda install -c conda-forge -c bioconda r-base=4.0.3  r-devtools  r-randomforest=4.6_14 bioconductor-bsgenome.hsapiens.ucsc.hg19=1.4.3 bioconductor-bsgenome.hsapiens.ucsc.hg38=1.4.3
RUN R --no-echo -e 'devtools::install_github("UMCUGenetics/CHORD", ref="2.00")'
RUN R --no-echo -e 'devtools::install_github("UMCUGenetics/mutSigExtractor", ref="1.14")'
COPY extractSigPredictHRD.R /usr/local/bin
