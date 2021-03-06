[app/sources/287597454.Dockerfile]
digraph {
  "sha256:85f5dfdf5635d53f6cfa83530d9dddc9606fb53ae7ea70d41073b9c670fcaed7" [label="local://context" shape="ellipse"];
  "sha256:f764d330068dd5438ce809b95b9e20b347a3ae503661f661a4ba5a632605a27a" [label="docker-image://docker.io/library/ubuntu@sha256:e4a134999bea4abb4a27bc437e6118fdddfb172e1b9d683129b74d254af51675" shape="ellipse"];
  "sha256:5d5a6c111dda29d87b9d2a6ec8cef1ce3d56d027286eaa33bac38f8cc4f1d776" [label="/bin/sh -c apt-get update && apt-get install -y     libncurses5-dev     libncursesw5-dev     libcurl4-openssl-dev     libfreetype6-dev     zlib1g-dev     python     python-setuptools     python-pip     python3     python3-setuptools     python3-pip     git     wget     unzip     ghostscript     pkg-config     libboost-dev     r-base-core     default-jre     apt-transport-https     tabix && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d4c4b50bc0e75b7581605a9b197ad382488b693b0e403f5520e6b0f4a825cbb4" [label="/bin/sh -c wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB && apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB && rm -rf GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB && sh -c 'echo deb https://apt.repos.intel.com/mkl all main > /etc/apt/sources.list.d/intel-mkl.list' && apt-get update && apt-get install intel-mkl-64bit-2018.0-033 -y && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3e2cca5a3da29b613dad4435a575b25cdf0cd5df83c170d1b049f7b4d1bd474c" [label="/bin/sh -c pip install --no-cache-dir common python-dateutil cython==0.27.3 &&     pip3 install --no-cache-dir common python-dateutil cython==0.27.3" shape="box"];
  "sha256:3ff88942fe6a26f8910cf06ab718ce4ec29ef1b367bf0210738fec02957bf1de" [label="/bin/sh -c mkdir /software" shape="box"];
  "sha256:6ac3652383a803459e7075c45f48a4c25fa7dc2a1c58ed902a882fa7368b4203" [label="mkdir{path=/software}" shape="note"];
  "sha256:3ee3c30a3f9d9ef1cc7dc08e18fe95f46b5208c3829ed604752cd1c72f49f1b1" [label="/bin/sh -c git clone --branch v1.11.3 https://github.com/numpy/numpy && cd numpy &&     /bin/bash -c 'echo -e \"[mkl]\\nlibrary_dirs = /opt/intel/compilers_and_libraries_2018/linux/mkl/lib/intel64\\ninclude_dirs = /opt/intel/compilers_and_libraries_2018/linux/mkl/include\\nmkl_libs = mkl_rt\\nlapack_libs =\" > site.cfg' && python setup.py install && python3 setup.py install && cd ../ && rm -rf numpy*" shape="box"];
  "sha256:ba41e9685ff1bb3fd9168d0eeedcf6f5a0dd14fe169226728e5cc12bd122a808" [label="/bin/sh -c git clone --branch v1.0.0 --single-branch https://github.com/scipy/scipy &&     cd scipy && python setup.py install && python3 setup.py install && cd ../ && rm -rf scipy*" shape="box"];
  "sha256:1299004ecb7a7ccead257c1c2eae9c7fb6d7580ce29e06e9fb0bd5ace08eb063" [label="/bin/sh -c git clone --branch v1.5.1 --single-branch https://github.com/matplotlib/matplotlib &&     cd matplotlib && python setup.py install && python3 setup.py install && cd ../ && rm -rf matplotlib*" shape="box"];
  "sha256:022ddb4cf937bbaec901d130b7f77695007e6e80fb6d2dae0903bb576ae8f564" [label="/bin/sh -c pip install --no-cache-dir --no-dependencies macs2==2.1.1.20160309" shape="box"];
  "sha256:92afc7bed43ab8ef28f352f978e6edb35cb45827f3190b50c876ec2939dcd338" [label="/bin/sh -c git clone --branch 2.0.4.2 --single-branch https://github.com/kundajelab/idr &&     cd idr && python3 setup.py install && cd ../ && rm -rf idr*" shape="box"];
  "sha256:3c5276b7b20b265fcf4d6db3bb37d776f0a26d1778c0ef7b21dc63f1867db8ea" [label="/bin/sh -c git clone --branch 1.2 --single-branch https://github.com/samtools/samtools.git &&     git clone --branch 1.2 --single-branch https://github.com/samtools/htslib.git &&     cd samtools && make && make install && cd ../ && rm -rf samtools* htslib*" shape="box"];
  "sha256:f2c48b05dc9d5750c7bac4a1d8fe3dabf08231af8907aa89e36b1b7550ff627a" [label="/bin/sh -c git clone --branch v2.26.0 --single-branch https://github.com/arq5x/bedtools2.git &&     cd bedtools2 && make && make install && cd ../ && rm -rf bedtools2*" shape="box"];
  "sha256:22906b4b624506e8d580f7727b3b79ae3219aeccac77fa99676e9d7f31bbadec" [label="/bin/sh -c wget https://github.com/broadinstitute/picard/releases/download/2.10.6/picard.jar && chmod +x picard.jar" shape="box"];
  "sha256:1ff53d1cc2542c3d865c5489f4e434f819f5e7696eff4560c41ad8963318064c" [label="/bin/sh -c wget https://github.com/lomereiter/sambamba/releases/download/v0.6.6/sambamba_v0.6.6_linux.tar.bz2 && tar -xvjf sambamba_v0.6.6_linux.tar.bz2 && mv sambamba_v0.6.6 sambamba && rm -rf sambamba_*" shape="box"];
  "sha256:fea1e1bf5af8f5a8c2ac46975f70bd0f06e72f892755c119e3827e7da0a7c58b" [label="/bin/sh -c echo \"r <- getOption('repos'); r['CRAN'] <- 'http://cran.r-project.org'; options(repos = r);\" > ~/.Rprofile &&     Rscript -e \"install.packages('snow')\" &&     Rscript -e \"install.packages('snowfall')\" &&     Rscript -e \"install.packages('bitops')\" &&     Rscript -e \"install.packages('caTools')\" &&     Rscript -e \"source('http://bioconductor.org/biocLite.R'); biocLite('Rsamtools')\"" shape="box"];
  "sha256:bd16c6217f9af1d35843c28415ff1c8e37c50f1dd7987da0c1f2b3ce1e46f384" [label="/bin/sh -c wget https://github.com/hms-dbmi/spp/archive/1.13.tar.gz && Rscript -e \"install.packages('./1.13.tar.gz')\" && rm -f 1.13.tar.gz" shape="box"];
  "sha256:a98d59e380cb5624ed945a1230e86ccea2de1283569e21f690d2c7bc671c3e3e" [label="/bin/sh -c wget https://github.com/kundajelab/phantompeakqualtools/archive/1.2.tar.gz && tar -xvf 1.2.tar.gz && rm -f 1.2.tar.gz" shape="box"];
  "sha256:b6bd8446d1c48f11ea77f29a7ff7dafec82de5040818ecaa340382cb22d8b311" [label="/bin/sh -c git clone --branch v0.7.13 --single-branch https://github.com/lh3/bwa.git &&     cd bwa && make && cp bwa /usr/local/bin/ && cd ../ && rm -rf bwa*" shape="box"];
  "sha256:e9144535d7571ea650b5c557a0e298cfa3750661e22ff85ccdf5e8bc88b32372" [label="/bin/sh -c git clone --branch v0.9.0 --single-branch https://github.com/pysam-developers/pysam &&     cd pysam && python setup.py install && cd ../ && rm -rf pysam*" shape="box"];
  "sha256:442eb96f9634b399d6a82a34da5abb3e919ee170fc321449e47b4b66ce3d1184" [label="/bin/sh -c git clone --branch 0.2.8 --single-branch https://github.com/deeptools/pyBigWig &&     cd pyBigWig && python setup.py install && cd ../ && rm -rf pyBigWig*" shape="box"];
  "sha256:0ffcd88f12e2f60ea8ec295167dfc16c686ec3511915924b326994d0e23c96cb" [label="/bin/sh -c pip install --no-cache-dir --no-dependencies deeptools==2.5.4" shape="box"];
  "sha256:7b3989ea574ee8e7a8155b5efcf254fa122b0a2371e8a8c2b1156653855619ff" [label="/bin/sh -c pip install --no-cache-dir pyfaidx==0.4.7.1" shape="box"];
  "sha256:678e6fb9e9c60a990f9c2b80b71fecb65b1ecdf7223d8734a0c63982a84e1523" [label="/bin/sh -c git clone https://github.com/ENCODE-DCC/kentUtils_bin_v377" shape="box"];
  "sha256:0067c2c5ea6a5039bcb795cd60482e0ad291ca3d6851256ffdf3858f59aade77" [label="/bin/sh -c mkdir -p chip-seq-pipeline/src" shape="box"];
  "sha256:7364f55635857fb76fca29a9f6ebc1a56aae568732f52c3e2c556ef604c6153c" [label="copy{src=/src, dest=/software/chip-seq-pipeline/src/}" shape="note"];
  "sha256:c0ef0e4a61ac0fa66a1cd4e0fdc1b163136303643378983961de30e8843fc227" [label="copy{src=/chip.wdl, dest=/software/chip-seq-pipeline/}" shape="note"];
  "sha256:f3ea7bace5a0701e20f55336463eb218353082421525fe41552d64c04d636128" [label="/bin/sh -c for i in $(seq 0 9); do mkdir -p /mnt/ext_$i; done" shape="box"];
  "sha256:d2a7b80f48fb2a6273bf69b3ef89a5df4a928acf9b602dd7b5c460fd2ccc884e" [label="sha256:d2a7b80f48fb2a6273bf69b3ef89a5df4a928acf9b602dd7b5c460fd2ccc884e" shape="plaintext"];
  "sha256:f764d330068dd5438ce809b95b9e20b347a3ae503661f661a4ba5a632605a27a" -> "sha256:5d5a6c111dda29d87b9d2a6ec8cef1ce3d56d027286eaa33bac38f8cc4f1d776" [label=""];
  "sha256:5d5a6c111dda29d87b9d2a6ec8cef1ce3d56d027286eaa33bac38f8cc4f1d776" -> "sha256:d4c4b50bc0e75b7581605a9b197ad382488b693b0e403f5520e6b0f4a825cbb4" [label=""];
  "sha256:d4c4b50bc0e75b7581605a9b197ad382488b693b0e403f5520e6b0f4a825cbb4" -> "sha256:3e2cca5a3da29b613dad4435a575b25cdf0cd5df83c170d1b049f7b4d1bd474c" [label=""];
  "sha256:3e2cca5a3da29b613dad4435a575b25cdf0cd5df83c170d1b049f7b4d1bd474c" -> "sha256:3ff88942fe6a26f8910cf06ab718ce4ec29ef1b367bf0210738fec02957bf1de" [label=""];
  "sha256:3ff88942fe6a26f8910cf06ab718ce4ec29ef1b367bf0210738fec02957bf1de" -> "sha256:6ac3652383a803459e7075c45f48a4c25fa7dc2a1c58ed902a882fa7368b4203" [label=""];
  "sha256:6ac3652383a803459e7075c45f48a4c25fa7dc2a1c58ed902a882fa7368b4203" -> "sha256:3ee3c30a3f9d9ef1cc7dc08e18fe95f46b5208c3829ed604752cd1c72f49f1b1" [label=""];
  "sha256:3ee3c30a3f9d9ef1cc7dc08e18fe95f46b5208c3829ed604752cd1c72f49f1b1" -> "sha256:ba41e9685ff1bb3fd9168d0eeedcf6f5a0dd14fe169226728e5cc12bd122a808" [label=""];
  "sha256:ba41e9685ff1bb3fd9168d0eeedcf6f5a0dd14fe169226728e5cc12bd122a808" -> "sha256:1299004ecb7a7ccead257c1c2eae9c7fb6d7580ce29e06e9fb0bd5ace08eb063" [label=""];
  "sha256:1299004ecb7a7ccead257c1c2eae9c7fb6d7580ce29e06e9fb0bd5ace08eb063" -> "sha256:022ddb4cf937bbaec901d130b7f77695007e6e80fb6d2dae0903bb576ae8f564" [label=""];
  "sha256:022ddb4cf937bbaec901d130b7f77695007e6e80fb6d2dae0903bb576ae8f564" -> "sha256:92afc7bed43ab8ef28f352f978e6edb35cb45827f3190b50c876ec2939dcd338" [label=""];
  "sha256:92afc7bed43ab8ef28f352f978e6edb35cb45827f3190b50c876ec2939dcd338" -> "sha256:3c5276b7b20b265fcf4d6db3bb37d776f0a26d1778c0ef7b21dc63f1867db8ea" [label=""];
  "sha256:3c5276b7b20b265fcf4d6db3bb37d776f0a26d1778c0ef7b21dc63f1867db8ea" -> "sha256:f2c48b05dc9d5750c7bac4a1d8fe3dabf08231af8907aa89e36b1b7550ff627a" [label=""];
  "sha256:f2c48b05dc9d5750c7bac4a1d8fe3dabf08231af8907aa89e36b1b7550ff627a" -> "sha256:22906b4b624506e8d580f7727b3b79ae3219aeccac77fa99676e9d7f31bbadec" [label=""];
  "sha256:22906b4b624506e8d580f7727b3b79ae3219aeccac77fa99676e9d7f31bbadec" -> "sha256:1ff53d1cc2542c3d865c5489f4e434f819f5e7696eff4560c41ad8963318064c" [label=""];
  "sha256:1ff53d1cc2542c3d865c5489f4e434f819f5e7696eff4560c41ad8963318064c" -> "sha256:fea1e1bf5af8f5a8c2ac46975f70bd0f06e72f892755c119e3827e7da0a7c58b" [label=""];
  "sha256:fea1e1bf5af8f5a8c2ac46975f70bd0f06e72f892755c119e3827e7da0a7c58b" -> "sha256:bd16c6217f9af1d35843c28415ff1c8e37c50f1dd7987da0c1f2b3ce1e46f384" [label=""];
  "sha256:bd16c6217f9af1d35843c28415ff1c8e37c50f1dd7987da0c1f2b3ce1e46f384" -> "sha256:a98d59e380cb5624ed945a1230e86ccea2de1283569e21f690d2c7bc671c3e3e" [label=""];
  "sha256:a98d59e380cb5624ed945a1230e86ccea2de1283569e21f690d2c7bc671c3e3e" -> "sha256:b6bd8446d1c48f11ea77f29a7ff7dafec82de5040818ecaa340382cb22d8b311" [label=""];
  "sha256:b6bd8446d1c48f11ea77f29a7ff7dafec82de5040818ecaa340382cb22d8b311" -> "sha256:e9144535d7571ea650b5c557a0e298cfa3750661e22ff85ccdf5e8bc88b32372" [label=""];
  "sha256:e9144535d7571ea650b5c557a0e298cfa3750661e22ff85ccdf5e8bc88b32372" -> "sha256:442eb96f9634b399d6a82a34da5abb3e919ee170fc321449e47b4b66ce3d1184" [label=""];
  "sha256:442eb96f9634b399d6a82a34da5abb3e919ee170fc321449e47b4b66ce3d1184" -> "sha256:0ffcd88f12e2f60ea8ec295167dfc16c686ec3511915924b326994d0e23c96cb" [label=""];
  "sha256:0ffcd88f12e2f60ea8ec295167dfc16c686ec3511915924b326994d0e23c96cb" -> "sha256:7b3989ea574ee8e7a8155b5efcf254fa122b0a2371e8a8c2b1156653855619ff" [label=""];
  "sha256:7b3989ea574ee8e7a8155b5efcf254fa122b0a2371e8a8c2b1156653855619ff" -> "sha256:678e6fb9e9c60a990f9c2b80b71fecb65b1ecdf7223d8734a0c63982a84e1523" [label=""];
  "sha256:678e6fb9e9c60a990f9c2b80b71fecb65b1ecdf7223d8734a0c63982a84e1523" -> "sha256:0067c2c5ea6a5039bcb795cd60482e0ad291ca3d6851256ffdf3858f59aade77" [label=""];
  "sha256:0067c2c5ea6a5039bcb795cd60482e0ad291ca3d6851256ffdf3858f59aade77" -> "sha256:7364f55635857fb76fca29a9f6ebc1a56aae568732f52c3e2c556ef604c6153c" [label=""];
  "sha256:85f5dfdf5635d53f6cfa83530d9dddc9606fb53ae7ea70d41073b9c670fcaed7" -> "sha256:7364f55635857fb76fca29a9f6ebc1a56aae568732f52c3e2c556ef604c6153c" [label=""];
  "sha256:7364f55635857fb76fca29a9f6ebc1a56aae568732f52c3e2c556ef604c6153c" -> "sha256:c0ef0e4a61ac0fa66a1cd4e0fdc1b163136303643378983961de30e8843fc227" [label=""];
  "sha256:85f5dfdf5635d53f6cfa83530d9dddc9606fb53ae7ea70d41073b9c670fcaed7" -> "sha256:c0ef0e4a61ac0fa66a1cd4e0fdc1b163136303643378983961de30e8843fc227" [label=""];
  "sha256:c0ef0e4a61ac0fa66a1cd4e0fdc1b163136303643378983961de30e8843fc227" -> "sha256:f3ea7bace5a0701e20f55336463eb218353082421525fe41552d64c04d636128" [label=""];
  "sha256:f3ea7bace5a0701e20f55336463eb218353082421525fe41552d64c04d636128" -> "sha256:d2a7b80f48fb2a6273bf69b3ef89a5df4a928acf9b602dd7b5c460fd2ccc884e" [label=""];
}

