[app/sources/243133399.Dockerfile]
digraph {
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" [label="docker-image://docker.io/ppc64le/r-base:latest" shape="ellipse"];
  "sha256:3626e082d9cdd86e0a925a3f9b66ac8ecf4d41c0f9056c002bbf257676eb4da4" [label="/bin/sh -c apt-get update \t&& apt-get install git -y \t&& R -e 'install.packages(\"Rcpp\",dependencies= TRUE,repos=\"http://cran.rstudio.com/\"); install.packages(\"testthat\",dependencies= TRUE,repos=\"http://cran.rstudio.com/\"); install.packages(\"abind\",dependencies= TRUE,repos=\"http://cran.rstudio.com/\")' \t&& git clone https://github.com/hadley/plyr.git \t&& cd plyr && git checkout v1.8.4 \t&& R CMD build . \t&& R CMD check plyr_1.8.4.tar.gz --no-manual \t&& cd .. && R CMD INSTALL plyr \t&& apt-get purge --auto-remove git -y" shape="box"];
  "sha256:f54093964692a5dbec735f6315a29e9b5671fa61e0c9b91e39e7a671d01e3a9a" [label="sha256:f54093964692a5dbec735f6315a29e9b5671fa61e0c9b91e39e7a671d01e3a9a" shape="plaintext"];
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" -> "sha256:3626e082d9cdd86e0a925a3f9b66ac8ecf4d41c0f9056c002bbf257676eb4da4" [label=""];
  "sha256:3626e082d9cdd86e0a925a3f9b66ac8ecf4d41c0f9056c002bbf257676eb4da4" -> "sha256:f54093964692a5dbec735f6315a29e9b5671fa61e0c9b91e39e7a671d01e3a9a" [label=""];
}

