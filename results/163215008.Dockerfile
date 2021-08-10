[app/sources/163215008.Dockerfile]
digraph {
  "sha256:766b6420146660243cc64bcdf37df08e28d9ef9d55874d727724d61ff94c858e" [label="local://context" shape="ellipse"];
  "sha256:96d6ce988d25bf78b3ee8eb4c828ed774d50e53736fb3af6dbfa59b54c076d05" [label="docker-image://quay.io/bgruening/galaxy-htcondor-base:19.01@sha256:d295a797169ea8ff690d43d0797daf5c731ce5e25010583cc3850936b4bdabd6" shape="ellipse"];
  "sha256:7ee9044b7675a1f3e32b1b2657b2ffc8999fcb74f9d667bb841c29b4125b590d" [label="copy{src=/condor_config.local, dest=/etc/condor/condor_config.local}" shape="note"];
  "sha256:6a15661ff605623d9e353773119ebc2feced62feb4a930dc5113571447c18001" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:43d954d1f644e336b9465d08d60d3f3d47720df40c6d82d7691aabbedc7bedd6" [label="sha256:43d954d1f644e336b9465d08d60d3f3d47720df40c6d82d7691aabbedc7bedd6" shape="plaintext"];
  "sha256:96d6ce988d25bf78b3ee8eb4c828ed774d50e53736fb3af6dbfa59b54c076d05" -> "sha256:7ee9044b7675a1f3e32b1b2657b2ffc8999fcb74f9d667bb841c29b4125b590d" [label=""];
  "sha256:766b6420146660243cc64bcdf37df08e28d9ef9d55874d727724d61ff94c858e" -> "sha256:7ee9044b7675a1f3e32b1b2657b2ffc8999fcb74f9d667bb841c29b4125b590d" [label=""];
  "sha256:7ee9044b7675a1f3e32b1b2657b2ffc8999fcb74f9d667bb841c29b4125b590d" -> "sha256:6a15661ff605623d9e353773119ebc2feced62feb4a930dc5113571447c18001" [label=""];
  "sha256:766b6420146660243cc64bcdf37df08e28d9ef9d55874d727724d61ff94c858e" -> "sha256:6a15661ff605623d9e353773119ebc2feced62feb4a930dc5113571447c18001" [label=""];
  "sha256:6a15661ff605623d9e353773119ebc2feced62feb4a930dc5113571447c18001" -> "sha256:43d954d1f644e336b9465d08d60d3f3d47720df40c6d82d7691aabbedc7bedd6" [label=""];
}

