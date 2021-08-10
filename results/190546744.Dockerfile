[app/sources/190546744.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:db2a5b63ea8ff3ae9bf395ce9c649cc2a9cf5a8706e52010b09ec9bb0ef429f8" [label="/bin/sh -c apt-get install -y python2.7-dev samtools gfortran" shape="box"];
  "sha256:5fce5f0d7ee2051964491e690b7a620264831cb23d3882a4a2320b45ed01415c" [label="/bin/sh -c apt-get install -y libhdf5-dev libatlas-base-dev" shape="box"];
  "sha256:3134e329ceab14fa784cc6756697f3649aebb0e9b0a568477e0a3124b6c5c65e" [label="/bin/sh -c apt-get install -y python-pip" shape="box"];
  "sha256:d4f292b31ad0869e1714fda6c947dc026adcfc25257ee992deb63f7b76446f14" [label="/bin/sh -c pip install -U pip" shape="box"];
  "sha256:9a124f962fe5d3661976af44d716891b2b8e0ec503b87cae79d3afafca6030a0" [label="/bin/sh -c pip install -U setuptools" shape="box"];
  "sha256:4b4721284c65bbb9908bf5f9d8b18dd604ee506c3ae79edb73fbfc26d7e9e231" [label="/bin/sh -c pip install numpy scipy pysam cython" shape="box"];
  "sha256:c861f362b8abe49ba5fadec4d1cbcbcff93a0fd20ca8c95fdceb9cbb35655f42" [label="/bin/sh -c pip install h5py" shape="box"];
  "sha256:3dbfd66d27479f008ed43c1333646070d6952ac0da41a547c76407b6ddfe76ce" [label="/bin/sh -c ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so.8.0.2 /usr/lib/libjpeg.so" shape="box"];
  "sha256:d59a0238598df0ffb3f6c31132c6f8fa09387d7c7655a3846e61c91a9818dd6e" [label="/bin/sh -c ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib/libz.so" shape="box"];
  "sha256:be5c9d0b9f985e8bdc44af278815db502ef1aebdfc70e48e3ade1b434892a2d0" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:3410e4ab8f386cd1a43fac6ff3e03028493ec243ffd31491095330ff69f88d03" [label="/bin/sh -c cd tmp && wget http://effbot.org/downloads/Imaging-1.1.7.tar.gz && tar xzf Imaging-1.1.7.tar.gz && cd Imaging-1.1.7&& python setup.py install" shape="box"];
  "sha256:f8916f412e14f541a06d106d8953e752e9e0195b4d9a29b01797e09fd50bb05c" [label="/bin/sh -c apt-get install -y unzip wget" shape="box"];
  "sha256:5d5e1a195087e93bd89f8ef7058b1c5b7b2d39a1004c94686903ab5e1db2c1e7" [label="/bin/sh -c mkdir -p tmp && cd tmp && wget https://github.com/bxlab/hifive/archive/v1.1.3.zip && unzip v1.1.3.zip && cd hifive-1.1.3 && python setup.py install" shape="box"];
  "sha256:a032f5f40f0d2b99825497139004049acc41c17a91544905cdebd116b108ddee" [label="/bin/sh -c mkdir -p test_data && cd test_data && wget http://files.figshare.com/2259932/test5Cdata.tar.bz2 && tar xjf test5Cdata.tar.bz2" shape="box"];
  "sha256:12dfd5ef2d427ab23d7980d6f0e6e889a6951a4a73a258ad24c889e8ddb52bc9" [label="/bin/sh -c cd test_data && wget http://files.figshare.com/2259931/testHiCdata.tar.bz2 && tar xjf testHiCdata.tar.bz2" shape="box"];
  "sha256:7c0f40be9bbe8da2543d4f281d96d49fdd10c0e3e10d234a5bb1bfac18004ad8" [label="sha256:7c0f40be9bbe8da2543d4f281d96d49fdd10c0e3e10d234a5bb1bfac18004ad8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:db2a5b63ea8ff3ae9bf395ce9c649cc2a9cf5a8706e52010b09ec9bb0ef429f8" [label=""];
  "sha256:db2a5b63ea8ff3ae9bf395ce9c649cc2a9cf5a8706e52010b09ec9bb0ef429f8" -> "sha256:5fce5f0d7ee2051964491e690b7a620264831cb23d3882a4a2320b45ed01415c" [label=""];
  "sha256:5fce5f0d7ee2051964491e690b7a620264831cb23d3882a4a2320b45ed01415c" -> "sha256:3134e329ceab14fa784cc6756697f3649aebb0e9b0a568477e0a3124b6c5c65e" [label=""];
  "sha256:3134e329ceab14fa784cc6756697f3649aebb0e9b0a568477e0a3124b6c5c65e" -> "sha256:d4f292b31ad0869e1714fda6c947dc026adcfc25257ee992deb63f7b76446f14" [label=""];
  "sha256:d4f292b31ad0869e1714fda6c947dc026adcfc25257ee992deb63f7b76446f14" -> "sha256:9a124f962fe5d3661976af44d716891b2b8e0ec503b87cae79d3afafca6030a0" [label=""];
  "sha256:9a124f962fe5d3661976af44d716891b2b8e0ec503b87cae79d3afafca6030a0" -> "sha256:4b4721284c65bbb9908bf5f9d8b18dd604ee506c3ae79edb73fbfc26d7e9e231" [label=""];
  "sha256:4b4721284c65bbb9908bf5f9d8b18dd604ee506c3ae79edb73fbfc26d7e9e231" -> "sha256:c861f362b8abe49ba5fadec4d1cbcbcff93a0fd20ca8c95fdceb9cbb35655f42" [label=""];
  "sha256:c861f362b8abe49ba5fadec4d1cbcbcff93a0fd20ca8c95fdceb9cbb35655f42" -> "sha256:3dbfd66d27479f008ed43c1333646070d6952ac0da41a547c76407b6ddfe76ce" [label=""];
  "sha256:3dbfd66d27479f008ed43c1333646070d6952ac0da41a547c76407b6ddfe76ce" -> "sha256:d59a0238598df0ffb3f6c31132c6f8fa09387d7c7655a3846e61c91a9818dd6e" [label=""];
  "sha256:d59a0238598df0ffb3f6c31132c6f8fa09387d7c7655a3846e61c91a9818dd6e" -> "sha256:be5c9d0b9f985e8bdc44af278815db502ef1aebdfc70e48e3ade1b434892a2d0" [label=""];
  "sha256:be5c9d0b9f985e8bdc44af278815db502ef1aebdfc70e48e3ade1b434892a2d0" -> "sha256:3410e4ab8f386cd1a43fac6ff3e03028493ec243ffd31491095330ff69f88d03" [label=""];
  "sha256:3410e4ab8f386cd1a43fac6ff3e03028493ec243ffd31491095330ff69f88d03" -> "sha256:f8916f412e14f541a06d106d8953e752e9e0195b4d9a29b01797e09fd50bb05c" [label=""];
  "sha256:f8916f412e14f541a06d106d8953e752e9e0195b4d9a29b01797e09fd50bb05c" -> "sha256:5d5e1a195087e93bd89f8ef7058b1c5b7b2d39a1004c94686903ab5e1db2c1e7" [label=""];
  "sha256:5d5e1a195087e93bd89f8ef7058b1c5b7b2d39a1004c94686903ab5e1db2c1e7" -> "sha256:a032f5f40f0d2b99825497139004049acc41c17a91544905cdebd116b108ddee" [label=""];
  "sha256:a032f5f40f0d2b99825497139004049acc41c17a91544905cdebd116b108ddee" -> "sha256:12dfd5ef2d427ab23d7980d6f0e6e889a6951a4a73a258ad24c889e8ddb52bc9" [label=""];
  "sha256:12dfd5ef2d427ab23d7980d6f0e6e889a6951a4a73a258ad24c889e8ddb52bc9" -> "sha256:7c0f40be9bbe8da2543d4f281d96d49fdd10c0e3e10d234a5bb1bfac18004ad8" [label=""];
}

