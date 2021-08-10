[app/sources/364864695.Dockerfile]
digraph {
  "sha256:6050b511077fd8b9948ba24af5d45c831a8545d4e78ecd42798c3f914041f906" [label="docker-image://docker.io/library/r-base:latest" shape="ellipse"];
  "sha256:c1d9bd9eda342a95497ec67b0208eac19c033d932fbd241fedee3f2d48dce17a" [label="/bin/sh -c apt-get update -qq && apt-get install -t unstable -y --no-install-recommends     bash-completion     bison     clang-3.6     debhelper     default-jdk     g++     gcc     gfortran     git     groff-base     libblas-dev     libbz2-dev     libcairo2-dev     libcurl4-openssl-dev     libjpeg-dev     liblapack-dev     liblzma-dev     libncurses5-dev     libpango1.0-dev     libpcre3-dev     libpng-dev     libreadline-dev     libtiff5-dev     libx11-dev     libxt-dev     mpack     rsync     subversion     tcl8.5-dev     texinfo     texlive-base     texlive-extra-utils     texlive-fonts-recommended     texlive-generic-recommended     texlive-latex-base     texlive-latex-extra     texlive-latex-recommended     tk8.5-dev     valgrind     x11proto-core-dev     xauth     xdg-utils     xfonts-base     xvfb     zlib1g-dev" shape="box"];
  "sha256:d16679258f078e429ddddab4ec5fe8c547180a22b9bcd74367f7d14ef7a535ca" [label="/bin/sh -c cd /usr/share/texlive/texmf-dist   && wget http://mirrors.ctan.org/install/fonts/inconsolata.tds.zip   && unzip inconsolata.tds.zip   && rm inconsolata.tds.zip   && echo \"Map zi4.map\" >> /usr/share/texlive/texmf-dist/web2c/updmap.cfg   && mktexlsr   && updmap-sys" shape="box"];
  "sha256:c5112c7f3bf65ac63492774382526555b207f76e33da5bfd25f7c2e688b0aa4d" [label="/bin/sh -c cd /tmp   && svn co http://svn.r-project.org/R/trunk R-devel   && R-devel/tools/rsync-recommended" shape="box"];
  "sha256:7167eff28c00b02b3b8d1ea441ad6f096194bfe510db146d098448f0ce438bba" [label="/bin/sh -c cd /tmp/R-devel   && R_PAPERSIZE=letter \t   R_BATCHSAVE=\"--no-save --no-restore\" \t   R_BROWSER=xdg-open \t   PAGER=/usr/bin/pager \t   PERL=/usr/bin/perl \t   R_UNZIPCMD=/usr/bin/unzip \t   R_ZIPCMD=/usr/bin/zip \t   R_PRINTCMD=/usr/bin/lpr \t   LIBnn=lib \t   AWK=/usr/bin/awk \t   CFLAGS=\"-pipe -std=gnu99 -Wall -pedantic -g\" \t   CXXFLAGS=\"-pipe -Wall -pedantic -g\" \t   FFLAGS=\"-pipe -Wall -pedantic -g\" \t   FCFLAGS=\"-pipe -Wall -pedantic -g\" \t   CC=\"clang-3.6 -fsanitize=undefined -fno-sanitize=float-divide-by-zero,vptr,function\" \t   CXX=\"clang++-3.6 -fsanitize=undefined -fno-sanitize=float-divide-by-zero,vptr,function\" \t   CXX1X=\"clang++-3.6 -fsanitize=undefined -fno-sanitize=float-divide-by-zero,vptr,function\" \t   FC=\"gfortran\" \t   F77=\"gfortran\" \t   ./configure          --enable-R-shlib          --without-blas          --without-lapack          --with-readline          --disable-openmp   && make --jobs=4   && make install   && make clean" shape="box"];
  "sha256:1c24482f6133dc3a3bc9444a5e4f88d433c86f9f977844f1b5514687c81ef415" [label="/bin/sh -c echo 'options(\"repos\"=\"http://cran.rstudio.com\")' >> /usr/local/lib/R/etc/Rprofile.site" shape="box"];
  "sha256:7bd24f5e4e5ae7a95b9b2cd4e93ab261b61a3fb4ef4b35d1035b2518f446cbda" [label="/bin/sh -c apt-get update -qq && apt-get install -t unstable -y --no-install-recommends     aspell     aspell-en     ghostscript     imagemagick     lmodern" shape="box"];
  "sha256:d68d3cba161557ecc9261e34bc15857f5867be7c9444509738ed1dc6a0c63d57" [label="/bin/sh -c apt-get update -qq && apt-get install -t unstable -y --no-install-recommends     libcairo2-dev     libmysqlclient-dev     libpq-dev     libssl-dev     libsqlite3-dev     libxml2-dev" shape="box"];
  "sha256:c6c57eba829702956145047b08b787b9f85c43465bdd9aaf973b28ed247fa5a5" [label="/bin/sh -c R -q -e 'source(\"http://bioconductor.org/biocLite.R\")'" shape="box"];
  "sha256:ac876d40ee98a7349c6586cc4183ee2d06f01cac5fce676998e4517fcac025f7" [label="/bin/sh -c install2.r -d TRUE --error devtools   && rm -rf /tmp/downloaded_packages/ /tmp/*.rds" shape="box"];
  "sha256:12ecb705c55a37dcc7f43edfb724684c8966aa187c867d3023262ad2830ee1fb" [label="/bin/sh -c echo 'if (interactive()) {   suppressMessages(require(devtools));   suppressMessages(require(testthat)) }' >> /usr/local/lib/R/etc/Rprofile.site" shape="box"];
  "sha256:bb04381c9332f61c3078a6e5624373f7d2cbb35af5ab182a44f409342b540104" [label="sha256:bb04381c9332f61c3078a6e5624373f7d2cbb35af5ab182a44f409342b540104" shape="plaintext"];
  "sha256:6050b511077fd8b9948ba24af5d45c831a8545d4e78ecd42798c3f914041f906" -> "sha256:c1d9bd9eda342a95497ec67b0208eac19c033d932fbd241fedee3f2d48dce17a" [label=""];
  "sha256:c1d9bd9eda342a95497ec67b0208eac19c033d932fbd241fedee3f2d48dce17a" -> "sha256:d16679258f078e429ddddab4ec5fe8c547180a22b9bcd74367f7d14ef7a535ca" [label=""];
  "sha256:d16679258f078e429ddddab4ec5fe8c547180a22b9bcd74367f7d14ef7a535ca" -> "sha256:c5112c7f3bf65ac63492774382526555b207f76e33da5bfd25f7c2e688b0aa4d" [label=""];
  "sha256:c5112c7f3bf65ac63492774382526555b207f76e33da5bfd25f7c2e688b0aa4d" -> "sha256:7167eff28c00b02b3b8d1ea441ad6f096194bfe510db146d098448f0ce438bba" [label=""];
  "sha256:7167eff28c00b02b3b8d1ea441ad6f096194bfe510db146d098448f0ce438bba" -> "sha256:1c24482f6133dc3a3bc9444a5e4f88d433c86f9f977844f1b5514687c81ef415" [label=""];
  "sha256:1c24482f6133dc3a3bc9444a5e4f88d433c86f9f977844f1b5514687c81ef415" -> "sha256:7bd24f5e4e5ae7a95b9b2cd4e93ab261b61a3fb4ef4b35d1035b2518f446cbda" [label=""];
  "sha256:7bd24f5e4e5ae7a95b9b2cd4e93ab261b61a3fb4ef4b35d1035b2518f446cbda" -> "sha256:d68d3cba161557ecc9261e34bc15857f5867be7c9444509738ed1dc6a0c63d57" [label=""];
  "sha256:d68d3cba161557ecc9261e34bc15857f5867be7c9444509738ed1dc6a0c63d57" -> "sha256:c6c57eba829702956145047b08b787b9f85c43465bdd9aaf973b28ed247fa5a5" [label=""];
  "sha256:c6c57eba829702956145047b08b787b9f85c43465bdd9aaf973b28ed247fa5a5" -> "sha256:ac876d40ee98a7349c6586cc4183ee2d06f01cac5fce676998e4517fcac025f7" [label=""];
  "sha256:ac876d40ee98a7349c6586cc4183ee2d06f01cac5fce676998e4517fcac025f7" -> "sha256:12ecb705c55a37dcc7f43edfb724684c8966aa187c867d3023262ad2830ee1fb" [label=""];
  "sha256:12ecb705c55a37dcc7f43edfb724684c8966aa187c867d3023262ad2830ee1fb" -> "sha256:bb04381c9332f61c3078a6e5624373f7d2cbb35af5ab182a44f409342b540104" [label=""];
}

