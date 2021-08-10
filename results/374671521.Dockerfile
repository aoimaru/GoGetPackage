[app/sources/374671521.Dockerfile]
digraph {
  "sha256:b7bfb6071461dac790af421e5573ba2d59ee78750e95c2ad01489d1e434e0245" [label="docker-image://docker.io/jboss/keycloak-proxy:latest" shape="ellipse"];
  "sha256:b44539b8a5e3d305128c3fdb19c84ff693ac6676d32a3a4fb8ac37071d1bc19e" [label="/bin/sh -c yum -y install xinetd && yum clean all" shape="box"];
  "sha256:a4205ccb2389653238081a3a220c76131b6d30213819d898ce880993be5d030b" [label="local://context" shape="ellipse"];
  "sha256:87812334e8b4d5a16f84a8511822bb196d22bdc8c4cfa02f234336502c0a00af" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:583867032476c6bf59ab43aff1ca40286ac3c69ce101117a36d4da55d253aa1a" [label="copy{src=/conf/proxy.json, dest=/opt/jboss/conf/proxy.json}" shape="note"];
  "sha256:29489cbd76e5b74d9e6df83f25fa96681daad39c10e77a3d6a36ae150ade263b" [label="sha256:29489cbd76e5b74d9e6df83f25fa96681daad39c10e77a3d6a36ae150ade263b" shape="plaintext"];
  "sha256:b7bfb6071461dac790af421e5573ba2d59ee78750e95c2ad01489d1e434e0245" -> "sha256:b44539b8a5e3d305128c3fdb19c84ff693ac6676d32a3a4fb8ac37071d1bc19e" [label=""];
  "sha256:b44539b8a5e3d305128c3fdb19c84ff693ac6676d32a3a4fb8ac37071d1bc19e" -> "sha256:87812334e8b4d5a16f84a8511822bb196d22bdc8c4cfa02f234336502c0a00af" [label=""];
  "sha256:a4205ccb2389653238081a3a220c76131b6d30213819d898ce880993be5d030b" -> "sha256:87812334e8b4d5a16f84a8511822bb196d22bdc8c4cfa02f234336502c0a00af" [label=""];
  "sha256:87812334e8b4d5a16f84a8511822bb196d22bdc8c4cfa02f234336502c0a00af" -> "sha256:583867032476c6bf59ab43aff1ca40286ac3c69ce101117a36d4da55d253aa1a" [label=""];
  "sha256:a4205ccb2389653238081a3a220c76131b6d30213819d898ce880993be5d030b" -> "sha256:583867032476c6bf59ab43aff1ca40286ac3c69ce101117a36d4da55d253aa1a" [label=""];
  "sha256:583867032476c6bf59ab43aff1ca40286ac3c69ce101117a36d4da55d253aa1a" -> "sha256:29489cbd76e5b74d9e6df83f25fa96681daad39c10e77a3d6a36ae150ade263b" [label=""];
}

