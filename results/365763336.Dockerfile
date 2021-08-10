[app/sources/365763336.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:20aafa6b408385d5b14edcfaa96255fd61777ac85201c91332dc1909957ff979" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends \t\ted \t\tless \t\tlocales \t\tvim-tiny \t\twget \t\tca-certificates \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ea96e6332b13e339ac272a3c39b56294d445952fce75e2d2baf694c433436033" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen \t&& locale-gen en_US.utf8 \t&& /usr/sbin/update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:a9ebf8b3f2abb84d8fc675133bbfbb9891479e72769bd65525281a282ff6cccc" [label="/bin/sh -c apt-get update  && apt-get install -y \t\tbuild-essential \t\tcmake \t\thdf5-tools \t\tlibhdf5-dev \t\thdf5-helpers \t\tlibhdf5-serial-dev \t\tcurl \t\tlibcurl4-gnutls-dev \t\tlibxml2-dev \t\tlibssl-dev" shape="box"];
  "sha256:198b6fd6ec6ca3beada6507df7a23052e1495762cbde351b37ead6a3e518b3f7" [label="/bin/sh -c echo \"deb http://cran.rstudio.com/bin/linux/debian jessie-cran3/\" >>  /etc/apt/sources.list && apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480 && apt-get update --fix-missing &&  apt-get -y install r-base" shape="box"];
  "sha256:ff5d1a4f00c28c0f9570a17b21f235bd20e3195bd0776f0206653c399ade6608" [label="/bin/sh -c R -e 'source(\"http://bioconductor.org/biocLite.R\"); library(BiocInstaller); biocLite(c(\"XML\",\"biomaRt\")); biocLite(\"rhdf5\"); install.packages(\"devtools\", repos=\"http://cloud.r-project.org/\"); devtools::install_github(\"pachterlab/sleuth\")'" shape="box"];
  "sha256:0189f83a794ada4ca5b399ccad284aea2d619f3234e73ad4bba826fc88a9df84" [label="/bin/sh -c wget -q https://github.com/pachterlab/kallisto/archive/v0.42.4.zip &&     unzip v0.42.4.zip &&     mkdir kallisto-0.42.4/build &&     cd kallisto-*/build &&     cmake .. && \tmake && \tmake install" shape="box"];
  "sha256:e87c58454cbd883c426806d87f909d7833311e20a48ebef120fd83f04fd5b33b" [label="sha256:e87c58454cbd883c426806d87f909d7833311e20a48ebef120fd83f04fd5b33b" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:20aafa6b408385d5b14edcfaa96255fd61777ac85201c91332dc1909957ff979" [label=""];
  "sha256:20aafa6b408385d5b14edcfaa96255fd61777ac85201c91332dc1909957ff979" -> "sha256:ea96e6332b13e339ac272a3c39b56294d445952fce75e2d2baf694c433436033" [label=""];
  "sha256:ea96e6332b13e339ac272a3c39b56294d445952fce75e2d2baf694c433436033" -> "sha256:a9ebf8b3f2abb84d8fc675133bbfbb9891479e72769bd65525281a282ff6cccc" [label=""];
  "sha256:a9ebf8b3f2abb84d8fc675133bbfbb9891479e72769bd65525281a282ff6cccc" -> "sha256:198b6fd6ec6ca3beada6507df7a23052e1495762cbde351b37ead6a3e518b3f7" [label=""];
  "sha256:198b6fd6ec6ca3beada6507df7a23052e1495762cbde351b37ead6a3e518b3f7" -> "sha256:ff5d1a4f00c28c0f9570a17b21f235bd20e3195bd0776f0206653c399ade6608" [label=""];
  "sha256:ff5d1a4f00c28c0f9570a17b21f235bd20e3195bd0776f0206653c399ade6608" -> "sha256:0189f83a794ada4ca5b399ccad284aea2d619f3234e73ad4bba826fc88a9df84" [label=""];
  "sha256:0189f83a794ada4ca5b399ccad284aea2d619f3234e73ad4bba826fc88a9df84" -> "sha256:e87c58454cbd883c426806d87f909d7833311e20a48ebef120fd83f04fd5b33b" [label=""];
}

