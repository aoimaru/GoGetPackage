[app/sources/178422050.Dockerfile]
digraph {
  "sha256:a3f375526f524bc1973177bfc138852499d39db2aaf5e62fcbda20736555f5dc" [label="docker-image://docker.io/compbio/ngseasy-base:1.0" shape="ellipse"];
  "sha256:eabc3d019f2ca1c11f6d6fae971120f260e8370011fdb37553fde704091e62f6" [label="/bin/sh -c apt-get update -y && apt-get upgrade -y" shape="box"];
  "sha256:23483c20c14e6d260a6f32ece63c354beabaa52b46276153151dd0b77da2fbea" [label="/bin/sh -c apt-get install -y \tlibatlas3-base \tlibblas3 \tliblzma5 \tlibpango1.0-0 \tlibpaper-utils \tlibpcre3 \tlibpng12-0 \tlibquadmath0  \tlibreadline6 \tlibsm6 \tlibx11-6 \tlibxext6 \tlibxss1 \tlibxt6 \ttcl8.5 \ttk8.5 \tucf \tunzip \txdg-utils \tzip \tzlib1g \ted \tless \tlittler \tlocales \tr-base-core \tr-base-dev \tr-recommended \tr-cran-vgam \tr-cran-rsqlite" shape="box"];
  "sha256:e259e8abd877aa10d6d09994be5e9f52b17d1f8ba2c1a42f0147734c74780903" [label="/bin/sh -c apt-get update -y && apt-get upgrade -y" shape="box"];
  "sha256:cb23cde0514140f09eb3a3916a4c8711750b65e7cb0fa00d9446c3898129cbd3" [label="/bin/sh -c /usr/bin/Rscript --no-save --no-restore -e 'source(\"http://www.bioconductor.org/biocLite.R\"); biocLite()' && \tcd /usr/local/pipeline/ && \tcurl -k -L -O https://www.stt.msu.edu/users/hengwang/mHMM%20Data/mHMM_1.0.tar.gz && \tR CMD INSTALL mHMM_1.0.tar.gz && \trm mHMM_1.0.tar.gz;" shape="box"];
  "sha256:4c5754f4f1f584472f6d1062826398796a1e2919c1e7780c5bd1e7471ea5b48c" [label="/bin/sh -c chmod -R 777 /usr/local/pipeline" shape="box"];
  "sha256:d36b70f678fb65b137eecbe8be547ebca8e73e04195a7934d5a5d9caf4b1414d" [label="/bin/sh -c chown -R pipeman:ngsgroup /usr/local/pipeline" shape="box"];
  "sha256:bb1cedaf178ef2a3a440b014ca3fb396aeb0bcc841f041f998abd2a4e296e3ef" [label="/bin/sh -c rm -rf /tmp/*" shape="box"];
  "sha256:ed239ce327b0fcfea342a90b7b5fb1a09a5ee773c18ff7c610b71e9339960188" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:bf59e348feadee99903d761e94fafaf33d2b777ae8a42bdde8dd1af755dc152b" [label="/bin/sh -c apt-get autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/" shape="box"];
  "sha256:85bb1a90036e50f05a36cf97c24aa6f0ded94d6c6250dd6f04f2fc1f9baef18f" [label="sha256:85bb1a90036e50f05a36cf97c24aa6f0ded94d6c6250dd6f04f2fc1f9baef18f" shape="plaintext"];
  "sha256:a3f375526f524bc1973177bfc138852499d39db2aaf5e62fcbda20736555f5dc" -> "sha256:eabc3d019f2ca1c11f6d6fae971120f260e8370011fdb37553fde704091e62f6" [label=""];
  "sha256:eabc3d019f2ca1c11f6d6fae971120f260e8370011fdb37553fde704091e62f6" -> "sha256:23483c20c14e6d260a6f32ece63c354beabaa52b46276153151dd0b77da2fbea" [label=""];
  "sha256:23483c20c14e6d260a6f32ece63c354beabaa52b46276153151dd0b77da2fbea" -> "sha256:e259e8abd877aa10d6d09994be5e9f52b17d1f8ba2c1a42f0147734c74780903" [label=""];
  "sha256:e259e8abd877aa10d6d09994be5e9f52b17d1f8ba2c1a42f0147734c74780903" -> "sha256:cb23cde0514140f09eb3a3916a4c8711750b65e7cb0fa00d9446c3898129cbd3" [label=""];
  "sha256:cb23cde0514140f09eb3a3916a4c8711750b65e7cb0fa00d9446c3898129cbd3" -> "sha256:4c5754f4f1f584472f6d1062826398796a1e2919c1e7780c5bd1e7471ea5b48c" [label=""];
  "sha256:4c5754f4f1f584472f6d1062826398796a1e2919c1e7780c5bd1e7471ea5b48c" -> "sha256:d36b70f678fb65b137eecbe8be547ebca8e73e04195a7934d5a5d9caf4b1414d" [label=""];
  "sha256:d36b70f678fb65b137eecbe8be547ebca8e73e04195a7934d5a5d9caf4b1414d" -> "sha256:bb1cedaf178ef2a3a440b014ca3fb396aeb0bcc841f041f998abd2a4e296e3ef" [label=""];
  "sha256:bb1cedaf178ef2a3a440b014ca3fb396aeb0bcc841f041f998abd2a4e296e3ef" -> "sha256:ed239ce327b0fcfea342a90b7b5fb1a09a5ee773c18ff7c610b71e9339960188" [label=""];
  "sha256:ed239ce327b0fcfea342a90b7b5fb1a09a5ee773c18ff7c610b71e9339960188" -> "sha256:bf59e348feadee99903d761e94fafaf33d2b777ae8a42bdde8dd1af755dc152b" [label=""];
  "sha256:bf59e348feadee99903d761e94fafaf33d2b777ae8a42bdde8dd1af755dc152b" -> "sha256:85bb1a90036e50f05a36cf97c24aa6f0ded94d6c6250dd6f04f2fc1f9baef18f" [label=""];
}

