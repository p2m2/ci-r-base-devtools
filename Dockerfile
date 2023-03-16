FROM r-base:4.2.3

RUN apt-get update  \
  && apt-get install git libssl-dev ssh texlive-latex-base texlive-fonts-recommended \
  libcurl4-openssl-dev libxml2-dev libzmq3-dev libharfbuzz-dev libfribidi-dev \
  libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev build-essential libfontconfig1-dev \
  texlive-fonts-extra texlive-latex-recommended texinfo -y \
  && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('devtools', 'roxygen2'), repos='http://cran.us.r-project.org')"

