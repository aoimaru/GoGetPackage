[app/sources/301276062.Dockerfile]
digraph {
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:9f696a70d10d8ec1a289ed6cdef130ff6de00e31b20584c17c3166a4a1fa8a95" [label="/bin/sh -c apt-get update -qq     && apt-get install -y --no-install-recommends build-essential git-core openssl libssl-dev libffi6 libffi-dev curl      && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:09cd92b1fab4067fb243fe87e3edde556161160fa6b80e83c19749b1a28ba7b7" [label="mkdir{path=/app}" shape="note"];
  "sha256:51ddd5e34de969e515db2b6f0630fed5a4b7a0a171180d8f62a622e3a045e467" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:f29c578e15eb16a86219ef1030453bda3d1f2b7a55c508bc63e6dfa95c81a71e" [label="local://context" shape="ellipse"];
  "sha256:59014ddda3b9ae01f2b27ec72a7af96b0050ff8e71726fb7710c220d59a25636" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1411c12fb5d3b44517d052b54dd58a64a39942aad79902a3c444f5904c73bfd5" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" > /etc/apt/sources.list.d/jessie-backports.list" shape="box"];
  "sha256:b4dc56add389463e71ceaf44ccaec23eeedfbf0e6a20b6b31bd4c233e87d58cf" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbzip2 \t\tunzip \t\txz-utils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f69786b57f988fe5e366e21e01285cfd8951c372a6c018dbf25839ff15b9561" [label="/bin/sh -c { \t\techo '#!/bin/sh'; \t\techo 'set -e'; \t\techo; \t\techo 'dirname \"$(dirname \"$(readlink -f \"$(which javac || which java)\")\")\"'; \t} > /usr/local/bin/docker-java-home \t&& chmod +x /usr/local/bin/docker-java-home" shape="box"];
  "sha256:072bdd8dc8df1f442858c7757af7854f54087d55db988bff64eaf19712e60405" [label="/bin/sh -c ln -svT \"/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)\" /docker-java-home" shape="box"];
  "sha256:2822bebbad7ca5180b135441cde88e78bcd534753cc87eb0551332a1ae9aa3f4" [label="/bin/sh -c set -ex; \tif [ ! -d /usr/share/man/man1 ]; then \t\tmkdir -p /usr/share/man/man1; \tfi; \tapt-get update; \tapt-get install -y -t jessie-backports\t\topenjdk-8-jdk \t\tca-certificates-java \t; \trm -rf /var/lib/apt/lists/*; \t[ \"$(readlink -f \"$JAVA_HOME\")\" = \"$(docker-java-home)\" ]; \tupdate-alternatives --get-selections | awk -v home=\"$(readlink -f \"$JAVA_HOME\")\" 'index($3, home) == 1 { $2 = \"manual\"; print | \"update-alternatives --set-selections\" }'; \tupdate-alternatives --query java | grep -q 'Status: manual'" shape="box"];
  "sha256:62a5a3fb230dc7be60a24404909f9277f3b12a766adb3ed86f9f0caf030eadaf" [label="/bin/sh -c /var/lib/dpkg/info/ca-certificates-java.postinst configure" shape="box"];
  "sha256:79297e5752babc1e0124dbc654b3925af7971e60edffbe460b6ee8a3a6f042f1" [label="/bin/sh -c pip install -r alt_requirements/requirements_full.txt" shape="box"];
  "sha256:0b5191c4d1f6f70362d6b0dd1a515a56a8c6f4d66b818fde29c204c627a77ca2" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:baae9a9bf8b77ce50a086926840d607552a995741c522178ae4de6647b0e2f3e" [label="/bin/sh -c apt-get update -qq     && apt-get install -y --no-install-recommends wget     && wget -P data/ https://s3-eu-west-1.amazonaws.com/mitie/total_word_feature_extractor.dat     && apt-get remove -y wget     && apt-get autoremove -y" shape="box"];
  "sha256:dd8b7c880870bacdfa5ef3d3412d5e24093feadaec45a6244510383c8dafea66" [label="/bin/sh -c pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_md-2.0.0/en_core_web_md-2.0.0.tar.gz --no-cache-dir > /dev/null     && python -m spacy link en_core_web_md en     && pip install https://github.com/explosion/spacy-models/releases/download/de_core_news_sm-2.0.0/de_core_news_sm-2.0.0.tar.gz --no-cache-dir > /dev/null     && python -m spacy link de_core_news_sm de" shape="box"];
  "sha256:a7f8642a8e847101242c84512278cc31ede4eeeaf3bd8aef095c02281dad6034" [label="copy{src=/sample_configs/config_spacy_duckling.yml, dest=/app/config.yml}" shape="note"];
  "sha256:a49ee532d92cec912d01dda41aec88e683b56fcadeab62118fc2f94ec974971d" [label="sha256:a49ee532d92cec912d01dda41aec88e683b56fcadeab62118fc2f94ec974971d" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:9f696a70d10d8ec1a289ed6cdef130ff6de00e31b20584c17c3166a4a1fa8a95" [label=""];
  "sha256:9f696a70d10d8ec1a289ed6cdef130ff6de00e31b20584c17c3166a4a1fa8a95" -> "sha256:09cd92b1fab4067fb243fe87e3edde556161160fa6b80e83c19749b1a28ba7b7" [label=""];
  "sha256:09cd92b1fab4067fb243fe87e3edde556161160fa6b80e83c19749b1a28ba7b7" -> "sha256:51ddd5e34de969e515db2b6f0630fed5a4b7a0a171180d8f62a622e3a045e467" [label=""];
  "sha256:51ddd5e34de969e515db2b6f0630fed5a4b7a0a171180d8f62a622e3a045e467" -> "sha256:59014ddda3b9ae01f2b27ec72a7af96b0050ff8e71726fb7710c220d59a25636" [label=""];
  "sha256:f29c578e15eb16a86219ef1030453bda3d1f2b7a55c508bc63e6dfa95c81a71e" -> "sha256:59014ddda3b9ae01f2b27ec72a7af96b0050ff8e71726fb7710c220d59a25636" [label=""];
  "sha256:59014ddda3b9ae01f2b27ec72a7af96b0050ff8e71726fb7710c220d59a25636" -> "sha256:1411c12fb5d3b44517d052b54dd58a64a39942aad79902a3c444f5904c73bfd5" [label=""];
  "sha256:1411c12fb5d3b44517d052b54dd58a64a39942aad79902a3c444f5904c73bfd5" -> "sha256:b4dc56add389463e71ceaf44ccaec23eeedfbf0e6a20b6b31bd4c233e87d58cf" [label=""];
  "sha256:b4dc56add389463e71ceaf44ccaec23eeedfbf0e6a20b6b31bd4c233e87d58cf" -> "sha256:5f69786b57f988fe5e366e21e01285cfd8951c372a6c018dbf25839ff15b9561" [label=""];
  "sha256:5f69786b57f988fe5e366e21e01285cfd8951c372a6c018dbf25839ff15b9561" -> "sha256:072bdd8dc8df1f442858c7757af7854f54087d55db988bff64eaf19712e60405" [label=""];
  "sha256:072bdd8dc8df1f442858c7757af7854f54087d55db988bff64eaf19712e60405" -> "sha256:2822bebbad7ca5180b135441cde88e78bcd534753cc87eb0551332a1ae9aa3f4" [label=""];
  "sha256:2822bebbad7ca5180b135441cde88e78bcd534753cc87eb0551332a1ae9aa3f4" -> "sha256:62a5a3fb230dc7be60a24404909f9277f3b12a766adb3ed86f9f0caf030eadaf" [label=""];
  "sha256:62a5a3fb230dc7be60a24404909f9277f3b12a766adb3ed86f9f0caf030eadaf" -> "sha256:79297e5752babc1e0124dbc654b3925af7971e60edffbe460b6ee8a3a6f042f1" [label=""];
  "sha256:79297e5752babc1e0124dbc654b3925af7971e60edffbe460b6ee8a3a6f042f1" -> "sha256:0b5191c4d1f6f70362d6b0dd1a515a56a8c6f4d66b818fde29c204c627a77ca2" [label=""];
  "sha256:0b5191c4d1f6f70362d6b0dd1a515a56a8c6f4d66b818fde29c204c627a77ca2" -> "sha256:baae9a9bf8b77ce50a086926840d607552a995741c522178ae4de6647b0e2f3e" [label=""];
  "sha256:baae9a9bf8b77ce50a086926840d607552a995741c522178ae4de6647b0e2f3e" -> "sha256:dd8b7c880870bacdfa5ef3d3412d5e24093feadaec45a6244510383c8dafea66" [label=""];
  "sha256:dd8b7c880870bacdfa5ef3d3412d5e24093feadaec45a6244510383c8dafea66" -> "sha256:a7f8642a8e847101242c84512278cc31ede4eeeaf3bd8aef095c02281dad6034" [label=""];
  "sha256:f29c578e15eb16a86219ef1030453bda3d1f2b7a55c508bc63e6dfa95c81a71e" -> "sha256:a7f8642a8e847101242c84512278cc31ede4eeeaf3bd8aef095c02281dad6034" [label=""];
  "sha256:a7f8642a8e847101242c84512278cc31ede4eeeaf3bd8aef095c02281dad6034" -> "sha256:a49ee532d92cec912d01dda41aec88e683b56fcadeab62118fc2f94ec974971d" [label=""];
}

