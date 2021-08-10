[app/sources/317432950.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:5cc4ba5622f127e51077477d8553b4e4fd0db7e0e429071f02c5ddf5326b5989" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:7f1a8418066d672367cc0ccfa0028917305de243e556c4328b5a3eaf4529c37a" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:1651013a64cb1afdc5cdba47801103ed4dda9689fa90a9bef1f2da398f76b67a" [label="/bin/sh -c echo \"cd /data && CLI_OPTS='${CLI_OPTS}' /app/hapi-fhir-cli run-server --allow-external-refs --disable-referential-integrity -f ${FHIR} -p \\${PORT:-8080}\" > /app/cmd" shape="box"];
  "sha256:aea7a5ac69ff7bdb0b109cca89cd171445e88b5fefe4e64290cb43ecca2202de" [label="https://github.com/jamesagnew/hapi-fhir/releases/download/v3.2.0/hapi-fhir-3.2.0-cli.tar.bz2" shape="ellipse"];
  "sha256:5405a14a2be7b3e21af447d91e963404613c6aeec8eb6c3cd20213d5a8192b8e" [label="copy{src=/hapi-fhir-3.2.0-cli.tar.bz2, dest=/tmp/hapi-cli/}" shape="note"];
  "sha256:0e2062a1a42c82cde1fa006427307e4c893a4c1ef73305b3ae13c89850373dee" [label="/bin/sh -c tar xvjf /tmp/hapi-cli/hapi-fhir-3.2.0-cli.tar.bz2 -C /app/" shape="box"];
  "sha256:a6d8f7fe81903fb3c2fbcd014732dd99eb6519dd94af4ce7d0bb90d8143c5ee3" [label="/bin/sh -c rm -rf /tmp/hapi-cli" shape="box"];
  "sha256:2b7d7e236cd74a0fbfb2291b8522e4e3992de9c3b1d67aa9b5ff170a1be90b89" [label="local://context" shape="ellipse"];
  "sha256:11b16407a094003f43753de905ecadef6edb5819813f3c34ca33f081a6497709" [label="copy{src=/databases/empty, dest=/data}" shape="note"];
  "sha256:8bca7e9cb3426a842e68a7a571905856c7ffc1b5626490c60ef80e423f3dd0cb" [label="sha256:8bca7e9cb3426a842e68a7a571905856c7ffc1b5626490c60ef80e423f3dd0cb" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:5cc4ba5622f127e51077477d8553b4e4fd0db7e0e429071f02c5ddf5326b5989" [label=""];
  "sha256:5cc4ba5622f127e51077477d8553b4e4fd0db7e0e429071f02c5ddf5326b5989" -> "sha256:7f1a8418066d672367cc0ccfa0028917305de243e556c4328b5a3eaf4529c37a" [label=""];
  "sha256:7f1a8418066d672367cc0ccfa0028917305de243e556c4328b5a3eaf4529c37a" -> "sha256:1651013a64cb1afdc5cdba47801103ed4dda9689fa90a9bef1f2da398f76b67a" [label=""];
  "sha256:1651013a64cb1afdc5cdba47801103ed4dda9689fa90a9bef1f2da398f76b67a" -> "sha256:5405a14a2be7b3e21af447d91e963404613c6aeec8eb6c3cd20213d5a8192b8e" [label=""];
  "sha256:aea7a5ac69ff7bdb0b109cca89cd171445e88b5fefe4e64290cb43ecca2202de" -> "sha256:5405a14a2be7b3e21af447d91e963404613c6aeec8eb6c3cd20213d5a8192b8e" [label=""];
  "sha256:5405a14a2be7b3e21af447d91e963404613c6aeec8eb6c3cd20213d5a8192b8e" -> "sha256:0e2062a1a42c82cde1fa006427307e4c893a4c1ef73305b3ae13c89850373dee" [label=""];
  "sha256:0e2062a1a42c82cde1fa006427307e4c893a4c1ef73305b3ae13c89850373dee" -> "sha256:a6d8f7fe81903fb3c2fbcd014732dd99eb6519dd94af4ce7d0bb90d8143c5ee3" [label=""];
  "sha256:a6d8f7fe81903fb3c2fbcd014732dd99eb6519dd94af4ce7d0bb90d8143c5ee3" -> "sha256:11b16407a094003f43753de905ecadef6edb5819813f3c34ca33f081a6497709" [label=""];
  "sha256:2b7d7e236cd74a0fbfb2291b8522e4e3992de9c3b1d67aa9b5ff170a1be90b89" -> "sha256:11b16407a094003f43753de905ecadef6edb5819813f3c34ca33f081a6497709" [label=""];
  "sha256:11b16407a094003f43753de905ecadef6edb5819813f3c34ca33f081a6497709" -> "sha256:8bca7e9cb3426a842e68a7a571905856c7ffc1b5626490c60ef80e423f3dd0cb" [label=""];
}

