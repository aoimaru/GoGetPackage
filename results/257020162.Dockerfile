[app/sources/257020162.Dockerfile]
digraph {
  "sha256:e91bcd0d8709164076800b7ea401c898a2dbf620fbb3b597b70f9bacc7fcb534" [label="local://context" shape="ellipse"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" [label="docker-image://docker.io/library/maven:3.5-jdk-8-alpine" shape="ellipse"];
  "sha256:9ed47bb0e6e12e01889eb5a123a37344eda9b0160d9d7afe034c9f994ffd9f3d" [label="/bin/sh -c apk add --update   graphviz   ttf-freefont   py3-pip   gcc   python3-dev   libc-dev   nodejs   libc-dev   linux-headers   libxml2-dev   libxml2-utils   libxslt-dev   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:669586fa8cfe48b69935f92ea4f161cc2e51be7e111427cbef57dc6ebc604759" [label="/bin/sh -c pip3 install wheel" shape="box"];
  "sha256:0bfd7412c944607b734d8c95e13badd9b14a14131637f1e8fd976c4ef3e788a6" [label="/bin/sh -c pip3 install cwltool html5lib" shape="box"];
  "sha256:3c96f9977279cb32d66957694c5b1fdca0c336d2dc583e77b19ca5c7bd2ff2b5" [label="/bin/sh -c cwltool --version" shape="box"];
  "sha256:71e1ea41c296d4af78037e6c1627b45152d8a2ceada6e2e10e28a372a64babd5" [label="/bin/sh -c mkdir /usr/share/maven/ref/repository" shape="box"];
  "sha256:e1f74faf16be2619dfe0511c72a0c0933f2362f239ca00162802dd61aac1bb51" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:2e6fe6264d4a019b901526a8b47f2a7de6c48bcfc5b31e2a02798e5a7f897fa1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d092343272385e048286d8e5123df83386bffc847c1a17a533b7de7180abc55b" [label="copy{src=/pom.xml, dest=/usr/src/app/},copy{src=/LICENSE.md, dest=/usr/src/app/},copy{src=/NOTICE.md, dest=/usr/src/app/},copy{src=/README.md, dest=/usr/src/app/}" shape="note"];
  "sha256:9c943cc81cffa1f5359019dffcb4e91df56e67c660993afd651bcf8644f0b403" [label="copy{src=/src, dest=/usr/src/app/src}" shape="note"];
  "sha256:b371a6bc6f99ab203ae2c542cb2ca9d198f54ee0ad41ab43fa12905dd43e1916" [label="/bin/sh -c mvn clean package -DskipTests && cp target/cwlviewer-*.jar /usr/lib/cwlviewer.jar && rm -rf target" shape="box"];
  "sha256:241aa980d19cf04c3bb2d6dd9427b28780cb376c69b5a75c1e8478d8ca06d5a2" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:8aaed94a5cc64a0ca5ca4db440c98a8e83b0d5e61e830a756c333c8ad73f6aed" [label="sha256:8aaed94a5cc64a0ca5ca4db440c98a8e83b0d5e61e830a756c333c8ad73f6aed" shape="plaintext"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" -> "sha256:9ed47bb0e6e12e01889eb5a123a37344eda9b0160d9d7afe034c9f994ffd9f3d" [label=""];
  "sha256:9ed47bb0e6e12e01889eb5a123a37344eda9b0160d9d7afe034c9f994ffd9f3d" -> "sha256:669586fa8cfe48b69935f92ea4f161cc2e51be7e111427cbef57dc6ebc604759" [label=""];
  "sha256:669586fa8cfe48b69935f92ea4f161cc2e51be7e111427cbef57dc6ebc604759" -> "sha256:0bfd7412c944607b734d8c95e13badd9b14a14131637f1e8fd976c4ef3e788a6" [label=""];
  "sha256:0bfd7412c944607b734d8c95e13badd9b14a14131637f1e8fd976c4ef3e788a6" -> "sha256:3c96f9977279cb32d66957694c5b1fdca0c336d2dc583e77b19ca5c7bd2ff2b5" [label=""];
  "sha256:3c96f9977279cb32d66957694c5b1fdca0c336d2dc583e77b19ca5c7bd2ff2b5" -> "sha256:71e1ea41c296d4af78037e6c1627b45152d8a2ceada6e2e10e28a372a64babd5" [label=""];
  "sha256:71e1ea41c296d4af78037e6c1627b45152d8a2ceada6e2e10e28a372a64babd5" -> "sha256:e1f74faf16be2619dfe0511c72a0c0933f2362f239ca00162802dd61aac1bb51" [label=""];
  "sha256:e1f74faf16be2619dfe0511c72a0c0933f2362f239ca00162802dd61aac1bb51" -> "sha256:2e6fe6264d4a019b901526a8b47f2a7de6c48bcfc5b31e2a02798e5a7f897fa1" [label=""];
  "sha256:2e6fe6264d4a019b901526a8b47f2a7de6c48bcfc5b31e2a02798e5a7f897fa1" -> "sha256:d092343272385e048286d8e5123df83386bffc847c1a17a533b7de7180abc55b" [label=""];
  "sha256:e91bcd0d8709164076800b7ea401c898a2dbf620fbb3b597b70f9bacc7fcb534" -> "sha256:d092343272385e048286d8e5123df83386bffc847c1a17a533b7de7180abc55b" [label=""];
  "sha256:d092343272385e048286d8e5123df83386bffc847c1a17a533b7de7180abc55b" -> "sha256:9c943cc81cffa1f5359019dffcb4e91df56e67c660993afd651bcf8644f0b403" [label=""];
  "sha256:e91bcd0d8709164076800b7ea401c898a2dbf620fbb3b597b70f9bacc7fcb534" -> "sha256:9c943cc81cffa1f5359019dffcb4e91df56e67c660993afd651bcf8644f0b403" [label=""];
  "sha256:9c943cc81cffa1f5359019dffcb4e91df56e67c660993afd651bcf8644f0b403" -> "sha256:b371a6bc6f99ab203ae2c542cb2ca9d198f54ee0ad41ab43fa12905dd43e1916" [label=""];
  "sha256:b371a6bc6f99ab203ae2c542cb2ca9d198f54ee0ad41ab43fa12905dd43e1916" -> "sha256:241aa980d19cf04c3bb2d6dd9427b28780cb376c69b5a75c1e8478d8ca06d5a2" [label=""];
  "sha256:241aa980d19cf04c3bb2d6dd9427b28780cb376c69b5a75c1e8478d8ca06d5a2" -> "sha256:8aaed94a5cc64a0ca5ca4db440c98a8e83b0d5e61e830a756c333c8ad73f6aed" [label=""];
}

