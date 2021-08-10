[app/sources/232862950.Dockerfile]
digraph {
  "sha256:08e2beb424980c5b013bda506088923d75d00b4942e68ca8ba1794de59f97f24" [label="docker-image://docker.io/rocker/rstudio:3.5.3" shape="ellipse"];
  "sha256:1472df1a887d5af28a6c5c974d36150fc92596c4be727295b1703e9c2b53be13" [label="/bin/sh -c apt-get update   && apt-get install -y     libmagick++-dev     libudunits2-dev     libgdal-dev     libproj-dev     qpdf     vim" shape="box"];
  "sha256:c800c9a91cc8f5e6819a7c56184b29ac3d283167e4655d45990f3858c18e8347" [label="/bin/sh -c install2.r -e     broom     covr     crul     curl     devtools     dplyr     gganimate     ggplot2     httr     HURDAT     lubridate     magick     magrittr     maptools     pkgdown     purrr     readr     rgdal     rgeos     rlang     rnaturalearthdata     roxygen2     rvest     sf     sp     stringr     testthat     tibble     tidyr     remotes     xml2" shape="box"];
  "sha256:86a882089ed2610ff3695f3f29711e64a5515010d071aaaea008bc279499fc78" [label="/bin/sh -c Rscript -e 'install.packages(\"rrricanesdata\", repos = \"https://timtrice.github.io/drat/\", type = \"source\");'" shape="box"];
  "sha256:402c8fc060175f25fc6fb99265aa3b12fab3bfe7859430165d9807667fc4747f" [label="/bin/sh -c cd /home/rstudio/.rstudio/monitored/user-settings/   && mv user-settings user-settings.copy   && wget https://gist.githubusercontent.com/timtrice/94a679b51388faf99ef7918c7bdaff8d/raw/9a52ffebd1e2e8587918a31ff8e962110b816936/user-settings   && chown -R rstudio:rstudio user-settings" shape="box"];
  "sha256:c95eeada92c16fe20af51c435c46c8cf066fbeaba6595f5972911926250fad5f" [label="/bin/sh -c Rscript -e 'sessionInfo();'" shape="box"];
  "sha256:ec29bed1f1d287c0091c4c29cce01bca8e72219d084743bea3779411fdefd38c" [label="sha256:ec29bed1f1d287c0091c4c29cce01bca8e72219d084743bea3779411fdefd38c" shape="plaintext"];
  "sha256:08e2beb424980c5b013bda506088923d75d00b4942e68ca8ba1794de59f97f24" -> "sha256:1472df1a887d5af28a6c5c974d36150fc92596c4be727295b1703e9c2b53be13" [label=""];
  "sha256:1472df1a887d5af28a6c5c974d36150fc92596c4be727295b1703e9c2b53be13" -> "sha256:c800c9a91cc8f5e6819a7c56184b29ac3d283167e4655d45990f3858c18e8347" [label=""];
  "sha256:c800c9a91cc8f5e6819a7c56184b29ac3d283167e4655d45990f3858c18e8347" -> "sha256:86a882089ed2610ff3695f3f29711e64a5515010d071aaaea008bc279499fc78" [label=""];
  "sha256:86a882089ed2610ff3695f3f29711e64a5515010d071aaaea008bc279499fc78" -> "sha256:402c8fc060175f25fc6fb99265aa3b12fab3bfe7859430165d9807667fc4747f" [label=""];
  "sha256:402c8fc060175f25fc6fb99265aa3b12fab3bfe7859430165d9807667fc4747f" -> "sha256:c95eeada92c16fe20af51c435c46c8cf066fbeaba6595f5972911926250fad5f" [label=""];
  "sha256:c95eeada92c16fe20af51c435c46c8cf066fbeaba6595f5972911926250fad5f" -> "sha256:ec29bed1f1d287c0091c4c29cce01bca8e72219d084743bea3779411fdefd38c" [label=""];
}

