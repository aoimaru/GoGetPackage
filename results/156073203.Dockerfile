[app/sources/156073203.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:ac3da507a56a64b31a4fbd432afb6fbf80e00a70a0826030b569851900f9c886" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y locales &&     apt-get install -y build-essential libjson-c-dev &&     apt-get clean -y" shape="box"];
  "sha256:ffc89eaa0f4274a340bf71865772a728bc7913d33c6d18d348d1907fde4d4e2d" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen" shape="box"];
  "sha256:22796ee43a31fd1e7827e00026f02014a02dd9f87c80103ed532dc77c36270ac" [label="/bin/sh -c mkdir /usr/src/app" shape="box"];
  "sha256:44e278e2c666ca4d8131d6324ff08413bc3be23e9140ea3675dde8dd3849d5d4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:44e7916f0971177fc80f72ed3be5a003236124a8ffe758b1d50afed312402b65" [label="local://context" shape="ellipse"];
  "sha256:f0f66fc5b3dac6bc0dfd11c9a8e3c76f2f754c997094bf9cd4fa765522008003" [label="copy{src=/Gemfile*, dest=/usr/src/app/}" shape="note"];
  "sha256:e1fe7a1aa3f4c7b3b143c182d15118d400f31527bd76377b1e7c70b63974cf12" [label="copy{src=/neo4j-core.gemspec, dest=/usr/src/app/}" shape="note"];
  "sha256:1f497a59d40989b73ace1a1a9c601b39951dda492ddf247f7f6541ac9b808c27" [label="copy{src=/lib/neo4j-core/version.rb, dest=/usr/src/app/lib/neo4j-core/}" shape="note"];
  "sha256:160db663b754b22ab35747a15d95d5a254976a54862b01ff03272985252ebb95" [label="/bin/sh -c bundle" shape="box"];
  "sha256:3877382c070a89f8aca0d0d688167bf9999c0bbf6a8e5ce9f68003f83e26b522" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:906115b91cbf404dcfc4f3fa25d43236dcf72d724997ef765bd985c27d9cb197" [label="sha256:906115b91cbf404dcfc4f3fa25d43236dcf72d724997ef765bd985c27d9cb197" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:ac3da507a56a64b31a4fbd432afb6fbf80e00a70a0826030b569851900f9c886" [label=""];
  "sha256:ac3da507a56a64b31a4fbd432afb6fbf80e00a70a0826030b569851900f9c886" -> "sha256:ffc89eaa0f4274a340bf71865772a728bc7913d33c6d18d348d1907fde4d4e2d" [label=""];
  "sha256:ffc89eaa0f4274a340bf71865772a728bc7913d33c6d18d348d1907fde4d4e2d" -> "sha256:22796ee43a31fd1e7827e00026f02014a02dd9f87c80103ed532dc77c36270ac" [label=""];
  "sha256:22796ee43a31fd1e7827e00026f02014a02dd9f87c80103ed532dc77c36270ac" -> "sha256:44e278e2c666ca4d8131d6324ff08413bc3be23e9140ea3675dde8dd3849d5d4" [label=""];
  "sha256:44e278e2c666ca4d8131d6324ff08413bc3be23e9140ea3675dde8dd3849d5d4" -> "sha256:f0f66fc5b3dac6bc0dfd11c9a8e3c76f2f754c997094bf9cd4fa765522008003" [label=""];
  "sha256:44e7916f0971177fc80f72ed3be5a003236124a8ffe758b1d50afed312402b65" -> "sha256:f0f66fc5b3dac6bc0dfd11c9a8e3c76f2f754c997094bf9cd4fa765522008003" [label=""];
  "sha256:f0f66fc5b3dac6bc0dfd11c9a8e3c76f2f754c997094bf9cd4fa765522008003" -> "sha256:e1fe7a1aa3f4c7b3b143c182d15118d400f31527bd76377b1e7c70b63974cf12" [label=""];
  "sha256:44e7916f0971177fc80f72ed3be5a003236124a8ffe758b1d50afed312402b65" -> "sha256:e1fe7a1aa3f4c7b3b143c182d15118d400f31527bd76377b1e7c70b63974cf12" [label=""];
  "sha256:e1fe7a1aa3f4c7b3b143c182d15118d400f31527bd76377b1e7c70b63974cf12" -> "sha256:1f497a59d40989b73ace1a1a9c601b39951dda492ddf247f7f6541ac9b808c27" [label=""];
  "sha256:44e7916f0971177fc80f72ed3be5a003236124a8ffe758b1d50afed312402b65" -> "sha256:1f497a59d40989b73ace1a1a9c601b39951dda492ddf247f7f6541ac9b808c27" [label=""];
  "sha256:1f497a59d40989b73ace1a1a9c601b39951dda492ddf247f7f6541ac9b808c27" -> "sha256:160db663b754b22ab35747a15d95d5a254976a54862b01ff03272985252ebb95" [label=""];
  "sha256:160db663b754b22ab35747a15d95d5a254976a54862b01ff03272985252ebb95" -> "sha256:3877382c070a89f8aca0d0d688167bf9999c0bbf6a8e5ce9f68003f83e26b522" [label=""];
  "sha256:44e7916f0971177fc80f72ed3be5a003236124a8ffe758b1d50afed312402b65" -> "sha256:3877382c070a89f8aca0d0d688167bf9999c0bbf6a8e5ce9f68003f83e26b522" [label=""];
  "sha256:3877382c070a89f8aca0d0d688167bf9999c0bbf6a8e5ce9f68003f83e26b522" -> "sha256:906115b91cbf404dcfc4f3fa25d43236dcf72d724997ef765bd985c27d9cb197" [label=""];
}

