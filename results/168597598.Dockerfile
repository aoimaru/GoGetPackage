[app/sources/168597598.Dockerfile]
digraph {
  "sha256:8b366d5e1697a6a3a7efc7562a41e3523e93dc64147eaf56f0b102478d8f6606" [label="docker-image://docker.io/rocker/rstudio:3.4.0" shape="ellipse"];
  "sha256:fbd22a6614583f37729a08e66412f55a51fc59f222eae35d255a3f2c0541f33a" [label="/bin/sh -c apt-get update -qq && apt-get -y --no-install-recommends install   libxml2-dev   libcairo2-dev   libsqlite-dev   libmariadbd-dev   libmariadb-client-lgpl-dev   libpq-dev   libssh2-1-dev   && R -e \"source('https://bioconductor.org/biocLite.R')\"   && install2.r --error     --deps TRUE     tidyverse     dplyr     ggplot2     devtools     formatR     remotes     selectr" shape="box"];
  "sha256:50c66064fe5123aa8137cbebbb13a749be7b0e6923ae48d54ea5547292881f4e" [label="sha256:50c66064fe5123aa8137cbebbb13a749be7b0e6923ae48d54ea5547292881f4e" shape="plaintext"];
  "sha256:8b366d5e1697a6a3a7efc7562a41e3523e93dc64147eaf56f0b102478d8f6606" -> "sha256:fbd22a6614583f37729a08e66412f55a51fc59f222eae35d255a3f2c0541f33a" [label=""];
  "sha256:fbd22a6614583f37729a08e66412f55a51fc59f222eae35d255a3f2c0541f33a" -> "sha256:50c66064fe5123aa8137cbebbb13a749be7b0e6923ae48d54ea5547292881f4e" [label=""];
}

