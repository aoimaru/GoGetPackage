[app/sources/320377788.Dockerfile]
digraph {
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" [label="local://context" shape="ellipse"];
  "sha256:867da2652f6ca0fead5c1fce1f4be13d4902b59d00e37f403466b17794ba838e" [label="docker-image://docker.io/arnislielturks/urho3d:10" shape="ellipse"];
  "sha256:0e7e7fd3651e5c4474b55070fdf770d12df5b468cb74400a26277fc3b63a0f80" [label="copy{src=/bin, dest=/code/bin}" shape="note"];
  "sha256:2d4398e273753ceda61e5969790b343c4c6dd52ad2b8b93d393c380e00353719" [label="copy{src=/Source, dest=/code/Source}" shape="note"];
  "sha256:8bc4b9393b9ec33cd334a6440f1bdd51a3c3bcf546e5f46768251c8d84123b23" [label="copy{src=/CMakeLists.txt, dest=/code/CMakeLists.txt}" shape="note"];
  "sha256:891ea98fb2cadf49072f3efbb4ad09cbd89026bc5001b2819de60e90f1a547c2" [label="copy{src=/CMake, dest=/code/CMake}" shape="note"];
  "sha256:2ceaccc330ff1e76433661da4143142bdea88bda545c657d39a7168a2c714602" [label="copy{src=/script, dest=/code/script}" shape="note"];
  "sha256:39821316607d3a554c4505609d0bb067587a125db577e78e658745f813d928a5" [label="/bin/sh -c apt-get update     && apt-get install -y curl zip     && apt-get purge --auto-remove -y && apt-get clean" shape="box"];
  "sha256:9db06a1ddf4e323cf063a11694b23c2987a4e8255199581ceb7650ea7e97145e" [label="/bin/sh -c cd /code     && bash ./script/cmake_mingw.sh build-windows -DURHO3D_HOME=/Urho3D/build-windows -DURHO3D_HASH_DEBUG=0 -DURHO3D_PROFILING=0 -DMINGW_PREFIX=/usr/bin/x86_64-w64-mingw32 -DDIRECTX_LIB_SEARCH_PATHS=/usr/bin/x86-w64-mingw32/lib -DCMAKE_BUILD_TYPE=Release -DURHO3D_DEPLOYMENT_TARGET=generic || true     && cd build-windows && make -j 2     && cd .." shape="box"];
  "sha256:77516010fd6d933fbd1273cdd1670e8106acf4f016938d9297981d5e3df11adf" [label="/bin/sh -c cd /code     && mkdir archive     && pwd     && cp build-windows/bin/EmptyProject.exe archive/EmptyProject.exe || true     && cp build-windows/bin/EmptyProject_d.exe archive/EmptyProject_d.exe || true     && cp -r bin/Data archive/Data     && cp -r bin/CoreData archive/CoreData     && rm -rf archive/Data/Saves/Achievements.json     && chmod -R 777 archive     && cd archive     && zip -r \"build.zip\" *  > /dev/null     && curl -X POST         -H \"Content-Type: multipart/form-data\"         -F file=@build.zip         -F build=${BUILD_NUMBER}         -F platform=windows         -F description=${BUILD_DESCRIPTION}         -F token=$SITE_TOKEN         $SITE_URL || true" shape="box"];
  "sha256:a75bea8d74180dce59cd022f95717f4bbbef8e556e85661736269767affaa710" [label="sha256:a75bea8d74180dce59cd022f95717f4bbbef8e556e85661736269767affaa710" shape="plaintext"];
  "sha256:867da2652f6ca0fead5c1fce1f4be13d4902b59d00e37f403466b17794ba838e" -> "sha256:0e7e7fd3651e5c4474b55070fdf770d12df5b468cb74400a26277fc3b63a0f80" [label=""];
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" -> "sha256:0e7e7fd3651e5c4474b55070fdf770d12df5b468cb74400a26277fc3b63a0f80" [label=""];
  "sha256:0e7e7fd3651e5c4474b55070fdf770d12df5b468cb74400a26277fc3b63a0f80" -> "sha256:2d4398e273753ceda61e5969790b343c4c6dd52ad2b8b93d393c380e00353719" [label=""];
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" -> "sha256:2d4398e273753ceda61e5969790b343c4c6dd52ad2b8b93d393c380e00353719" [label=""];
  "sha256:2d4398e273753ceda61e5969790b343c4c6dd52ad2b8b93d393c380e00353719" -> "sha256:8bc4b9393b9ec33cd334a6440f1bdd51a3c3bcf546e5f46768251c8d84123b23" [label=""];
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" -> "sha256:8bc4b9393b9ec33cd334a6440f1bdd51a3c3bcf546e5f46768251c8d84123b23" [label=""];
  "sha256:8bc4b9393b9ec33cd334a6440f1bdd51a3c3bcf546e5f46768251c8d84123b23" -> "sha256:891ea98fb2cadf49072f3efbb4ad09cbd89026bc5001b2819de60e90f1a547c2" [label=""];
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" -> "sha256:891ea98fb2cadf49072f3efbb4ad09cbd89026bc5001b2819de60e90f1a547c2" [label=""];
  "sha256:891ea98fb2cadf49072f3efbb4ad09cbd89026bc5001b2819de60e90f1a547c2" -> "sha256:2ceaccc330ff1e76433661da4143142bdea88bda545c657d39a7168a2c714602" [label=""];
  "sha256:5ed65608ed32d5854e551513ec562bfde5429c01272eb53556098bc5b85be244" -> "sha256:2ceaccc330ff1e76433661da4143142bdea88bda545c657d39a7168a2c714602" [label=""];
  "sha256:2ceaccc330ff1e76433661da4143142bdea88bda545c657d39a7168a2c714602" -> "sha256:39821316607d3a554c4505609d0bb067587a125db577e78e658745f813d928a5" [label=""];
  "sha256:39821316607d3a554c4505609d0bb067587a125db577e78e658745f813d928a5" -> "sha256:9db06a1ddf4e323cf063a11694b23c2987a4e8255199581ceb7650ea7e97145e" [label=""];
  "sha256:9db06a1ddf4e323cf063a11694b23c2987a4e8255199581ceb7650ea7e97145e" -> "sha256:77516010fd6d933fbd1273cdd1670e8106acf4f016938d9297981d5e3df11adf" [label=""];
  "sha256:77516010fd6d933fbd1273cdd1670e8106acf4f016938d9297981d5e3df11adf" -> "sha256:a75bea8d74180dce59cd022f95717f4bbbef8e556e85661736269767affaa710" [label=""];
}

