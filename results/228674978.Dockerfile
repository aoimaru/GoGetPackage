[app/sources/228674978.Dockerfile]
digraph {
  "sha256:200c78bb297e7f70ac192e896d35cc38c3dec41103c408d6c24d83a211433fcc" [label="local://context" shape="ellipse"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:fd144b2c1ee586728ca4a136068e4b289ee056b7b6e2e8c99b722edb18924ade" [label="/bin/sh -c apt-get update &&  apt-get install -y wget sudo locales groovy &&     apt-get autoremove --purge -y && apt-get clean &&     rm /var/lib/apt/lists/*.* && rm -fr /tmp/* /var/tmp/*" shape="box"];
  "sha256:220c0ab0df12d0275ff63d8dc12ea3af92c599a9c328a95c580beb2b802d28ce" [label="/bin/sh -c useradd -mUs /bin/bash ideainspect" shape="box"];
  "sha256:94c27adba6abcb46bb3366b8ba437872e69e6b8177fa1ce1e208dd36ba538781" [label="/bin/sh -c cd /srv &&     wget -nv https://download.jetbrains.com/idea/ideaI$V_IDEA_EDITION-$V_IDEA-no-jdk.tar.gz &&     tar xf ideaI$V_IDEA_EDITION-$V_IDEA-no-jdk.tar.gz &&     ln -s idea-I$V_IDEA_EDITION-* idea.latest &&     chown -R ideainspect:ideainspect /srv/idea.latest/bin &&     mkdir /home/ideainspect/$IDEA_CONFDIR &&     ln -s /home/ideainspect/$IDEA_CONFDIR idea.config.latest &&     rm ideaI$V_IDEA_EDITION-$V_IDEA-no-jdk.tar.gz" shape="box"];
  "sha256:b482a6fb370ae4d8fec9feaad65c267dff685b1255f156ec85f1db7c8051a83a" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:5f331f680131a55207fa60be2d916e18d8f85845c2f4246f8d42075df73c1e37" [label="/bin/sh -c update-locale en_US.UTF8" shape="box"];
  "sha256:c43888afd3b16c821b56656f2c36ede6156f6644882fad84284eae2265073850" [label="copy{src=/idea-cli-inspector, dest=/}" shape="note"];
  "sha256:53b240f7bea17138dc746a936eada992a23763b2ad4c147130c76b01d67f8811" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:cf01ddf5970d9d9fbe809430f536bf37ba9e4c756f51cd98340f79bf7fbc8061" [label="copy{src=/home, dest=/home}" shape="note"];
  "sha256:ade8353fa9c3ff6148e7356212db01dd11b691d79ac83b6c7f42ff1a3becb629" [label="/bin/sh -c chown -R ideainspect:ideainspect /home/ideainspect" shape="box"];
  "sha256:7a2233d3827cbc17d933f20dd159084aa2254c6de1e355cb902b9f76cabe33c4" [label="copy{src=/, dest=/project}" shape="note"];
  "sha256:faf133c249fc34a35cdb5a253d3fc266a63fb7706c08abff2b4c8867ba115091" [label="/bin/sh -c chown -R ideainspect:ideainspect /project" shape="box"];
  "sha256:3e3db07d25835e36185d3a4c889a6697e4e72c07e9fc8dfae307aaba6b8cbe9a" [label="/docker-entrypoint.sh -r /project" shape="box"];
  "sha256:434115ee207ad24f24848a4c3362fe777425b4040c0939e044b3d6c0aefc4569" [label="sha256:434115ee207ad24f24848a4c3362fe777425b4040c0939e044b3d6c0aefc4569" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:fd144b2c1ee586728ca4a136068e4b289ee056b7b6e2e8c99b722edb18924ade" [label=""];
  "sha256:fd144b2c1ee586728ca4a136068e4b289ee056b7b6e2e8c99b722edb18924ade" -> "sha256:220c0ab0df12d0275ff63d8dc12ea3af92c599a9c328a95c580beb2b802d28ce" [label=""];
  "sha256:220c0ab0df12d0275ff63d8dc12ea3af92c599a9c328a95c580beb2b802d28ce" -> "sha256:94c27adba6abcb46bb3366b8ba437872e69e6b8177fa1ce1e208dd36ba538781" [label=""];
  "sha256:94c27adba6abcb46bb3366b8ba437872e69e6b8177fa1ce1e208dd36ba538781" -> "sha256:b482a6fb370ae4d8fec9feaad65c267dff685b1255f156ec85f1db7c8051a83a" [label=""];
  "sha256:b482a6fb370ae4d8fec9feaad65c267dff685b1255f156ec85f1db7c8051a83a" -> "sha256:5f331f680131a55207fa60be2d916e18d8f85845c2f4246f8d42075df73c1e37" [label=""];
  "sha256:5f331f680131a55207fa60be2d916e18d8f85845c2f4246f8d42075df73c1e37" -> "sha256:c43888afd3b16c821b56656f2c36ede6156f6644882fad84284eae2265073850" [label=""];
  "sha256:200c78bb297e7f70ac192e896d35cc38c3dec41103c408d6c24d83a211433fcc" -> "sha256:c43888afd3b16c821b56656f2c36ede6156f6644882fad84284eae2265073850" [label=""];
  "sha256:c43888afd3b16c821b56656f2c36ede6156f6644882fad84284eae2265073850" -> "sha256:53b240f7bea17138dc746a936eada992a23763b2ad4c147130c76b01d67f8811" [label=""];
  "sha256:200c78bb297e7f70ac192e896d35cc38c3dec41103c408d6c24d83a211433fcc" -> "sha256:53b240f7bea17138dc746a936eada992a23763b2ad4c147130c76b01d67f8811" [label=""];
  "sha256:53b240f7bea17138dc746a936eada992a23763b2ad4c147130c76b01d67f8811" -> "sha256:cf01ddf5970d9d9fbe809430f536bf37ba9e4c756f51cd98340f79bf7fbc8061" [label=""];
  "sha256:200c78bb297e7f70ac192e896d35cc38c3dec41103c408d6c24d83a211433fcc" -> "sha256:cf01ddf5970d9d9fbe809430f536bf37ba9e4c756f51cd98340f79bf7fbc8061" [label=""];
  "sha256:cf01ddf5970d9d9fbe809430f536bf37ba9e4c756f51cd98340f79bf7fbc8061" -> "sha256:ade8353fa9c3ff6148e7356212db01dd11b691d79ac83b6c7f42ff1a3becb629" [label=""];
  "sha256:ade8353fa9c3ff6148e7356212db01dd11b691d79ac83b6c7f42ff1a3becb629" -> "sha256:7a2233d3827cbc17d933f20dd159084aa2254c6de1e355cb902b9f76cabe33c4" [label=""];
  "sha256:200c78bb297e7f70ac192e896d35cc38c3dec41103c408d6c24d83a211433fcc" -> "sha256:7a2233d3827cbc17d933f20dd159084aa2254c6de1e355cb902b9f76cabe33c4" [label=""];
  "sha256:7a2233d3827cbc17d933f20dd159084aa2254c6de1e355cb902b9f76cabe33c4" -> "sha256:faf133c249fc34a35cdb5a253d3fc266a63fb7706c08abff2b4c8867ba115091" [label=""];
  "sha256:faf133c249fc34a35cdb5a253d3fc266a63fb7706c08abff2b4c8867ba115091" -> "sha256:3e3db07d25835e36185d3a4c889a6697e4e72c07e9fc8dfae307aaba6b8cbe9a" [label=""];
  "sha256:3e3db07d25835e36185d3a4c889a6697e4e72c07e9fc8dfae307aaba6b8cbe9a" -> "sha256:434115ee207ad24f24848a4c3362fe777425b4040c0939e044b3d6c0aefc4569" [label=""];
}

