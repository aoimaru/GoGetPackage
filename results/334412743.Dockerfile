[app/sources/334412743.Dockerfile]
digraph {
  "sha256:b7465ebe330c36ed95723c2bb465d0273034ebdc0f9168304c31e869f6b17eec" [label="docker-image://docker.io/tobegit3hub/tensorflow_hdfs:latest" shape="ellipse"];
  "sha256:aa294d25c8e67708e4442bfd82136bb66948ca8cb908be8bd4c82ec50f8c0787" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:5290174fc5be1975945d022408a542028c77dbdfa58bc0ca790f5c264b742311" [label="/bin/sh -c apt-get install -y unzip wget" shape="box"];
  "sha256:57d73e165ae7434f2d8194bd0fe2e4f4360b34a022f74590d01af0cd2d249eee" [label="/bin/sh -c apt-get install -y default-jdk" shape="box"];
  "sha256:d78c016895e7d5a36870ca7e6bd7edc425e36f2d9f9ec507c3d27e4a2a55b1ee" [label="/bin/sh -c wget http://h2o-release.s3.amazonaws.com/h2o/rel-wolpert/8/h2o-3.18.0.8.zip" shape="box"];
  "sha256:5d55f6907e38708075a6628866487636de8d1b966a344bcd27184dca0098f0be" [label="/bin/sh -c unzip ./h2o-3.18.0.8.zip" shape="box"];
  "sha256:842d592d644fd4cb45d3da2bfbc576a0a0c73bea2bd6eb6b8c8aa0e69c10f628" [label="/bin/sh -c mv h2o-3.18.0.8/h2o.jar /tmp/" shape="box"];
  "sha256:47056096b3c421d2bfc39379eeeb38d32f2b20495a1353c946cce1a3a5d6d4db" [label="local://context" shape="ellipse"];
  "sha256:0d67e15d3fce9824a91dfbef72d0e7001be6946f023af7bcd4cead90f1b55c89" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:1fcb2e213c0d6804a56706f4b518d2ef1d54c978368321c7ec7474948db6d28b" [label="/bin/sh -c pip install -r /requirements.txt" shape="box"];
  "sha256:24962cc4b366497eb10206212bd2a84e93c500c8a47e781be0ae9ebdbf53fa76" [label="copy{src=/, dest=/simple_tensorflow_serving/}" shape="note"];
  "sha256:fac801fa625449ecafa9585bf210a1873334e6a9ea592716a752afdb82a12bd7" [label="mkdir{path=/simple_tensorflow_serving}" shape="note"];
  "sha256:56df1478eb5da5c531b1987b6aa802cd24a8bfa1291bae63ac1c69373bd7a59a" [label="/bin/sh -c cp ./third_party/openscoring/openscoring-server-executable-1.4-SNAPSHOT.jar /tmp/" shape="box"];
  "sha256:82c62a8f43f888f2174d9ec0cc7ac443ba22256beba4850a5cb0bca8f3a87eaf" [label="/bin/sh -c python ./setup.py install" shape="box"];
  "sha256:25b58904619b3c8fab4dc2895c2287e136c67dc29190e245c806b9051afc0678" [label="sha256:25b58904619b3c8fab4dc2895c2287e136c67dc29190e245c806b9051afc0678" shape="plaintext"];
  "sha256:b7465ebe330c36ed95723c2bb465d0273034ebdc0f9168304c31e869f6b17eec" -> "sha256:aa294d25c8e67708e4442bfd82136bb66948ca8cb908be8bd4c82ec50f8c0787" [label=""];
  "sha256:aa294d25c8e67708e4442bfd82136bb66948ca8cb908be8bd4c82ec50f8c0787" -> "sha256:5290174fc5be1975945d022408a542028c77dbdfa58bc0ca790f5c264b742311" [label=""];
  "sha256:5290174fc5be1975945d022408a542028c77dbdfa58bc0ca790f5c264b742311" -> "sha256:57d73e165ae7434f2d8194bd0fe2e4f4360b34a022f74590d01af0cd2d249eee" [label=""];
  "sha256:57d73e165ae7434f2d8194bd0fe2e4f4360b34a022f74590d01af0cd2d249eee" -> "sha256:d78c016895e7d5a36870ca7e6bd7edc425e36f2d9f9ec507c3d27e4a2a55b1ee" [label=""];
  "sha256:d78c016895e7d5a36870ca7e6bd7edc425e36f2d9f9ec507c3d27e4a2a55b1ee" -> "sha256:5d55f6907e38708075a6628866487636de8d1b966a344bcd27184dca0098f0be" [label=""];
  "sha256:5d55f6907e38708075a6628866487636de8d1b966a344bcd27184dca0098f0be" -> "sha256:842d592d644fd4cb45d3da2bfbc576a0a0c73bea2bd6eb6b8c8aa0e69c10f628" [label=""];
  "sha256:842d592d644fd4cb45d3da2bfbc576a0a0c73bea2bd6eb6b8c8aa0e69c10f628" -> "sha256:0d67e15d3fce9824a91dfbef72d0e7001be6946f023af7bcd4cead90f1b55c89" [label=""];
  "sha256:47056096b3c421d2bfc39379eeeb38d32f2b20495a1353c946cce1a3a5d6d4db" -> "sha256:0d67e15d3fce9824a91dfbef72d0e7001be6946f023af7bcd4cead90f1b55c89" [label=""];
  "sha256:0d67e15d3fce9824a91dfbef72d0e7001be6946f023af7bcd4cead90f1b55c89" -> "sha256:1fcb2e213c0d6804a56706f4b518d2ef1d54c978368321c7ec7474948db6d28b" [label=""];
  "sha256:1fcb2e213c0d6804a56706f4b518d2ef1d54c978368321c7ec7474948db6d28b" -> "sha256:24962cc4b366497eb10206212bd2a84e93c500c8a47e781be0ae9ebdbf53fa76" [label=""];
  "sha256:47056096b3c421d2bfc39379eeeb38d32f2b20495a1353c946cce1a3a5d6d4db" -> "sha256:24962cc4b366497eb10206212bd2a84e93c500c8a47e781be0ae9ebdbf53fa76" [label=""];
  "sha256:24962cc4b366497eb10206212bd2a84e93c500c8a47e781be0ae9ebdbf53fa76" -> "sha256:fac801fa625449ecafa9585bf210a1873334e6a9ea592716a752afdb82a12bd7" [label=""];
  "sha256:fac801fa625449ecafa9585bf210a1873334e6a9ea592716a752afdb82a12bd7" -> "sha256:56df1478eb5da5c531b1987b6aa802cd24a8bfa1291bae63ac1c69373bd7a59a" [label=""];
  "sha256:56df1478eb5da5c531b1987b6aa802cd24a8bfa1291bae63ac1c69373bd7a59a" -> "sha256:82c62a8f43f888f2174d9ec0cc7ac443ba22256beba4850a5cb0bca8f3a87eaf" [label=""];
  "sha256:82c62a8f43f888f2174d9ec0cc7ac443ba22256beba4850a5cb0bca8f3a87eaf" -> "sha256:25b58904619b3c8fab4dc2895c2287e136c67dc29190e245c806b9051afc0678" [label=""];
}

