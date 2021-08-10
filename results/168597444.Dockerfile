[app/sources/168597444.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:0543a43df0eacbb701da5b4f058c6e453bad59a8c2ede9507745ddd4285a4f8e" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends     bash-completion     ca-certificates     file     fonts-texgyre     g++     gfortran     gsfonts     libblas-dev     libbz2-1.0     libcurl3     libicu57     libjpeg62-turbo     libopenblas-dev     libpangocairo-1.0-0     libpcre3     libpng16-16     libreadline7     libtiff5     liblzma5     locales     make     unzip     zip     zlib1g   && echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen   && locale-gen en_US.utf8   && /usr/sbin/update-locale LANG=en_US.UTF-8   && BUILDDEPS=\"curl     default-jdk     libbz2-dev     libcairo2-dev     libcurl4-openssl-dev     libpango1.0-dev     libjpeg-dev     libicu-dev     libpcre3-dev     libpng-dev     libreadline-dev     libtiff5-dev     liblzma-dev     libx11-dev     libxt-dev     perl     tcl8.6-dev     tk8.6-dev     texinfo     texlive-extra-utils     texlive-fonts-recommended     texlive-fonts-extra     texlive-latex-recommended     x11proto-core-dev     xauth     xfonts-base     xvfb     zlib1g-dev\"   && apt-get install -y --no-install-recommends $BUILDDEPS   && cd tmp/   && curl -O https://cran.r-project.org/src/base/R-3/R-${R_VERSION}.tar.gz   && tar -xf R-${R_VERSION}.tar.gz   && cd R-${R_VERSION}   && R_PAPERSIZE=letter     R_BATCHSAVE=\"--no-save --no-restore\"     R_BROWSER=xdg-open     PAGER=/usr/bin/pager     PERL=/usr/bin/perl     R_UNZIPCMD=/usr/bin/unzip     R_ZIPCMD=/usr/bin/zip     R_PRINTCMD=/usr/bin/lpr     LIBnn=lib     AWK=/usr/bin/awk     CFLAGS=\"-g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g\"     CXXFLAGS=\"-g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g\"   ./configure --enable-R-shlib                --enable-memory-profiling                --with-readline                --with-blas                --with-tcltk                --disable-nls                --with-recommended-packages   && make   && make install   && echo \"options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')\" >> /usr/local/lib/R/etc/Rprofile.site   && mkdir -p /usr/local/lib/R/site-library   && chown root:staff /usr/local/lib/R/site-library   && chmod g+wx /usr/local/lib/R/site-library   && echo \"R_LIBS_USER='/usr/local/lib/R/site-library'\" >> /usr/local/lib/R/etc/Renviron   && echo \"R_LIBS=\\${R_LIBS-'/usr/local/lib/R/site-library:/usr/local/lib/R/library:/usr/lib/R/library'}\" >> /usr/local/lib/R/etc/Renviron   && [ -z \"$BUILD_DATE\" ] && BUILD_DATE=$(TZ=\"America/Los_Angeles\" date -I) || true   && MRAN=https://mran.microsoft.com/snapshot/${BUILD_DATE}   && echo MRAN=$MRAN >> /etc/environment   && export MRAN=$MRAN   && echo \"options(repos = c(CRAN='$MRAN'), download.file.method = 'libcurl')\" >> /usr/local/lib/R/etc/Rprofile.site   && Rscript -e \"install.packages(c('littler', 'docopt'), repo = '$MRAN')\"   && ln -s /usr/local/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r   && ln -s /usr/local/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r   && ln -s /usr/local/lib/R/site-library/littler/bin/r /usr/local/bin/r   && cd /   && rm -rf /tmp/*   && apt-get remove --purge -y $BUILDDEPS   && apt-get autoremove -y   && apt-get autoclean -y   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:41f9ed413f320eb3bf3e7e4d82187b9b6f3f624a0a5f4995434300afb5e69ef6" [label="sha256:41f9ed413f320eb3bf3e7e4d82187b9b6f3f624a0a5f4995434300afb5e69ef6" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:0543a43df0eacbb701da5b4f058c6e453bad59a8c2ede9507745ddd4285a4f8e" [label=""];
  "sha256:0543a43df0eacbb701da5b4f058c6e453bad59a8c2ede9507745ddd4285a4f8e" -> "sha256:41f9ed413f320eb3bf3e7e4d82187b9b6f3f624a0a5f4995434300afb5e69ef6" [label=""];
}
