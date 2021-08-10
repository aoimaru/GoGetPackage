[app/sources/317400822.Dockerfile]
digraph {
  "sha256:b8bd625121f603e4edab0e7f5467d4ef92ffb472003a50cd3a0976c01c39771a" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:967b8008904b1ea3a69fafdc09dd6e0eeef47889cd394a18242cb8a5ea8d5caf" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:2aadc07f537e856fa4c8e7bdc2282edd16ad218eb7ca789cf8ed30f984ceca84" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:b330ab9db02c4302bb9fc1d641a4db6b93dd6314f78e80df166edd2afe8ab30f" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:b46e41a471062c5662cbc78dd6d935b6288bd1198110b888eb85f6625fa096b1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b59154ce2327151bb5e86c4a4868ae66fc883d52e9896c62638fa120224bcaa6" [label="/bin/sh -c apt-get install -y --no-install-recommends python-pip" shape="box"];
  "sha256:4e658f700a275154d341f55fed9c59053a7ad59fb8dea61330d7693d0c663f3d" [label="/bin/sh -c pip install --upgrade wheel" shape="box"];
  "sha256:ab0c9a240ff3be09d6071142fb93ba22500b6253a9bc1eca94dd3730f10f486b" [label="/bin/sh -c pip install --upgrade astor" shape="box"];
  "sha256:3bba07e2775df6067ec561eec549e037231c9af676dc6cca3154dd88e2f7d432" [label="/bin/sh -c pip install --upgrade gast" shape="box"];
  "sha256:af4a96d19c668f42151152114d1a84c12f3c73af41d0e0e23d3150305807cbd7" [label="/bin/sh -c pip install --upgrade numpy" shape="box"];
  "sha256:eaaa1e491d128e5e44f8878f3fd5afa4fda4e25e58698f5229adaad7f692f5d9" [label="/bin/sh -c pip install --upgrade termcolor" shape="box"];
  "sha256:ea521cb375af1d76b19a81e5cd7db263c6c78f7b518fbbc7a30715828e66c79d" [label="/bin/sh -c pip install keras_applications==1.0.2" shape="box"];
  "sha256:b4bc6e0109bef97e55dc168c79f255bb19e6939ef1386f0f5606372bbcbaa7da" [label="/bin/sh -c pip install keras_preprocessing==1.0.1" shape="box"];
  "sha256:6df0aea23c0438a9d0ec622a94f00cb3b74829bb6ae6752ff84abb186ab9a346" [label="/bin/sh -c apt-get install -t xenial-backports -y golang-1.9" shape="box"];
  "sha256:544d2b6df3c958b72d32da73d974cf768412ec67b598913ac07817dc71c14bb6" [label="sha256:544d2b6df3c958b72d32da73d974cf768412ec67b598913ac07817dc71c14bb6" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:967b8008904b1ea3a69fafdc09dd6e0eeef47889cd394a18242cb8a5ea8d5caf" [label=""];
  "sha256:b8bd625121f603e4edab0e7f5467d4ef92ffb472003a50cd3a0976c01c39771a" -> "sha256:967b8008904b1ea3a69fafdc09dd6e0eeef47889cd394a18242cb8a5ea8d5caf" [label=""];
  "sha256:967b8008904b1ea3a69fafdc09dd6e0eeef47889cd394a18242cb8a5ea8d5caf" -> "sha256:2aadc07f537e856fa4c8e7bdc2282edd16ad218eb7ca789cf8ed30f984ceca84" [label=""];
  "sha256:2aadc07f537e856fa4c8e7bdc2282edd16ad218eb7ca789cf8ed30f984ceca84" -> "sha256:b330ab9db02c4302bb9fc1d641a4db6b93dd6314f78e80df166edd2afe8ab30f" [label=""];
  "sha256:b330ab9db02c4302bb9fc1d641a4db6b93dd6314f78e80df166edd2afe8ab30f" -> "sha256:b46e41a471062c5662cbc78dd6d935b6288bd1198110b888eb85f6625fa096b1" [label=""];
  "sha256:b46e41a471062c5662cbc78dd6d935b6288bd1198110b888eb85f6625fa096b1" -> "sha256:b59154ce2327151bb5e86c4a4868ae66fc883d52e9896c62638fa120224bcaa6" [label=""];
  "sha256:b59154ce2327151bb5e86c4a4868ae66fc883d52e9896c62638fa120224bcaa6" -> "sha256:4e658f700a275154d341f55fed9c59053a7ad59fb8dea61330d7693d0c663f3d" [label=""];
  "sha256:4e658f700a275154d341f55fed9c59053a7ad59fb8dea61330d7693d0c663f3d" -> "sha256:ab0c9a240ff3be09d6071142fb93ba22500b6253a9bc1eca94dd3730f10f486b" [label=""];
  "sha256:ab0c9a240ff3be09d6071142fb93ba22500b6253a9bc1eca94dd3730f10f486b" -> "sha256:3bba07e2775df6067ec561eec549e037231c9af676dc6cca3154dd88e2f7d432" [label=""];
  "sha256:3bba07e2775df6067ec561eec549e037231c9af676dc6cca3154dd88e2f7d432" -> "sha256:af4a96d19c668f42151152114d1a84c12f3c73af41d0e0e23d3150305807cbd7" [label=""];
  "sha256:af4a96d19c668f42151152114d1a84c12f3c73af41d0e0e23d3150305807cbd7" -> "sha256:eaaa1e491d128e5e44f8878f3fd5afa4fda4e25e58698f5229adaad7f692f5d9" [label=""];
  "sha256:eaaa1e491d128e5e44f8878f3fd5afa4fda4e25e58698f5229adaad7f692f5d9" -> "sha256:ea521cb375af1d76b19a81e5cd7db263c6c78f7b518fbbc7a30715828e66c79d" [label=""];
  "sha256:ea521cb375af1d76b19a81e5cd7db263c6c78f7b518fbbc7a30715828e66c79d" -> "sha256:b4bc6e0109bef97e55dc168c79f255bb19e6939ef1386f0f5606372bbcbaa7da" [label=""];
  "sha256:b4bc6e0109bef97e55dc168c79f255bb19e6939ef1386f0f5606372bbcbaa7da" -> "sha256:6df0aea23c0438a9d0ec622a94f00cb3b74829bb6ae6752ff84abb186ab9a346" [label=""];
  "sha256:6df0aea23c0438a9d0ec622a94f00cb3b74829bb6ae6752ff84abb186ab9a346" -> "sha256:544d2b6df3c958b72d32da73d974cf768412ec67b598913ac07817dc71c14bb6" [label=""];
}

