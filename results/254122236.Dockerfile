[app/sources/254122236.Dockerfile]
digraph {
  "sha256:357bfbe2d7ef3929e77ccdd71a4fb14610ab2ac2dc6a2603f9d6da0f17966fc6" [label="docker-image://docker.io/untangleinc/ngfw:base" shape="ellipse"];
  "sha256:56bfd78e2daac616e720728b022886b5797b57bf02b97ff921205329f9e679ae" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4240dc8a926164462f4cd876c4ba892db4d896f6db33a7fe693890f7837107fd" [label="/bin/sh -c apt-get install --yes build-essential" shape="box"];
  "sha256:0db2437e07f67770e5050424a557cebf795a2569c5d9c3b864f4116248e26b08" [label="/bin/sh -c apt-get install --yes devscripts" shape="box"];
  "sha256:e74a9cf878975911f0daafc95dd2fe9c79dc0ae2a27ae7a298935b978d547de0" [label="/bin/sh -c apt-get install --yes equivs" shape="box"];
  "sha256:fcee2f466e7e6b939a6ced26a97ffee46dc387940bbe67e6eaca0ec5fe51435a" [label="/bin/sh -c apt-get install --yes untangle-development-build" shape="box"];
  "sha256:55e28c69bb6c18305b01794c457e536de97cc7b8abdb27d1435087861d7804ae" [label="/bin/sh -c mkdir -p ${SRC}" shape="box"];
  "sha256:cc4a1e959ae2d651dd9ee4e26411cb0dd7613c947cbcfedcd3cfc29dbffb06fa" [label="mkdir{path=/opt/untangle/build}" shape="note"];
  "sha256:8359232299122fd8ec255672432c5d83117e05049f388accaf771dbd1608657a" [label="sha256:8359232299122fd8ec255672432c5d83117e05049f388accaf771dbd1608657a" shape="plaintext"];
  "sha256:357bfbe2d7ef3929e77ccdd71a4fb14610ab2ac2dc6a2603f9d6da0f17966fc6" -> "sha256:56bfd78e2daac616e720728b022886b5797b57bf02b97ff921205329f9e679ae" [label=""];
  "sha256:56bfd78e2daac616e720728b022886b5797b57bf02b97ff921205329f9e679ae" -> "sha256:4240dc8a926164462f4cd876c4ba892db4d896f6db33a7fe693890f7837107fd" [label=""];
  "sha256:4240dc8a926164462f4cd876c4ba892db4d896f6db33a7fe693890f7837107fd" -> "sha256:0db2437e07f67770e5050424a557cebf795a2569c5d9c3b864f4116248e26b08" [label=""];
  "sha256:0db2437e07f67770e5050424a557cebf795a2569c5d9c3b864f4116248e26b08" -> "sha256:e74a9cf878975911f0daafc95dd2fe9c79dc0ae2a27ae7a298935b978d547de0" [label=""];
  "sha256:e74a9cf878975911f0daafc95dd2fe9c79dc0ae2a27ae7a298935b978d547de0" -> "sha256:fcee2f466e7e6b939a6ced26a97ffee46dc387940bbe67e6eaca0ec5fe51435a" [label=""];
  "sha256:fcee2f466e7e6b939a6ced26a97ffee46dc387940bbe67e6eaca0ec5fe51435a" -> "sha256:55e28c69bb6c18305b01794c457e536de97cc7b8abdb27d1435087861d7804ae" [label=""];
  "sha256:55e28c69bb6c18305b01794c457e536de97cc7b8abdb27d1435087861d7804ae" -> "sha256:cc4a1e959ae2d651dd9ee4e26411cb0dd7613c947cbcfedcd3cfc29dbffb06fa" [label=""];
  "sha256:cc4a1e959ae2d651dd9ee4e26411cb0dd7613c947cbcfedcd3cfc29dbffb06fa" -> "sha256:8359232299122fd8ec255672432c5d83117e05049f388accaf771dbd1608657a" [label=""];
}

