[app/sources/349584781.Dockerfile]
digraph {
  "sha256:7f1b10152645766e3e1c30df07e33703ca73e5b3e40dda97537ab8fcd33723a6" [label="docker-image://docker.io/ringo/scientific:6.5" shape="ellipse"];
  "sha256:087b65bd231c3216316cf6ddba0757c1cf713c9d8cc6ede74e2c0c1dbabc1325" [label="/bin/sh -c yum install -y libX11-devel libXft-devel libXpm-devel libXext-devel" shape="box"];
  "sha256:497ee4d97c5fcbb3cdf2c0e66eaa15818cc05f05ddbb35a2959f63b06c4f064a" [label="/bin/sh -c wget -O /etc/yum.repos.d/slc6-devtoolset.repo http://linuxsoft.cern.ch/cern/devtoolset/slc6-devtoolset.repo" shape="box"];
  "sha256:555d645a4a849a2ee8b94dde7ae3a3963aa532d725dddc2093abbe5729a54f93" [label="/bin/sh -c yum install -y devtoolset-2" shape="box"];
  "sha256:c36e34bc14c5384c2c84b8fa206ef83ebc582ab64d3fe0c1471b134f9488cd2d" [label="/bin/sh -c wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh" shape="box"];
  "sha256:8bed570a4f2ad1934487dfdee3a73d6253bd738bbcb6f8dcd320fa8706d2a16d" [label="/bin/sh -c /bin/bash Miniconda-latest-Linux-x86_64.sh -b -p conda" shape="box"];
  "sha256:a79422f287c1d820bde6e673bd656915de99a7eba751390a32b01b393da0f849" [label="/bin/sh -c source conda/bin/activate root" shape="box"];
  "sha256:a95c6daaa1fb469d3d49cf8bf7bfa9b2cf83066daaa1d7026be94eec7e9f47ca" [label="/bin/sh -c conda/bin/conda update --yes -q conda" shape="box"];
  "sha256:0b349e3d713c759de605c812d930817f89312457376363720b69244796347734" [label="/bin/sh -c conda/bin/conda update --yes --all" shape="box"];
  "sha256:78c386ca1b13119ebb6f53a7e6a4d155b1cc6f399fa3f3a1d8bf33193192b92c" [label="/bin/sh -c conda/bin/conda config --add channels https://conda.binstar.org/NLeSC" shape="box"];
  "sha256:12a1b8e71d08bb93430dd175d6c855b972b51302a2c9e6f3cc1b01cb2e65c2a8" [label="/bin/sh -c conda/bin/conda config --add channels https://conda.binstar.org/auto" shape="box"];
  "sha256:a6ad495f02831cb8d43d38240be4b843d80a301cf70c520d03afc6ca081d299f" [label="/bin/sh -c conda/bin/conda config --add channels defaults" shape="box"];
  "sha256:e51641a42a0091de35683d57e699757fe2c717ff736c9923977d2e78a0023c1b" [label="/bin/sh -c conda/bin/conda config --set show_channel_urls yes" shape="box"];
  "sha256:328c23054a966f900a78a9c33d91007e359b679316d8076b3e345fc3804b93b9" [label="/bin/sh -c conda/bin/conda install --yes -q conda-build" shape="box"];
  "sha256:4154db5fc13ef95b7e7a97205ca9a9c0ff9ef6a50d25cb21b11c400a35dabc0a" [label="/bin/sh -c conda/bin/conda install --yes jinja2" shape="box"];
  "sha256:ee77b4f59203c3a899ecf0cf5934674413bec78c68563608418daa3184621bc8" [label="/bin/sh -c conda/bin/conda install --yes anaconda-client" shape="box"];
  "sha256:ef3977327b1e4c344ef4fa870ef2260df5dcfbc9fa6d6d38fb3edbfac855cae0" [label="/bin/sh -c conda/bin/conda install --yes binstar" shape="box"];
  "sha256:67837de281c3e730673187756786aaea649ac5646a53119829fd6e5a6ee88cd8" [label="/bin/sh -c scl enable devtoolset-2 bash" shape="box"];
  "sha256:303dba253596c1cd87637ac6b59aa2f22bfe9303df5288687d7610bf0623080a" [label="/bin/sh -c gcc --version & conda --version" shape="box"];
  "sha256:85ac6f531ffca6c2bcad7266d2ee54523449d59b18bb6b13e987043e97896a91" [label="/bin/sh -c wget --no-check-certificate https://cmake.org/files/v3.4/cmake-3.4.0-Linux-x86_64.tar.gz" shape="box"];
  "sha256:3d84a6066c7ce18582fd0f4a0f8e4ca3e81f4ff62bff4de05f9a9b6076fc116c" [label="/bin/sh -c tar -xvf cmake-3.4.0-Linux-x86_64.tar.gz" shape="box"];
  "sha256:09d544fd43c1017e3e3bf1f4c31888c2d860c9bf0d844f46f73e96516054ce29" [label="/bin/sh -c ln -s /cmake-3.4.0-Linux-x86_64/bin/cmake /usr/bin/cmake" shape="box"];
  "sha256:874c65b0159359af4a22470727d718689bef5c099251d1ec15c8e79c13bcaefe" [label="sha256:874c65b0159359af4a22470727d718689bef5c099251d1ec15c8e79c13bcaefe" shape="plaintext"];
  "sha256:7f1b10152645766e3e1c30df07e33703ca73e5b3e40dda97537ab8fcd33723a6" -> "sha256:087b65bd231c3216316cf6ddba0757c1cf713c9d8cc6ede74e2c0c1dbabc1325" [label=""];
  "sha256:087b65bd231c3216316cf6ddba0757c1cf713c9d8cc6ede74e2c0c1dbabc1325" -> "sha256:497ee4d97c5fcbb3cdf2c0e66eaa15818cc05f05ddbb35a2959f63b06c4f064a" [label=""];
  "sha256:497ee4d97c5fcbb3cdf2c0e66eaa15818cc05f05ddbb35a2959f63b06c4f064a" -> "sha256:555d645a4a849a2ee8b94dde7ae3a3963aa532d725dddc2093abbe5729a54f93" [label=""];
  "sha256:555d645a4a849a2ee8b94dde7ae3a3963aa532d725dddc2093abbe5729a54f93" -> "sha256:c36e34bc14c5384c2c84b8fa206ef83ebc582ab64d3fe0c1471b134f9488cd2d" [label=""];
  "sha256:c36e34bc14c5384c2c84b8fa206ef83ebc582ab64d3fe0c1471b134f9488cd2d" -> "sha256:8bed570a4f2ad1934487dfdee3a73d6253bd738bbcb6f8dcd320fa8706d2a16d" [label=""];
  "sha256:8bed570a4f2ad1934487dfdee3a73d6253bd738bbcb6f8dcd320fa8706d2a16d" -> "sha256:a79422f287c1d820bde6e673bd656915de99a7eba751390a32b01b393da0f849" [label=""];
  "sha256:a79422f287c1d820bde6e673bd656915de99a7eba751390a32b01b393da0f849" -> "sha256:a95c6daaa1fb469d3d49cf8bf7bfa9b2cf83066daaa1d7026be94eec7e9f47ca" [label=""];
  "sha256:a95c6daaa1fb469d3d49cf8bf7bfa9b2cf83066daaa1d7026be94eec7e9f47ca" -> "sha256:0b349e3d713c759de605c812d930817f89312457376363720b69244796347734" [label=""];
  "sha256:0b349e3d713c759de605c812d930817f89312457376363720b69244796347734" -> "sha256:78c386ca1b13119ebb6f53a7e6a4d155b1cc6f399fa3f3a1d8bf33193192b92c" [label=""];
  "sha256:78c386ca1b13119ebb6f53a7e6a4d155b1cc6f399fa3f3a1d8bf33193192b92c" -> "sha256:12a1b8e71d08bb93430dd175d6c855b972b51302a2c9e6f3cc1b01cb2e65c2a8" [label=""];
  "sha256:12a1b8e71d08bb93430dd175d6c855b972b51302a2c9e6f3cc1b01cb2e65c2a8" -> "sha256:a6ad495f02831cb8d43d38240be4b843d80a301cf70c520d03afc6ca081d299f" [label=""];
  "sha256:a6ad495f02831cb8d43d38240be4b843d80a301cf70c520d03afc6ca081d299f" -> "sha256:e51641a42a0091de35683d57e699757fe2c717ff736c9923977d2e78a0023c1b" [label=""];
  "sha256:e51641a42a0091de35683d57e699757fe2c717ff736c9923977d2e78a0023c1b" -> "sha256:328c23054a966f900a78a9c33d91007e359b679316d8076b3e345fc3804b93b9" [label=""];
  "sha256:328c23054a966f900a78a9c33d91007e359b679316d8076b3e345fc3804b93b9" -> "sha256:4154db5fc13ef95b7e7a97205ca9a9c0ff9ef6a50d25cb21b11c400a35dabc0a" [label=""];
  "sha256:4154db5fc13ef95b7e7a97205ca9a9c0ff9ef6a50d25cb21b11c400a35dabc0a" -> "sha256:ee77b4f59203c3a899ecf0cf5934674413bec78c68563608418daa3184621bc8" [label=""];
  "sha256:ee77b4f59203c3a899ecf0cf5934674413bec78c68563608418daa3184621bc8" -> "sha256:ef3977327b1e4c344ef4fa870ef2260df5dcfbc9fa6d6d38fb3edbfac855cae0" [label=""];
  "sha256:ef3977327b1e4c344ef4fa870ef2260df5dcfbc9fa6d6d38fb3edbfac855cae0" -> "sha256:67837de281c3e730673187756786aaea649ac5646a53119829fd6e5a6ee88cd8" [label=""];
  "sha256:67837de281c3e730673187756786aaea649ac5646a53119829fd6e5a6ee88cd8" -> "sha256:303dba253596c1cd87637ac6b59aa2f22bfe9303df5288687d7610bf0623080a" [label=""];
  "sha256:303dba253596c1cd87637ac6b59aa2f22bfe9303df5288687d7610bf0623080a" -> "sha256:85ac6f531ffca6c2bcad7266d2ee54523449d59b18bb6b13e987043e97896a91" [label=""];
  "sha256:85ac6f531ffca6c2bcad7266d2ee54523449d59b18bb6b13e987043e97896a91" -> "sha256:3d84a6066c7ce18582fd0f4a0f8e4ca3e81f4ff62bff4de05f9a9b6076fc116c" [label=""];
  "sha256:3d84a6066c7ce18582fd0f4a0f8e4ca3e81f4ff62bff4de05f9a9b6076fc116c" -> "sha256:09d544fd43c1017e3e3bf1f4c31888c2d860c9bf0d844f46f73e96516054ce29" [label=""];
  "sha256:09d544fd43c1017e3e3bf1f4c31888c2d860c9bf0d844f46f73e96516054ce29" -> "sha256:874c65b0159359af4a22470727d718689bef5c099251d1ec15c8e79c13bcaefe" [label=""];
}

