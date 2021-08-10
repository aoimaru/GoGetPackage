[app/sources/204535295.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:8668de03e26b562ac8ce7af444b1e966026dfc93270c40ac045fdbeb652011de" [label="local://context" shape="ellipse"];
  "sha256:97af334ffeb1d0dac512a5d9d2685eb4378f269f96a1768bae8d5b8c9c63f4da" [label="copy{src=/lddtree.tgz, dest=/}" shape="note"];
  "sha256:84590e220375f3db118167369650c2010daadd070cf868a4370a995d46e109dd" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone" shape="box"];
  "sha256:60b21f57176d75f1ac660bfe10d6c366f1fff780c0bb2675f3756afacee8869d" [label="/bin/sh -c groupadd --gid ${GROUP_ID} ${GROUP_NAME}" shape="box"];
  "sha256:db325ed312fbd46e53dbb84254c1d3d5761d13c793da05a77c5e2a405312f9f4" [label="/bin/sh -c useradd --create-home --uid ${USER_ID} --gid ${GROUP_ID} ${USER_NAME}" shape="box"];
  "sha256:fa5af8fbc1c8afd47916a11889698b097f22baf0b408b08b9c690fac44276a84" [label="mkdir{path=/data}" shape="note"];
  "sha256:583258a77f3382e36bfb9fda9d4e261ee6cf55dd9c94962f5d2c3dffd5e667b8" [label="sha256:583258a77f3382e36bfb9fda9d4e261ee6cf55dd9c94962f5d2c3dffd5e667b8" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:97af334ffeb1d0dac512a5d9d2685eb4378f269f96a1768bae8d5b8c9c63f4da" [label=""];
  "sha256:8668de03e26b562ac8ce7af444b1e966026dfc93270c40ac045fdbeb652011de" -> "sha256:97af334ffeb1d0dac512a5d9d2685eb4378f269f96a1768bae8d5b8c9c63f4da" [label=""];
  "sha256:97af334ffeb1d0dac512a5d9d2685eb4378f269f96a1768bae8d5b8c9c63f4da" -> "sha256:84590e220375f3db118167369650c2010daadd070cf868a4370a995d46e109dd" [label=""];
  "sha256:84590e220375f3db118167369650c2010daadd070cf868a4370a995d46e109dd" -> "sha256:60b21f57176d75f1ac660bfe10d6c366f1fff780c0bb2675f3756afacee8869d" [label=""];
  "sha256:60b21f57176d75f1ac660bfe10d6c366f1fff780c0bb2675f3756afacee8869d" -> "sha256:db325ed312fbd46e53dbb84254c1d3d5761d13c793da05a77c5e2a405312f9f4" [label=""];
  "sha256:db325ed312fbd46e53dbb84254c1d3d5761d13c793da05a77c5e2a405312f9f4" -> "sha256:fa5af8fbc1c8afd47916a11889698b097f22baf0b408b08b9c690fac44276a84" [label=""];
  "sha256:fa5af8fbc1c8afd47916a11889698b097f22baf0b408b08b9c690fac44276a84" -> "sha256:583258a77f3382e36bfb9fda9d4e261ee6cf55dd9c94962f5d2c3dffd5e667b8" [label=""];
}

