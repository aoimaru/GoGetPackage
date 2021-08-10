[app/sources/162437610.Dockerfile]
digraph {
  "sha256:fe1e84e80c37e6626fb5da6e0f9b063f40c6c0dd69d51b2c63e2a2573562238f" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:17ce6413aa5b21766ccc88a254c81d451077fda65eef2d9f5042bf35e8297e64" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:39654c277be510c1b6ba022342e8bcba23281a958961f40dc21102ba41e52316" [label="/bin/sh -c apt-get -qq install software-properties-common python-software-properties" shape="box"];
  "sha256:dfa1d994e565ec12744f13613c5a8bca73c01120917a2209571a036f6891dc7e" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9" shape="box"];
  "sha256:3677ccdd4166c9aa2fe70d5322798e04519f80d8eb6e76ffb300285b3da29168" [label="/bin/sh -c apt-add-repository \"deb http://repos.azulsystems.com/ubuntu stable main\"" shape="box"];
  "sha256:f7a2db6ea768a70b3257e6d708f2adff633ed3cea65604e5f0387a0f4e51e05e" [label="/bin/sh -c add-apt-repository -y ppa:ubuntu-toolchain-r/test" shape="box"];
  "sha256:42aea3f3d760a7c6a5da07eb4768ab933037349f94afedf37ff6b90e656954ff" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:21099b59937f493e61ba872af7631a446e46e87d0fa387d92f1b318771daa52b" [label="/bin/sh -c apt-get -qq upgrade" shape="box"];
  "sha256:4c4333cc40b6b7940644376ab4257a664ce7642bed3c3a43eeb1d79eb767f594" [label="/bin/sh -c apt-get -qq install g++-4.9 #libstdc++6-4.9" shape="box"];
  "sha256:54fa29fd34e77012cb5c90ff177286324f7333e65b75f7f591c41a45792aedb3" [label="/bin/sh -c apt-get -qq install zulu-8" shape="box"];
  "sha256:ca0dac3c6c8c78a6cccc4b31dc7ed5a81b565e299f59fa7f14be8efd1b5fa9c0" [label="/bin/sh -c apt-get -qq install curl" shape="box"];
  "sha256:9fb7fe7b44705396edf8ebfc7fc39b145ad5615146fe77968dac8ecf8bfccf8a" [label="/bin/sh -c apt-get -qq install tomcat7" shape="box"];
  "sha256:fc813303b2a6ab6564c980347eaa63eaab62f9c69af84d90d21832c6f07be1aa" [label="/bin/sh -c apt-get -qq install bash" shape="box"];
  "sha256:591617d99130e6aaf9686258d657824c9f259d6bff95204da9d4987d439a578a" [label="copy{src=/start-tomcat.sh, dest=/opt/start-tomcat.sh}" shape="note"];
  "sha256:62a25c4ba35d441a4ae654f264bb7b7db4325bbed80f81ba4d23b029ba6dff63" [label="/bin/sh -c chmod +x /opt/start-tomcat.sh" shape="box"];
  "sha256:671445085dc5dea2849e68a2d76d3196f31bec2bdc19907f9ed2a16d92422abd" [label="/bin/sh -c mv /etc/cron.daily/logrotate /etc/cron.hourly/logrotate" shape="box"];
  "sha256:4509dee216415bcca3d4f1c45590397524eb126b6eac328e53aa3b26e443b9fb" [label="copy{src=/logrotate, dest=/etc/logrotate.d/tomcat7}" shape="note"];
  "sha256:383ba0bdd37a082d931cc31cc72a6cc005b39590d15b9ea7e1d08773977ffdc4" [label="/bin/sh -c chmod 644 /etc/logrotate.d/tomcat7" shape="box"];
  "sha256:ee5e7ac327bc514b23794f6d25d7a7cbce77a754a8c52a70b2d5645d9f380e8e" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:52a53d11c63df88d8952fa81ec51ad8d863db4fdc8a25920bde955e0b792ebeb" [label="sha256:52a53d11c63df88d8952fa81ec51ad8d863db4fdc8a25920bde955e0b792ebeb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:17ce6413aa5b21766ccc88a254c81d451077fda65eef2d9f5042bf35e8297e64" [label=""];
  "sha256:17ce6413aa5b21766ccc88a254c81d451077fda65eef2d9f5042bf35e8297e64" -> "sha256:39654c277be510c1b6ba022342e8bcba23281a958961f40dc21102ba41e52316" [label=""];
  "sha256:39654c277be510c1b6ba022342e8bcba23281a958961f40dc21102ba41e52316" -> "sha256:dfa1d994e565ec12744f13613c5a8bca73c01120917a2209571a036f6891dc7e" [label=""];
  "sha256:dfa1d994e565ec12744f13613c5a8bca73c01120917a2209571a036f6891dc7e" -> "sha256:3677ccdd4166c9aa2fe70d5322798e04519f80d8eb6e76ffb300285b3da29168" [label=""];
  "sha256:3677ccdd4166c9aa2fe70d5322798e04519f80d8eb6e76ffb300285b3da29168" -> "sha256:f7a2db6ea768a70b3257e6d708f2adff633ed3cea65604e5f0387a0f4e51e05e" [label=""];
  "sha256:f7a2db6ea768a70b3257e6d708f2adff633ed3cea65604e5f0387a0f4e51e05e" -> "sha256:42aea3f3d760a7c6a5da07eb4768ab933037349f94afedf37ff6b90e656954ff" [label=""];
  "sha256:42aea3f3d760a7c6a5da07eb4768ab933037349f94afedf37ff6b90e656954ff" -> "sha256:21099b59937f493e61ba872af7631a446e46e87d0fa387d92f1b318771daa52b" [label=""];
  "sha256:21099b59937f493e61ba872af7631a446e46e87d0fa387d92f1b318771daa52b" -> "sha256:4c4333cc40b6b7940644376ab4257a664ce7642bed3c3a43eeb1d79eb767f594" [label=""];
  "sha256:4c4333cc40b6b7940644376ab4257a664ce7642bed3c3a43eeb1d79eb767f594" -> "sha256:54fa29fd34e77012cb5c90ff177286324f7333e65b75f7f591c41a45792aedb3" [label=""];
  "sha256:54fa29fd34e77012cb5c90ff177286324f7333e65b75f7f591c41a45792aedb3" -> "sha256:ca0dac3c6c8c78a6cccc4b31dc7ed5a81b565e299f59fa7f14be8efd1b5fa9c0" [label=""];
  "sha256:ca0dac3c6c8c78a6cccc4b31dc7ed5a81b565e299f59fa7f14be8efd1b5fa9c0" -> "sha256:9fb7fe7b44705396edf8ebfc7fc39b145ad5615146fe77968dac8ecf8bfccf8a" [label=""];
  "sha256:9fb7fe7b44705396edf8ebfc7fc39b145ad5615146fe77968dac8ecf8bfccf8a" -> "sha256:fc813303b2a6ab6564c980347eaa63eaab62f9c69af84d90d21832c6f07be1aa" [label=""];
  "sha256:fc813303b2a6ab6564c980347eaa63eaab62f9c69af84d90d21832c6f07be1aa" -> "sha256:591617d99130e6aaf9686258d657824c9f259d6bff95204da9d4987d439a578a" [label=""];
  "sha256:fe1e84e80c37e6626fb5da6e0f9b063f40c6c0dd69d51b2c63e2a2573562238f" -> "sha256:591617d99130e6aaf9686258d657824c9f259d6bff95204da9d4987d439a578a" [label=""];
  "sha256:591617d99130e6aaf9686258d657824c9f259d6bff95204da9d4987d439a578a" -> "sha256:62a25c4ba35d441a4ae654f264bb7b7db4325bbed80f81ba4d23b029ba6dff63" [label=""];
  "sha256:62a25c4ba35d441a4ae654f264bb7b7db4325bbed80f81ba4d23b029ba6dff63" -> "sha256:671445085dc5dea2849e68a2d76d3196f31bec2bdc19907f9ed2a16d92422abd" [label=""];
  "sha256:671445085dc5dea2849e68a2d76d3196f31bec2bdc19907f9ed2a16d92422abd" -> "sha256:4509dee216415bcca3d4f1c45590397524eb126b6eac328e53aa3b26e443b9fb" [label=""];
  "sha256:fe1e84e80c37e6626fb5da6e0f9b063f40c6c0dd69d51b2c63e2a2573562238f" -> "sha256:4509dee216415bcca3d4f1c45590397524eb126b6eac328e53aa3b26e443b9fb" [label=""];
  "sha256:4509dee216415bcca3d4f1c45590397524eb126b6eac328e53aa3b26e443b9fb" -> "sha256:383ba0bdd37a082d931cc31cc72a6cc005b39590d15b9ea7e1d08773977ffdc4" [label=""];
  "sha256:383ba0bdd37a082d931cc31cc72a6cc005b39590d15b9ea7e1d08773977ffdc4" -> "sha256:ee5e7ac327bc514b23794f6d25d7a7cbce77a754a8c52a70b2d5645d9f380e8e" [label=""];
  "sha256:ee5e7ac327bc514b23794f6d25d7a7cbce77a754a8c52a70b2d5645d9f380e8e" -> "sha256:52a53d11c63df88d8952fa81ec51ad8d863db4fdc8a25920bde955e0b792ebeb" [label=""];
}

