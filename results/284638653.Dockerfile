[app/sources/284638653.Dockerfile]
digraph {
  "sha256:52b7d7e269728983df3f6ba25ee2814c3c3e0909d8e1914897d14de06ee1bfd0" [label="docker-image://docker.io/shabbychef/crancheck:latest" shape="ellipse"];
  "sha256:9261d90529db9d7d2dfbed6a7c794e7f94caf496b3924a9def6b7fed3107a292" [label="/bin/sh -c (apt-get clean -y ;  apt-get update -y -qq;  apt-get update --fix-missing );" shape="box"];
  "sha256:1a0ffdad8d2a44e0a05490d4cb9142f4d857eac755c6b3a22c555dd05f0ce6ac" [label="/bin/sh -c (DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true apt-get install -q -y --no-install-recommends   libgs9 texlive-base texlive-binaries \tlibcupsimage2 libcups2 curl wget \tqpdf pandoc ghostscript \ttexlive-latex-extra texlive-latex-base texlive-fonts-recommended texlive-fonts-extra ; \tsync ; \tmkdir -p /usr/local/lib/R/site-library ; \tchmod -R 777 /usr/local/lib/R/site-library ; \tsync ; \t/usr/local/bin/install2.r Rcpp testthat roxygen2 devtools knitr formatR codetools)" shape="box"];
  "sha256:61bdd60fd60ce02005d01d94919602422de09d60206a5fcfeae32dbdbaf8440c" [label="/bin/sh -c /usr/local/bin/install2.r TurtleGraphics;" shape="box"];
  "sha256:fd0d961da7008c7831639226000194f18d5e98d5a77c6d73b5e2c880d94f3086" [label="/bin/sh -c groupadd -g 1001 spav && useradd -g spav -u 1001 spav;" shape="box"];
  "sha256:17963500c62cf9e1f01463268aa30d1e14a78805176231ffc5fd9c784f433405" [label="sha256:17963500c62cf9e1f01463268aa30d1e14a78805176231ffc5fd9c784f433405" shape="plaintext"];
  "sha256:52b7d7e269728983df3f6ba25ee2814c3c3e0909d8e1914897d14de06ee1bfd0" -> "sha256:9261d90529db9d7d2dfbed6a7c794e7f94caf496b3924a9def6b7fed3107a292" [label=""];
  "sha256:9261d90529db9d7d2dfbed6a7c794e7f94caf496b3924a9def6b7fed3107a292" -> "sha256:1a0ffdad8d2a44e0a05490d4cb9142f4d857eac755c6b3a22c555dd05f0ce6ac" [label=""];
  "sha256:1a0ffdad8d2a44e0a05490d4cb9142f4d857eac755c6b3a22c555dd05f0ce6ac" -> "sha256:61bdd60fd60ce02005d01d94919602422de09d60206a5fcfeae32dbdbaf8440c" [label=""];
  "sha256:61bdd60fd60ce02005d01d94919602422de09d60206a5fcfeae32dbdbaf8440c" -> "sha256:fd0d961da7008c7831639226000194f18d5e98d5a77c6d73b5e2c880d94f3086" [label=""];
  "sha256:fd0d961da7008c7831639226000194f18d5e98d5a77c6d73b5e2c880d94f3086" -> "sha256:17963500c62cf9e1f01463268aa30d1e14a78805176231ffc5fd9c784f433405" [label=""];
}

