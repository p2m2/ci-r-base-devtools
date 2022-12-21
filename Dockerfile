FROM r-base:4.4.2

RUN apt-get update  \
  && apt-get install git libssl-dev ssh texlive-latex-base texlive-fonts-recommended libcurl4-openssl-dev libxml2-dev -y \
  && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('devtools', 'roxygen2'), repos='http://cran.us.r-project.org')"

