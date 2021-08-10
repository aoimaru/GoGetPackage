[app/sources/152909225.Dockerfile]
digraph {
  "sha256:eef59b9de07f227ed1fdd7800f81cd8acce8bd96c912a0f101b2e1855b04744f" [label="docker-image://docker.io/phusion/baseimage:0.9.18" shape="ellipse"];
  "sha256:68faf2f16a61f20b893fa2f670062cee2b1d0e8112002dd87d466697683cf97b" [label="mkdir{path=/app}" shape="note"];
  "sha256:7e97ab9dac583dfe933e5780187bb7173ba66ea5507e15e0d15a0d1bb17cc1fd" [label="/bin/sh -c apt-get -y update && apt-get install -y wget make g++ dh-autoreconf pkg-config" shape="box"];
  "sha256:ed2c6ae8f4553b29a4daa0ca0a7b1148699f76243dab276e3defa317bacf9fd6" [label="/bin/sh -c wget https://github.com/premake/premake-core/releases/download/v5.0.0-alpha13/premake-5.0.0-alpha13-linux.tar.gz &&     tar -zxvf premake-*.tar.gz &&     rm premake-*.tar.gz &&     mv premake5 /usr/local/bin" shape="box"];
  "sha256:799c0081d3b2add6bb6cec87c0095c015ec8f8b5c47c55428276e90fdcde9796" [label="local://context" shape="ellipse"];
  "sha256:13ab8ab348f361b66bb6a9424790ac2e569fcb1be1f32f6c864527743040e357" [label="copy{src=/reliable.io, dest=/app/reliable.io}" shape="note"];
  "sha256:a92e39c20cc9674bdc3ce48bca8f9ca7ce8d6a34797ef168f08569e3a8d0bc33" [label="/bin/sh -c cd reliable.io && find . -exec touch {} \\; && premake5 gmake && make -j32 test config=release_x64 && cp ./bin/* /app" shape="box"];
  "sha256:f1f19dbd3e7ee649e27cab9f367904bfbda3de4df3762b2bf5fb29bb170c6a8b" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:ae03d25c0a11c6d56a5efaa012d8bbf3628e292cd945b078ac93692ba968fbae" [label="sha256:ae03d25c0a11c6d56a5efaa012d8bbf3628e292cd945b078ac93692ba968fbae" shape="plaintext"];
  "sha256:eef59b9de07f227ed1fdd7800f81cd8acce8bd96c912a0f101b2e1855b04744f" -> "sha256:68faf2f16a61f20b893fa2f670062cee2b1d0e8112002dd87d466697683cf97b" [label=""];
  "sha256:68faf2f16a61f20b893fa2f670062cee2b1d0e8112002dd87d466697683cf97b" -> "sha256:7e97ab9dac583dfe933e5780187bb7173ba66ea5507e15e0d15a0d1bb17cc1fd" [label=""];
  "sha256:7e97ab9dac583dfe933e5780187bb7173ba66ea5507e15e0d15a0d1bb17cc1fd" -> "sha256:ed2c6ae8f4553b29a4daa0ca0a7b1148699f76243dab276e3defa317bacf9fd6" [label=""];
  "sha256:ed2c6ae8f4553b29a4daa0ca0a7b1148699f76243dab276e3defa317bacf9fd6" -> "sha256:13ab8ab348f361b66bb6a9424790ac2e569fcb1be1f32f6c864527743040e357" [label=""];
  "sha256:799c0081d3b2add6bb6cec87c0095c015ec8f8b5c47c55428276e90fdcde9796" -> "sha256:13ab8ab348f361b66bb6a9424790ac2e569fcb1be1f32f6c864527743040e357" [label=""];
  "sha256:13ab8ab348f361b66bb6a9424790ac2e569fcb1be1f32f6c864527743040e357" -> "sha256:a92e39c20cc9674bdc3ce48bca8f9ca7ce8d6a34797ef168f08569e3a8d0bc33" [label=""];
  "sha256:a92e39c20cc9674bdc3ce48bca8f9ca7ce8d6a34797ef168f08569e3a8d0bc33" -> "sha256:f1f19dbd3e7ee649e27cab9f367904bfbda3de4df3762b2bf5fb29bb170c6a8b" [label=""];
  "sha256:f1f19dbd3e7ee649e27cab9f367904bfbda3de4df3762b2bf5fb29bb170c6a8b" -> "sha256:ae03d25c0a11c6d56a5efaa012d8bbf3628e292cd945b078ac93692ba968fbae" [label=""];
}

