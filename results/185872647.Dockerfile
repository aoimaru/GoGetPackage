[app/sources/185872647.Dockerfile]
digraph {
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" [label="local://context" shape="ellipse"];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.10" shape="ellipse"];
  "sha256:dd317c5be36f275a3135090e29c44a3391b34f81b91a4a623841a7056feeb5c1" [label="mkdir{path=/go/src/github.com/openshift/cloud-credential-operator}" shape="note"];
  "sha256:107d6f339e80c3d4960594e70a5cff5ebf0fa15464b0e9523c084a7ab150bff1" [label="copy{src=/pkg, dest=/go/src/github.com/openshift/cloud-credential-operator/pkg/}" shape="note"];
  "sha256:8a0dd1349cd6446eeacc2b992c85a2ca0edcbd1fe65060ed3ec22c606924308b" [label="copy{src=/cmd, dest=/go/src/github.com/openshift/cloud-credential-operator/cmd/}" shape="note"];
  "sha256:369488b8f1f6626f09b53d0769049ead3161be83397b14bd17fa76e956b93e78" [label="copy{src=/vendor, dest=/go/src/github.com/openshift/cloud-credential-operator/vendor/}" shape="note"];
  "sha256:bce80864113fae0b2c1b93777835e7531d5e9b0b9279c78bc1691fe34ca9e1cb" [label="copy{src=/version, dest=/go/src/github.com/openshift/cloud-credential-operator/version/}" shape="note"];
  "sha256:dca4b00de737c05d186a4d08c9b3eec5c67f3e29fd7a99b342e08b7f4a030d12" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -o manager github.com/openshift/cloud-credential-operator/cmd/manager" shape="box"];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" [label="docker-image://registry.svc.ci.openshift.org/openshift/origin-v4.0:base" shape="ellipse"];
  "sha256:635e41fd331c96791dbca12df737defd36383a95efc9cec6729b94f70a25f17c" [label="mkdir{path=/root}" shape="note"];
  "sha256:8df468447ab5e8e163882421e8723587782e0fb192e8ee65392287e79297565d" [label="copy{src=/go/src/github.com/openshift/cloud-credential-operator/manager, dest=/root/}" shape="note"];
  "sha256:ee8fb3331dcc242396ae736bf5650b932f75824b1436c0c83fbae4872927385f" [label="copy{src=/manifests, dest=/manifests}" shape="note"];
  "sha256:e97eae5912c83e98b0a4bef436672b4ff28c624fcd2f321e7387718a30f38ce3" [label="sha256:e97eae5912c83e98b0a4bef436672b4ff28c624fcd2f321e7387718a30f38ce3" shape="plaintext"];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" -> "sha256:dd317c5be36f275a3135090e29c44a3391b34f81b91a4a623841a7056feeb5c1" [label=""];
  "sha256:dd317c5be36f275a3135090e29c44a3391b34f81b91a4a623841a7056feeb5c1" -> "sha256:107d6f339e80c3d4960594e70a5cff5ebf0fa15464b0e9523c084a7ab150bff1" [label=""];
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" -> "sha256:107d6f339e80c3d4960594e70a5cff5ebf0fa15464b0e9523c084a7ab150bff1" [label=""];
  "sha256:107d6f339e80c3d4960594e70a5cff5ebf0fa15464b0e9523c084a7ab150bff1" -> "sha256:8a0dd1349cd6446eeacc2b992c85a2ca0edcbd1fe65060ed3ec22c606924308b" [label=""];
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" -> "sha256:8a0dd1349cd6446eeacc2b992c85a2ca0edcbd1fe65060ed3ec22c606924308b" [label=""];
  "sha256:8a0dd1349cd6446eeacc2b992c85a2ca0edcbd1fe65060ed3ec22c606924308b" -> "sha256:369488b8f1f6626f09b53d0769049ead3161be83397b14bd17fa76e956b93e78" [label=""];
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" -> "sha256:369488b8f1f6626f09b53d0769049ead3161be83397b14bd17fa76e956b93e78" [label=""];
  "sha256:369488b8f1f6626f09b53d0769049ead3161be83397b14bd17fa76e956b93e78" -> "sha256:bce80864113fae0b2c1b93777835e7531d5e9b0b9279c78bc1691fe34ca9e1cb" [label=""];
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" -> "sha256:bce80864113fae0b2c1b93777835e7531d5e9b0b9279c78bc1691fe34ca9e1cb" [label=""];
  "sha256:bce80864113fae0b2c1b93777835e7531d5e9b0b9279c78bc1691fe34ca9e1cb" -> "sha256:dca4b00de737c05d186a4d08c9b3eec5c67f3e29fd7a99b342e08b7f4a030d12" [label=""];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" -> "sha256:635e41fd331c96791dbca12df737defd36383a95efc9cec6729b94f70a25f17c" [label=""];
  "sha256:635e41fd331c96791dbca12df737defd36383a95efc9cec6729b94f70a25f17c" -> "sha256:8df468447ab5e8e163882421e8723587782e0fb192e8ee65392287e79297565d" [label=""];
  "sha256:dca4b00de737c05d186a4d08c9b3eec5c67f3e29fd7a99b342e08b7f4a030d12" -> "sha256:8df468447ab5e8e163882421e8723587782e0fb192e8ee65392287e79297565d" [label=""];
  "sha256:8df468447ab5e8e163882421e8723587782e0fb192e8ee65392287e79297565d" -> "sha256:ee8fb3331dcc242396ae736bf5650b932f75824b1436c0c83fbae4872927385f" [label=""];
  "sha256:6ec4e983b3960102a78ceefb7463dc8927f189f1823826757abdb7f26556fff6" -> "sha256:ee8fb3331dcc242396ae736bf5650b932f75824b1436c0c83fbae4872927385f" [label=""];
  "sha256:ee8fb3331dcc242396ae736bf5650b932f75824b1436c0c83fbae4872927385f" -> "sha256:e97eae5912c83e98b0a4bef436672b4ff28c624fcd2f321e7387718a30f38ce3" [label=""];
}

