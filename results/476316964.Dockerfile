[app/sources/476316964.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:251e1d7de22ff05a7b181b9fa9ddb66c7e02ded627d0513d545b4168825de212" [label="/bin/sh -c yum install -y https://yum.kaos.io/7/release/x86_64/kaos-repo-8.0-0.el7.noarch.rpm" shape="box"];
  "sha256:70dcae5f2c40c15505d8ba24cbf4dea9bed10273125ebe0ba9a4520ac706defc" [label="/bin/sh -c yum clean all && yum -y update" shape="box"];
  "sha256:6cfdc771f106a5c3fac01564c8d511b4ce8de4f2b5220982a74e7d6dfff8d301" [label="/bin/sh -c yum -y install make golang" shape="box"];
  "sha256:eff98660295de5be402644f342fde64ac5b998bcffbb284b1f8b20edd63fc276" [label="local://context" shape="ellipse"];
  "sha256:862abf74b4a2ef230d482702aa8494f22dd0fce06401ff81d009a1f5013c02bd" [label="copy{src=/, dest=/root/src/github.com/funbox/init-exporter}" shape="note"];
  "sha256:77ec7498bdf81d558ae7f428ffdc37f2cd59e3ed20a5a1c51fdcb908cc58cd49" [label="/bin/sh -c ls $TARGET -al" shape="box"];
  "sha256:bd06eaf08141439874a2fa42a7ecae360510ba69bdacd4f20306db76878dea65" [label="/bin/sh -c cd $TARGET && make all && make install" shape="box"];
  "sha256:cc6c1613f0b7523685102f3a6e2eff3a0954d674a2039affcb09dd6d3d5883f6" [label="/bin/sh -c useradd service" shape="box"];
  "sha256:123c37f9acc059a57b8af68e310b2da48444a087d106db3f65308844edb64651" [label="/bin/sh -c mkdir -p /var/local/init-exporter/helpers && mkdir -p /var/log/init-exporter" shape="box"];
  "sha256:883f65d0c0fd384a07387432226dfc36cf188926649b0f543017fb6503ca70da" [label="copy{src=/testdata, dest=/root}" shape="note"];
  "sha256:679d43abb177f1f6b39b9cb996fb42d7665face44033b8d99836d5388e0ce4a9" [label="/bin/sh -c yum clean all && rm -rf /tmp/*" shape="box"];
  "sha256:66846aff62b11384a844244896ed02b03fb6420f7456359aaf49709576ab61bd" [label="mkdir{path=/root}" shape="note"];
  "sha256:dcb80c7905616354144c556285bdd427a92bc04d891776ab2628c55c8ab6eecf" [label="sha256:dcb80c7905616354144c556285bdd427a92bc04d891776ab2628c55c8ab6eecf" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:251e1d7de22ff05a7b181b9fa9ddb66c7e02ded627d0513d545b4168825de212" [label=""];
  "sha256:251e1d7de22ff05a7b181b9fa9ddb66c7e02ded627d0513d545b4168825de212" -> "sha256:70dcae5f2c40c15505d8ba24cbf4dea9bed10273125ebe0ba9a4520ac706defc" [label=""];
  "sha256:70dcae5f2c40c15505d8ba24cbf4dea9bed10273125ebe0ba9a4520ac706defc" -> "sha256:6cfdc771f106a5c3fac01564c8d511b4ce8de4f2b5220982a74e7d6dfff8d301" [label=""];
  "sha256:6cfdc771f106a5c3fac01564c8d511b4ce8de4f2b5220982a74e7d6dfff8d301" -> "sha256:862abf74b4a2ef230d482702aa8494f22dd0fce06401ff81d009a1f5013c02bd" [label=""];
  "sha256:eff98660295de5be402644f342fde64ac5b998bcffbb284b1f8b20edd63fc276" -> "sha256:862abf74b4a2ef230d482702aa8494f22dd0fce06401ff81d009a1f5013c02bd" [label=""];
  "sha256:862abf74b4a2ef230d482702aa8494f22dd0fce06401ff81d009a1f5013c02bd" -> "sha256:77ec7498bdf81d558ae7f428ffdc37f2cd59e3ed20a5a1c51fdcb908cc58cd49" [label=""];
  "sha256:77ec7498bdf81d558ae7f428ffdc37f2cd59e3ed20a5a1c51fdcb908cc58cd49" -> "sha256:bd06eaf08141439874a2fa42a7ecae360510ba69bdacd4f20306db76878dea65" [label=""];
  "sha256:bd06eaf08141439874a2fa42a7ecae360510ba69bdacd4f20306db76878dea65" -> "sha256:cc6c1613f0b7523685102f3a6e2eff3a0954d674a2039affcb09dd6d3d5883f6" [label=""];
  "sha256:cc6c1613f0b7523685102f3a6e2eff3a0954d674a2039affcb09dd6d3d5883f6" -> "sha256:123c37f9acc059a57b8af68e310b2da48444a087d106db3f65308844edb64651" [label=""];
  "sha256:123c37f9acc059a57b8af68e310b2da48444a087d106db3f65308844edb64651" -> "sha256:883f65d0c0fd384a07387432226dfc36cf188926649b0f543017fb6503ca70da" [label=""];
  "sha256:eff98660295de5be402644f342fde64ac5b998bcffbb284b1f8b20edd63fc276" -> "sha256:883f65d0c0fd384a07387432226dfc36cf188926649b0f543017fb6503ca70da" [label=""];
  "sha256:883f65d0c0fd384a07387432226dfc36cf188926649b0f543017fb6503ca70da" -> "sha256:679d43abb177f1f6b39b9cb996fb42d7665face44033b8d99836d5388e0ce4a9" [label=""];
  "sha256:679d43abb177f1f6b39b9cb996fb42d7665face44033b8d99836d5388e0ce4a9" -> "sha256:66846aff62b11384a844244896ed02b03fb6420f7456359aaf49709576ab61bd" [label=""];
  "sha256:66846aff62b11384a844244896ed02b03fb6420f7456359aaf49709576ab61bd" -> "sha256:dcb80c7905616354144c556285bdd427a92bc04d891776ab2628c55c8ab6eecf" [label=""];
}

