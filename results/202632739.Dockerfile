[app/sources/202632739.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:928dc5840ebc2101fa326f48731532a17073545ab87df744c142d492e93010d3" [label="/bin/sh -c set -ex;     apt-get update;     apt-get install -y --no-install-recommends gosu dirmngr gnupg;     rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:982f7fee0c78567a0457eeafcc82ca2d3c92f9060cfed946664cd6fc6f2f7b97" [label="/bin/sh -c set -x     && apt-get update     && apt-get install -y --no-install-recommends ca-certificates        build-essential        openjdk-8-jre-headless     && apt-get purge -y --auto-remove wget     && rm -rf /var/lib/apt/lists/*     && cp -a /etc/skel /home/lisp" shape="box"];
  "sha256:bdee2cf99611512538613ebf1e4d8e832e97ef97017624e9aa3c1ebbea01248a" [label="local://context" shape="ellipse"];
  "sha256:6bc5893831d9966ea291456fb349ca8f06dfb26e51e700f7eea19ec2496127b2" [label="copy{src=/assets/lisp-installers, dest=/tmp/lisp-installers}" shape="note"];
  "sha256:196b51a2820b5a148b350140b7e1be4a36cb083a824b0d432c47f9ae23e7e581" [label="/bin/sh -c chmod +x /tmp/lisp-installers/*     && sync     && sleep 2     && /tmp/lisp-installers/init     && /tmp/lisp-installers/sbcl.install     && /tmp/lisp-installers/abcl.install     && /tmp/lisp-installers/ccl.install     && /tmp/lisp-installers/ecl.install     && /tmp/lisp-installers/clean     && rm -rf /tmp/*" shape="box"];
  "sha256:8146a48bc0d2ca0c54d3ab974dbf7e271da677331b9044dabe86540266098d8f" [label="/bin/sh -c mkdir -p /etc/common-lisp/asdf-output-translations.conf.d     && mkdir -p /etc/common-lisp/source-registry.conf.d     && mkdir -p /usr/local/share/common-lisp/slime     && mkdir -p /usr/local/share/common-lisp/source     && chmod 777 /usr/local/share/common-lisp/source" shape="box"];
  "sha256:2cbd7f01e9691d1995e6af2e6b3ece59d4249376b9946b22d3556e618eaaef7d" [label="copy{src=/assets/asdf/50-slime.conf, dest=/etc/common-lisp/source-registry.conf.d/}" shape="note"];
  "sha256:2fa3e9545ac260f92b9f6ddfadde42889aaa5b340e4894533c91ea27007389af" [label="copy{src=/assets/entrypoint.sh, dest=/usr/local/bin/daewok_lisp-docker_entrypoint.sh}" shape="note"];
  "sha256:9d60ca69dcb864dd8420dbfd1579c0bd339c8098eebfcadf8579df2d199c5428" [label="sha256:9d60ca69dcb864dd8420dbfd1579c0bd339c8098eebfcadf8579df2d199c5428" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:928dc5840ebc2101fa326f48731532a17073545ab87df744c142d492e93010d3" [label=""];
  "sha256:928dc5840ebc2101fa326f48731532a17073545ab87df744c142d492e93010d3" -> "sha256:982f7fee0c78567a0457eeafcc82ca2d3c92f9060cfed946664cd6fc6f2f7b97" [label=""];
  "sha256:982f7fee0c78567a0457eeafcc82ca2d3c92f9060cfed946664cd6fc6f2f7b97" -> "sha256:6bc5893831d9966ea291456fb349ca8f06dfb26e51e700f7eea19ec2496127b2" [label=""];
  "sha256:bdee2cf99611512538613ebf1e4d8e832e97ef97017624e9aa3c1ebbea01248a" -> "sha256:6bc5893831d9966ea291456fb349ca8f06dfb26e51e700f7eea19ec2496127b2" [label=""];
  "sha256:6bc5893831d9966ea291456fb349ca8f06dfb26e51e700f7eea19ec2496127b2" -> "sha256:196b51a2820b5a148b350140b7e1be4a36cb083a824b0d432c47f9ae23e7e581" [label=""];
  "sha256:196b51a2820b5a148b350140b7e1be4a36cb083a824b0d432c47f9ae23e7e581" -> "sha256:8146a48bc0d2ca0c54d3ab974dbf7e271da677331b9044dabe86540266098d8f" [label=""];
  "sha256:8146a48bc0d2ca0c54d3ab974dbf7e271da677331b9044dabe86540266098d8f" -> "sha256:2cbd7f01e9691d1995e6af2e6b3ece59d4249376b9946b22d3556e618eaaef7d" [label=""];
  "sha256:bdee2cf99611512538613ebf1e4d8e832e97ef97017624e9aa3c1ebbea01248a" -> "sha256:2cbd7f01e9691d1995e6af2e6b3ece59d4249376b9946b22d3556e618eaaef7d" [label=""];
  "sha256:2cbd7f01e9691d1995e6af2e6b3ece59d4249376b9946b22d3556e618eaaef7d" -> "sha256:2fa3e9545ac260f92b9f6ddfadde42889aaa5b340e4894533c91ea27007389af" [label=""];
  "sha256:bdee2cf99611512538613ebf1e4d8e832e97ef97017624e9aa3c1ebbea01248a" -> "sha256:2fa3e9545ac260f92b9f6ddfadde42889aaa5b340e4894533c91ea27007389af" [label=""];
  "sha256:2fa3e9545ac260f92b9f6ddfadde42889aaa5b340e4894533c91ea27007389af" -> "sha256:9d60ca69dcb864dd8420dbfd1579c0bd339c8098eebfcadf8579df2d199c5428" [label=""];
}

