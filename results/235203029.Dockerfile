[app/sources/235203029.Dockerfile]
digraph {
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:2de7b2c7693bac7dce50e3e2a0a5fcbdb354c2031a9f626b84286034e1937241" [label="local://context" shape="ellipse"];
  "sha256:b2a64cca4646974452fb35542f9f73e0cd267caccf4d33bddbc100d214163c3a" [label="copy{src=/licenses, dest=/licenses}" shape="note"];
  "sha256:50792813440371312ae90974e8c44bbaf6db8871fe724e6c85325b9a1bc1f5fd" [label="/bin/sh -c REPOLIST=rhel-7-server-rpms,packages-microsoft-com-mssql-server-2017,packages-microsoft-com-prod &&     curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo &&     curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/7/prod.repo &&     ACCEPT_EULA=Y yum -y install --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs       mssql-server mssql-tools unixODBC-devel &&     yum clean all" shape="box"];
  "sha256:83f9c5c031f004dc43e47f259f7192272dba526f53bdd1202e15c8d1513d36f0" [label="copy{src=/uid_entrypoint, dest=/opt/mssql-tools/bin/}" shape="note"];
  "sha256:ba47afcaf77a6861ecd3991d03d1dc0f9f3c40df9ddaf36558a7faf384ca38a0" [label="/bin/sh -c mkdir -p /var/opt/mssql/data &&     chmod -R g=u /var/opt/mssql /etc/passwd" shape="box"];
  "sha256:ad96e14793fec4552428c6b9620cdc05a941970c31e4d94b234e24b0fbb5fb09" [label="sha256:ad96e14793fec4552428c6b9620cdc05a941970c31e4d94b234e24b0fbb5fb09" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:b2a64cca4646974452fb35542f9f73e0cd267caccf4d33bddbc100d214163c3a" [label=""];
  "sha256:2de7b2c7693bac7dce50e3e2a0a5fcbdb354c2031a9f626b84286034e1937241" -> "sha256:b2a64cca4646974452fb35542f9f73e0cd267caccf4d33bddbc100d214163c3a" [label=""];
  "sha256:b2a64cca4646974452fb35542f9f73e0cd267caccf4d33bddbc100d214163c3a" -> "sha256:50792813440371312ae90974e8c44bbaf6db8871fe724e6c85325b9a1bc1f5fd" [label=""];
  "sha256:50792813440371312ae90974e8c44bbaf6db8871fe724e6c85325b9a1bc1f5fd" -> "sha256:83f9c5c031f004dc43e47f259f7192272dba526f53bdd1202e15c8d1513d36f0" [label=""];
  "sha256:2de7b2c7693bac7dce50e3e2a0a5fcbdb354c2031a9f626b84286034e1937241" -> "sha256:83f9c5c031f004dc43e47f259f7192272dba526f53bdd1202e15c8d1513d36f0" [label=""];
  "sha256:83f9c5c031f004dc43e47f259f7192272dba526f53bdd1202e15c8d1513d36f0" -> "sha256:ba47afcaf77a6861ecd3991d03d1dc0f9f3c40df9ddaf36558a7faf384ca38a0" [label=""];
  "sha256:ba47afcaf77a6861ecd3991d03d1dc0f9f3c40df9ddaf36558a7faf384ca38a0" -> "sha256:ad96e14793fec4552428c6b9620cdc05a941970c31e4d94b234e24b0fbb5fb09" [label=""];
}

