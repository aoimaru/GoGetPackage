[app/sources/147399172.Dockerfile]
digraph {
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" [label="docker-image://docker.io/tensorflow/tensorflow:1.12.0-gpu-py3" shape="ellipse"];
  "sha256:9e6c6c27410898f245b11a79f15fa109101754bbccce017ea411089d577df870" [label="/bin/sh -c apt-get update -qq  && apt-get install --no-install-recommends -y     build-essential     g++     git     wget     apt-transport-https     curl     cython     libopenblas-base     python3-numpy     python3-scipy     python3-h5py     python3-yaml     python3-pydot  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2502580cc69dd522df9fe4b4c6dd8531419be624b418fbaa8f9dbefd7f11ee7a" [label="/bin/sh -c pip3 --no-cache-dir install -U numpy==1.13.3" shape="box"];
  "sha256:d30339097ca62eb82b48c2f3fb16804fca5442497e975c87ff2709d291e78a64" [label="/bin/sh -c pip3 --no-cache-dir install --no-dependencies git+https://github.com/fchollet/keras.git@${KERAS_VERSION}" shape="box"];
  "sha256:3db97c0383ec6c2d896aeeb219d748097a8c7ab4dc046e409e1eea39c12ae1b3" [label="/bin/sh -c dpkg-query -l > /dpkg-query-l.txt  && pip3 freeze > /pip3-freeze.txt" shape="box"];
  "sha256:026913901a78d148ad3e93bbd0dc402390a4f287a57234c6cb052dbadd049018" [label="/bin/sh -c mkdir /app && cd /app && mkdir install" shape="box"];
  "sha256:8d0c76cf063ba49e3d416190c1facb81b725a8eb28cd195f12c59e525de380ee" [label="mkdir{path=/app/install}" shape="note"];
  "sha256:0bdbf786536e9b5f31a9ccf6b58cc2ad97c95f05f13def13f47d6ce9dc8e4140" [label="/bin/sh -c wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb" shape="box"];
  "sha256:7ee3e8522d6a91fcfd2ed7fb222724afc500d7ee46d35f64b2f2bad6038ced58" [label="/bin/sh -c dpkg -i packages-microsoft-prod.deb" shape="box"];
  "sha256:e2e8803292cc57790f608fbc99f7708b47f783ac28f488592ccc89590fb43351" [label="/bin/sh -c apt-get update && apt-get install -y dotnet-sdk-2.2" shape="box"];
  "sha256:483f2540e186c4b6052dc0c23dbc2fb7a7f63f5a8478151109ff1db41657edf6" [label="/bin/sh -c pip3 install --upgrade setuptools" shape="box"];
  "sha256:df80e7667750a23069777d4ac47b298e3e3abab151e3ae6059c368289ccf6134" [label="local://context" shape="ellipse"];
  "sha256:5d9a5e66971cf6c6f7c3b6a3d586de37e30ecdef393048b2c4ffcab4d660182b" [label="copy{src=/RetinaNet, dest=/app/install/RetinaNet}" shape="note"];
  "sha256:6f6e9360172d53968134d1f24b2155805935667aedaa6d40158f4b4ffe845555" [label="/bin/sh -c cd RetinaNet     && pip3 install opencv-python     && pip3 install numpy --user && pip3 install . --user     && python3 setup.py build_ext --inplace && pip3 install flask" shape="box"];
  "sha256:9614106c4a57d8fb7ec1708c514dd2a235a84cb237874fd0a7939742680d8dac" [label="copy{src=/RescuerLaApp, dest=/app/install/RescuerLaApp}" shape="note"];
  "sha256:7591eda916f409378548617ef25b8b76dffe7f7f1e717a9e34e37826f07674dd" [label="/bin/sh -c cd RescuerLaApp     && dotnet restore && dotnet add package Avalonia.Skia.Linux.Natives --version 1.68" shape="box"];
  "sha256:838abcf0c66d51d49a82c03d9d512800c233477ccf54338644f21fa82b22c30f" [label="/bin/sh -c cd RescuerLaApp     && dotnet publish --framework netcoreapp2.2 --runtime=\"ubuntu.16.10-x64\" -c Release -o /app" shape="box"];
  "sha256:079a24eeaab167c9fdc4a52cb803253f98e136badd91931ef6cb85620964397f" [label="/bin/sh -c cp -r /app/install/RetinaNet /app/python" shape="box"];
  "sha256:2249d9ee5ebf38896d79e9d840deeb766712705a1950dcc605511940c26ce325" [label="/bin/sh -c cd /app/python/snapshots     && wget -O resnet50_liza_alert_v1_interface.h5 https://github.com/gosha20777/rescuer-la/releases/download/0.1.1/resnet50_liza_alert_v1_interface.h5" shape="box"];
  "sha256:2cee653a6a065b5a5907a7c45823decc3a4314e9952eaf20f056bd5e634993ba" [label="/bin/sh -c apt-get install -y libgtk-3-dev python3-tk" shape="box"];
  "sha256:2f2471f57184e4a199bb0760088623227cb456d56556f8fb66c92306138ca13b" [label="mkdir{path=/app}" shape="note"];
  "sha256:f30d0c7d8f70ba7dad6e93ae64a9caef887a707c28c0de6be3ff2927e72ab3fe" [label="sha256:f30d0c7d8f70ba7dad6e93ae64a9caef887a707c28c0de6be3ff2927e72ab3fe" shape="plaintext"];
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" -> "sha256:9e6c6c27410898f245b11a79f15fa109101754bbccce017ea411089d577df870" [label=""];
  "sha256:9e6c6c27410898f245b11a79f15fa109101754bbccce017ea411089d577df870" -> "sha256:2502580cc69dd522df9fe4b4c6dd8531419be624b418fbaa8f9dbefd7f11ee7a" [label=""];
  "sha256:2502580cc69dd522df9fe4b4c6dd8531419be624b418fbaa8f9dbefd7f11ee7a" -> "sha256:d30339097ca62eb82b48c2f3fb16804fca5442497e975c87ff2709d291e78a64" [label=""];
  "sha256:d30339097ca62eb82b48c2f3fb16804fca5442497e975c87ff2709d291e78a64" -> "sha256:3db97c0383ec6c2d896aeeb219d748097a8c7ab4dc046e409e1eea39c12ae1b3" [label=""];
  "sha256:3db97c0383ec6c2d896aeeb219d748097a8c7ab4dc046e409e1eea39c12ae1b3" -> "sha256:026913901a78d148ad3e93bbd0dc402390a4f287a57234c6cb052dbadd049018" [label=""];
  "sha256:026913901a78d148ad3e93bbd0dc402390a4f287a57234c6cb052dbadd049018" -> "sha256:8d0c76cf063ba49e3d416190c1facb81b725a8eb28cd195f12c59e525de380ee" [label=""];
  "sha256:8d0c76cf063ba49e3d416190c1facb81b725a8eb28cd195f12c59e525de380ee" -> "sha256:0bdbf786536e9b5f31a9ccf6b58cc2ad97c95f05f13def13f47d6ce9dc8e4140" [label=""];
  "sha256:0bdbf786536e9b5f31a9ccf6b58cc2ad97c95f05f13def13f47d6ce9dc8e4140" -> "sha256:7ee3e8522d6a91fcfd2ed7fb222724afc500d7ee46d35f64b2f2bad6038ced58" [label=""];
  "sha256:7ee3e8522d6a91fcfd2ed7fb222724afc500d7ee46d35f64b2f2bad6038ced58" -> "sha256:e2e8803292cc57790f608fbc99f7708b47f783ac28f488592ccc89590fb43351" [label=""];
  "sha256:e2e8803292cc57790f608fbc99f7708b47f783ac28f488592ccc89590fb43351" -> "sha256:483f2540e186c4b6052dc0c23dbc2fb7a7f63f5a8478151109ff1db41657edf6" [label=""];
  "sha256:483f2540e186c4b6052dc0c23dbc2fb7a7f63f5a8478151109ff1db41657edf6" -> "sha256:5d9a5e66971cf6c6f7c3b6a3d586de37e30ecdef393048b2c4ffcab4d660182b" [label=""];
  "sha256:df80e7667750a23069777d4ac47b298e3e3abab151e3ae6059c368289ccf6134" -> "sha256:5d9a5e66971cf6c6f7c3b6a3d586de37e30ecdef393048b2c4ffcab4d660182b" [label=""];
  "sha256:5d9a5e66971cf6c6f7c3b6a3d586de37e30ecdef393048b2c4ffcab4d660182b" -> "sha256:6f6e9360172d53968134d1f24b2155805935667aedaa6d40158f4b4ffe845555" [label=""];
  "sha256:6f6e9360172d53968134d1f24b2155805935667aedaa6d40158f4b4ffe845555" -> "sha256:9614106c4a57d8fb7ec1708c514dd2a235a84cb237874fd0a7939742680d8dac" [label=""];
  "sha256:df80e7667750a23069777d4ac47b298e3e3abab151e3ae6059c368289ccf6134" -> "sha256:9614106c4a57d8fb7ec1708c514dd2a235a84cb237874fd0a7939742680d8dac" [label=""];
  "sha256:9614106c4a57d8fb7ec1708c514dd2a235a84cb237874fd0a7939742680d8dac" -> "sha256:7591eda916f409378548617ef25b8b76dffe7f7f1e717a9e34e37826f07674dd" [label=""];
  "sha256:7591eda916f409378548617ef25b8b76dffe7f7f1e717a9e34e37826f07674dd" -> "sha256:838abcf0c66d51d49a82c03d9d512800c233477ccf54338644f21fa82b22c30f" [label=""];
  "sha256:838abcf0c66d51d49a82c03d9d512800c233477ccf54338644f21fa82b22c30f" -> "sha256:079a24eeaab167c9fdc4a52cb803253f98e136badd91931ef6cb85620964397f" [label=""];
  "sha256:079a24eeaab167c9fdc4a52cb803253f98e136badd91931ef6cb85620964397f" -> "sha256:2249d9ee5ebf38896d79e9d840deeb766712705a1950dcc605511940c26ce325" [label=""];
  "sha256:2249d9ee5ebf38896d79e9d840deeb766712705a1950dcc605511940c26ce325" -> "sha256:2cee653a6a065b5a5907a7c45823decc3a4314e9952eaf20f056bd5e634993ba" [label=""];
  "sha256:2cee653a6a065b5a5907a7c45823decc3a4314e9952eaf20f056bd5e634993ba" -> "sha256:2f2471f57184e4a199bb0760088623227cb456d56556f8fb66c92306138ca13b" [label=""];
  "sha256:2f2471f57184e4a199bb0760088623227cb456d56556f8fb66c92306138ca13b" -> "sha256:f30d0c7d8f70ba7dad6e93ae64a9caef887a707c28c0de6be3ff2927e72ab3fe" [label=""];
}

