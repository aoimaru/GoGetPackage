[app/sources/174978261.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8e66564958dc0ea27a1b99a22c4f2277bc8cc3a99b25f9602931b51d9e207b57" [label="/bin/sh -c apt-get update && apt-get install -y wget unzip curl" shape="box"];
  "sha256:1653b0c22902033f2e1b893d49eb4d7189d88691a11db2818f3d080ca7a96b33" [label="/bin/sh -c rm -f consul" shape="box"];
  "sha256:17df6d74db67cff03c1a40f02fdc773aeaaf482367a4a1410f903e2337ac67b8" [label="/bin/sh -c wget -nc -q https://dl.bintray.com/mitchellh/consul/0.4.1_linux_amd64.zip;" shape="box"];
  "sha256:b2c62a7dd34cb4d479675e45961750b83b1d57ea4d4d8d7f3338268e297ff526" [label="/bin/sh -c unzip -q 0*; rm 0*;" shape="box"];
  "sha256:b086bc96cfa5c850dfeec612078a8f4703f4c7a401306dcffdfab42aec111bba" [label="local://context" shape="ellipse"];
  "sha256:7708207888e709fd955e7ab44228828ef5f5d369f7fd827e680e756a0cd1fb19" [label="copy{src=/bin/consul-externalservice_linux_amd64, dest=/bin/consul-externalservice}" shape="note"];
  "sha256:18209a490e85bb7b9441f40f0483b9b2443b1cf3e2b73473d3b83afe37374a06" [label="copy{src=/bin/start.sh, dest=/bin/start.sh}" shape="note"];
  "sha256:5489c60207cda21f35e0dc89e2d922d713d4596798574b393ab2fa1f6a0bf643" [label="/bin/sh -c chmod +x /bin/start.sh" shape="box"];
  "sha256:bddf4654d6bddf6cecdd8c79c5a77dd1b661a5885cf394debebe3c3700b76849" [label="sha256:bddf4654d6bddf6cecdd8c79c5a77dd1b661a5885cf394debebe3c3700b76849" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8e66564958dc0ea27a1b99a22c4f2277bc8cc3a99b25f9602931b51d9e207b57" [label=""];
  "sha256:8e66564958dc0ea27a1b99a22c4f2277bc8cc3a99b25f9602931b51d9e207b57" -> "sha256:1653b0c22902033f2e1b893d49eb4d7189d88691a11db2818f3d080ca7a96b33" [label=""];
  "sha256:1653b0c22902033f2e1b893d49eb4d7189d88691a11db2818f3d080ca7a96b33" -> "sha256:17df6d74db67cff03c1a40f02fdc773aeaaf482367a4a1410f903e2337ac67b8" [label=""];
  "sha256:17df6d74db67cff03c1a40f02fdc773aeaaf482367a4a1410f903e2337ac67b8" -> "sha256:b2c62a7dd34cb4d479675e45961750b83b1d57ea4d4d8d7f3338268e297ff526" [label=""];
  "sha256:b2c62a7dd34cb4d479675e45961750b83b1d57ea4d4d8d7f3338268e297ff526" -> "sha256:7708207888e709fd955e7ab44228828ef5f5d369f7fd827e680e756a0cd1fb19" [label=""];
  "sha256:b086bc96cfa5c850dfeec612078a8f4703f4c7a401306dcffdfab42aec111bba" -> "sha256:7708207888e709fd955e7ab44228828ef5f5d369f7fd827e680e756a0cd1fb19" [label=""];
  "sha256:7708207888e709fd955e7ab44228828ef5f5d369f7fd827e680e756a0cd1fb19" -> "sha256:18209a490e85bb7b9441f40f0483b9b2443b1cf3e2b73473d3b83afe37374a06" [label=""];
  "sha256:b086bc96cfa5c850dfeec612078a8f4703f4c7a401306dcffdfab42aec111bba" -> "sha256:18209a490e85bb7b9441f40f0483b9b2443b1cf3e2b73473d3b83afe37374a06" [label=""];
  "sha256:18209a490e85bb7b9441f40f0483b9b2443b1cf3e2b73473d3b83afe37374a06" -> "sha256:5489c60207cda21f35e0dc89e2d922d713d4596798574b393ab2fa1f6a0bf643" [label=""];
  "sha256:5489c60207cda21f35e0dc89e2d922d713d4596798574b393ab2fa1f6a0bf643" -> "sha256:bddf4654d6bddf6cecdd8c79c5a77dd1b661a5885cf394debebe3c3700b76849" [label=""];
}

