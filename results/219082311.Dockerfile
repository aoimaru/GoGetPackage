[app/sources/219082311.Dockerfile]
digraph {
  "sha256:dfd64fcb71e01ffe075f3c0f4323863b58d1a1b6715726cc1cd229f85859b574" [label="docker-image://docker.io/rocker/verse:latest" shape="ellipse"];
  "sha256:7a71c4509969a9b075a7e473ca21e3efc08d977605571bfbaea95b61ec66af91" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:2abd54252371132eb609acc66023b2aec6d7280bd3fef32ff7529441cffa74fe" [label="/bin/sh -c apt-get install libssl-dev libxml2-dev pandoc pandoc-citeproc libblas-dev liblapack-dev git qpdf -y" shape="box"];
  "sha256:c7c8e8622c39c2c34118476103295b080f83bf6d941df1985d3e201caf4a9dd2" [label="/bin/sh -c adduser --disabled-password --gecos \"\" guest" shape="box"];
  "sha256:93419a75686cfbbcd430b2cd3315760a5501594106ab34261f077be06dbd7966" [label="/bin/sh -c usermod -a -G users guest && usermod -a -G staff guest" shape="box"];
  "sha256:c9179899eead1d5f664a2bce203b8667249638595bcd0ed063d8003070a444d9" [label="/bin/sh -c chmod a+rw /usr/local/lib/R/site-library -R" shape="box"];
  "sha256:a8fa27bf563d8cbac9ae655ec455686cb7f8a74d3a8df2faf3c337d91f3f693e" [label="/bin/sh -c echo 'options(download.file.method = \"libcurl\", repos = c(CRAN = \"https://cran.ma.imperial.ac.uk\"))' > ~/.Rprofile" shape="box"];
  "sha256:d48c8bd0c3bd09f2dfc55fee81afbc033083f7546a124d5b10729ff49aac6aa5" [label="/bin/sh -c r -e \"install.packages('devtools')\"  && r -e \"install.packages('roxygen2')\"  && r -e \"install.packages('testthat')\"  && r -e \"install.packages('rmarkdown')\"  && r -e \"install.packages('adegenet', dependencies = c('Depends', 'Imports'))\"  && r -e \"install.packages('pegas')\"  && r -e \"install.packages('hierfstat')\"  && r -e \"install.packages('poppr')\"  && r -e \"install.packages('akima')\"  && r -e \"install.packages('maps')\"  && r -e \"install.packages('splancs')\"  && r -e \"install.packages('tripack')\"" shape="box"];
  "sha256:c0dc78f6f09a054ce3b43625688d6a93a9850848cb799036e57f6af317b50324" [label="/bin/sh -c r -e \"devtools::install_github('thibautjombart/adegenet')\"" shape="box"];
  "sha256:efa636ef4e6caef64672bd8d4091d281d12591491ac7b0dc69efb7fbbf09cd3f" [label="/bin/sh -c su guest" shape="box"];
  "sha256:cdcf69cb6837c499d771d7eb75254da761d5718aced70dfd12c2d75c720bce03" [label="/bin/sh -c mkdir ~/dev" shape="box"];
  "sha256:1f00bfc91420c2d83bd7adb29825c4d86f7eb3c9706248521c99a40ad08c3820" [label="mkdir{path=/home/guest/dev}" shape="note"];
  "sha256:28fbc97d404a6ceee07eaa8f2037978e6d38ea7dc4f4fe5402d46e742cb51ea1" [label="/bin/sh -c git clone https://github.com/thibautjombart/adegenet" shape="box"];
  "sha256:89925db8d057319f223994de358f336bd51b954c7e0c4579c5b6831b8f30e9d1" [label="mkdir{path=/home/guest}" shape="note"];
  "sha256:061aa1f422301b07aff72667282e2e8db788e5130dd50c448f48a25b974b5ede" [label="/bin/sh -c ls='ls --color=auto'" shape="box"];
  "sha256:b38613806f0305ad964438c9eb50c020b6782c0255617d19bbb24c7f30568c6f" [label="sha256:b38613806f0305ad964438c9eb50c020b6782c0255617d19bbb24c7f30568c6f" shape="plaintext"];
  "sha256:dfd64fcb71e01ffe075f3c0f4323863b58d1a1b6715726cc1cd229f85859b574" -> "sha256:7a71c4509969a9b075a7e473ca21e3efc08d977605571bfbaea95b61ec66af91" [label=""];
  "sha256:7a71c4509969a9b075a7e473ca21e3efc08d977605571bfbaea95b61ec66af91" -> "sha256:2abd54252371132eb609acc66023b2aec6d7280bd3fef32ff7529441cffa74fe" [label=""];
  "sha256:2abd54252371132eb609acc66023b2aec6d7280bd3fef32ff7529441cffa74fe" -> "sha256:c7c8e8622c39c2c34118476103295b080f83bf6d941df1985d3e201caf4a9dd2" [label=""];
  "sha256:c7c8e8622c39c2c34118476103295b080f83bf6d941df1985d3e201caf4a9dd2" -> "sha256:93419a75686cfbbcd430b2cd3315760a5501594106ab34261f077be06dbd7966" [label=""];
  "sha256:93419a75686cfbbcd430b2cd3315760a5501594106ab34261f077be06dbd7966" -> "sha256:c9179899eead1d5f664a2bce203b8667249638595bcd0ed063d8003070a444d9" [label=""];
  "sha256:c9179899eead1d5f664a2bce203b8667249638595bcd0ed063d8003070a444d9" -> "sha256:a8fa27bf563d8cbac9ae655ec455686cb7f8a74d3a8df2faf3c337d91f3f693e" [label=""];
  "sha256:a8fa27bf563d8cbac9ae655ec455686cb7f8a74d3a8df2faf3c337d91f3f693e" -> "sha256:d48c8bd0c3bd09f2dfc55fee81afbc033083f7546a124d5b10729ff49aac6aa5" [label=""];
  "sha256:d48c8bd0c3bd09f2dfc55fee81afbc033083f7546a124d5b10729ff49aac6aa5" -> "sha256:c0dc78f6f09a054ce3b43625688d6a93a9850848cb799036e57f6af317b50324" [label=""];
  "sha256:c0dc78f6f09a054ce3b43625688d6a93a9850848cb799036e57f6af317b50324" -> "sha256:efa636ef4e6caef64672bd8d4091d281d12591491ac7b0dc69efb7fbbf09cd3f" [label=""];
  "sha256:efa636ef4e6caef64672bd8d4091d281d12591491ac7b0dc69efb7fbbf09cd3f" -> "sha256:cdcf69cb6837c499d771d7eb75254da761d5718aced70dfd12c2d75c720bce03" [label=""];
  "sha256:cdcf69cb6837c499d771d7eb75254da761d5718aced70dfd12c2d75c720bce03" -> "sha256:1f00bfc91420c2d83bd7adb29825c4d86f7eb3c9706248521c99a40ad08c3820" [label=""];
  "sha256:1f00bfc91420c2d83bd7adb29825c4d86f7eb3c9706248521c99a40ad08c3820" -> "sha256:28fbc97d404a6ceee07eaa8f2037978e6d38ea7dc4f4fe5402d46e742cb51ea1" [label=""];
  "sha256:28fbc97d404a6ceee07eaa8f2037978e6d38ea7dc4f4fe5402d46e742cb51ea1" -> "sha256:89925db8d057319f223994de358f336bd51b954c7e0c4579c5b6831b8f30e9d1" [label=""];
  "sha256:89925db8d057319f223994de358f336bd51b954c7e0c4579c5b6831b8f30e9d1" -> "sha256:061aa1f422301b07aff72667282e2e8db788e5130dd50c448f48a25b974b5ede" [label=""];
  "sha256:061aa1f422301b07aff72667282e2e8db788e5130dd50c448f48a25b974b5ede" -> "sha256:b38613806f0305ad964438c9eb50c020b6782c0255617d19bbb24c7f30568c6f" [label=""];
}

