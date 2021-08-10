[app/sources/222990114.Dockerfile]
digraph {
  "sha256:4d785dae761df6a8f5c8049e2f99a66c2f177c7f7fd0f7f7766b870dd0c2a300" [label="local://context" shape="ellipse"];
  "sha256:88dec7b388e8ef443a31b660a258a31751617badd102396244fff2a8e7d1fc2b" [label="docker-image://docker.io/jaschac/debian-gcc:latest@sha256:58900998328cfeeaa9143e46b80ccde90f19c09e156316f09444ac7ec6c53c3a" shape="ellipse"];
  "sha256:08c4e6b0426f8869d9c41de608a8efaa9fc47d0cda6d75a9e5001a141fc5b18f" [label="/bin/sh -c mkdir -p /usr/src/pwn" shape="box"];
  "sha256:4f3cd9f8d51b9ce7a5f9b6f48cf9ec3f564f68fa02e1c3fc7898dfd93fb254e5" [label="mkdir{path=/usr/src/pwn}" shape="note"];
  "sha256:b676449bc529978a9a266a936cb4010701c2cdc5bdd5cab6d924ab2dd298a79c" [label="copy{src=/flag.txt, dest=/usr/src/pwn/}" shape="note"];
  "sha256:1ffa0351ceb00f03580d5dc5baee1d86f56bf6826981eeacb510ed1d41de40ab" [label="/bin/sh -c chmod 444 flag.txt" shape="box"];
  "sha256:c4ce7cf84b61314d911070fc11725793e5eaaf05a22277483ae205d3c472c008" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:93d45281adfe230485dcae87f2b1bf0a88bf4cd0a40b8ff6c6d548d704ed6b8c" [label="/bin/sh -c apt-get install -y socat gcc-multilib" shape="box"];
  "sha256:b9748405d50f3550f9b93c89592f655ddc40e4e21746dc6c0c0bebde26b5899d" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9acef4bf8c8fe8e5230f85f65733e3d1cb7871562f4bd6f81ae8d264cfa9712f" [label="/bin/sh -c cd /usr/src/pwn/" shape="box"];
  "sha256:473eb78749527cc4b6b41635ccb69e041dffa73de41414645d3b28820e225dda" [label="/bin/sh -c adduser guesslength" shape="box"];
  "sha256:e37d6831fa7a4b4cd4b251af34fa4b7dfb2f60355c25ba4ad07da739a9bf0e39" [label="copy{src=/guesslength_for_server.c, dest=/usr/src/pwn/}" shape="note"];
  "sha256:79aad0c7e84cad6630537d847047e2330224530e47785ef73f1d99f722c4df47" [label="/bin/sh -c gcc -o guesslength -m32 guesslength_for_server.c" shape="box"];
  "sha256:6db29567002c7a99830cc386c6976642b6a99f423d075bc854884944c592e016" [label="/bin/sh -c chmod 111 guesslength" shape="box"];
  "sha256:56311251412095cafb222def68f205b3bc01103e2df51b2dcc338066ab63ebb6" [label="/bin/sh -c rm guesslength_for_server.c" shape="box"];
  "sha256:5549d38f24321fcab83615da06fe6863b4c41624be1da9154e21645eb63a0f7f" [label="/bin/sh -c echo $PWD" shape="box"];
  "sha256:61aeda5f38bbe3824f55f2bba2fb3cd68649f5010d6066ca9300dd2bcb12fa1c" [label="sha256:61aeda5f38bbe3824f55f2bba2fb3cd68649f5010d6066ca9300dd2bcb12fa1c" shape="plaintext"];
  "sha256:88dec7b388e8ef443a31b660a258a31751617badd102396244fff2a8e7d1fc2b" -> "sha256:08c4e6b0426f8869d9c41de608a8efaa9fc47d0cda6d75a9e5001a141fc5b18f" [label=""];
  "sha256:08c4e6b0426f8869d9c41de608a8efaa9fc47d0cda6d75a9e5001a141fc5b18f" -> "sha256:4f3cd9f8d51b9ce7a5f9b6f48cf9ec3f564f68fa02e1c3fc7898dfd93fb254e5" [label=""];
  "sha256:4f3cd9f8d51b9ce7a5f9b6f48cf9ec3f564f68fa02e1c3fc7898dfd93fb254e5" -> "sha256:b676449bc529978a9a266a936cb4010701c2cdc5bdd5cab6d924ab2dd298a79c" [label=""];
  "sha256:4d785dae761df6a8f5c8049e2f99a66c2f177c7f7fd0f7f7766b870dd0c2a300" -> "sha256:b676449bc529978a9a266a936cb4010701c2cdc5bdd5cab6d924ab2dd298a79c" [label=""];
  "sha256:b676449bc529978a9a266a936cb4010701c2cdc5bdd5cab6d924ab2dd298a79c" -> "sha256:1ffa0351ceb00f03580d5dc5baee1d86f56bf6826981eeacb510ed1d41de40ab" [label=""];
  "sha256:1ffa0351ceb00f03580d5dc5baee1d86f56bf6826981eeacb510ed1d41de40ab" -> "sha256:c4ce7cf84b61314d911070fc11725793e5eaaf05a22277483ae205d3c472c008" [label=""];
  "sha256:c4ce7cf84b61314d911070fc11725793e5eaaf05a22277483ae205d3c472c008" -> "sha256:93d45281adfe230485dcae87f2b1bf0a88bf4cd0a40b8ff6c6d548d704ed6b8c" [label=""];
  "sha256:93d45281adfe230485dcae87f2b1bf0a88bf4cd0a40b8ff6c6d548d704ed6b8c" -> "sha256:b9748405d50f3550f9b93c89592f655ddc40e4e21746dc6c0c0bebde26b5899d" [label=""];
  "sha256:b9748405d50f3550f9b93c89592f655ddc40e4e21746dc6c0c0bebde26b5899d" -> "sha256:9acef4bf8c8fe8e5230f85f65733e3d1cb7871562f4bd6f81ae8d264cfa9712f" [label=""];
  "sha256:9acef4bf8c8fe8e5230f85f65733e3d1cb7871562f4bd6f81ae8d264cfa9712f" -> "sha256:473eb78749527cc4b6b41635ccb69e041dffa73de41414645d3b28820e225dda" [label=""];
  "sha256:473eb78749527cc4b6b41635ccb69e041dffa73de41414645d3b28820e225dda" -> "sha256:e37d6831fa7a4b4cd4b251af34fa4b7dfb2f60355c25ba4ad07da739a9bf0e39" [label=""];
  "sha256:4d785dae761df6a8f5c8049e2f99a66c2f177c7f7fd0f7f7766b870dd0c2a300" -> "sha256:e37d6831fa7a4b4cd4b251af34fa4b7dfb2f60355c25ba4ad07da739a9bf0e39" [label=""];
  "sha256:e37d6831fa7a4b4cd4b251af34fa4b7dfb2f60355c25ba4ad07da739a9bf0e39" -> "sha256:79aad0c7e84cad6630537d847047e2330224530e47785ef73f1d99f722c4df47" [label=""];
  "sha256:79aad0c7e84cad6630537d847047e2330224530e47785ef73f1d99f722c4df47" -> "sha256:6db29567002c7a99830cc386c6976642b6a99f423d075bc854884944c592e016" [label=""];
  "sha256:6db29567002c7a99830cc386c6976642b6a99f423d075bc854884944c592e016" -> "sha256:56311251412095cafb222def68f205b3bc01103e2df51b2dcc338066ab63ebb6" [label=""];
  "sha256:56311251412095cafb222def68f205b3bc01103e2df51b2dcc338066ab63ebb6" -> "sha256:5549d38f24321fcab83615da06fe6863b4c41624be1da9154e21645eb63a0f7f" [label=""];
  "sha256:5549d38f24321fcab83615da06fe6863b4c41624be1da9154e21645eb63a0f7f" -> "sha256:61aeda5f38bbe3824f55f2bba2fb3cd68649f5010d6066ca9300dd2bcb12fa1c" [label=""];
}

