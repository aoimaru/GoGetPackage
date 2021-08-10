[app/sources/243134363.Dockerfile]
digraph {
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" [label="docker-image://docker.io/ppc64le/r-base:latest" shape="ellipse"];
  "sha256:749f8236ab4d1c32ca2774814c00053f8725a07bdbefb47d686acb6b67f33e32" [label="/bin/sh -c apt-get update         && apt-get install git -y \t&& git clone https://github.com/cran/xtable.git\t&& cd xtable && git checkout 1.8-2         && R -e 'install.packages(\"knitr\",dependencies= TRUE,repos=\"http://cran.rstudio.com/\")' \t&& R CMD check xtable --no-manual \t&& cd .. && rm -rf xtable \t&& apt-get purge --auto-remove git -y" shape="box"];
  "sha256:2cb190cc10d869f346fe8da5d5fb72edb8b5a6d52aa95888182ffd0e141e47bb" [label="sha256:2cb190cc10d869f346fe8da5d5fb72edb8b5a6d52aa95888182ffd0e141e47bb" shape="plaintext"];
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" -> "sha256:749f8236ab4d1c32ca2774814c00053f8725a07bdbefb47d686acb6b67f33e32" [label=""];
  "sha256:749f8236ab4d1c32ca2774814c00053f8725a07bdbefb47d686acb6b67f33e32" -> "sha256:2cb190cc10d869f346fe8da5d5fb72edb8b5a6d52aa95888182ffd0e141e47bb" [label=""];
}

