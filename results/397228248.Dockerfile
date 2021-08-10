[app/sources/397228248.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1a28a1c1ecebef456e5b335e687130e88ccdfe09d69243d39c0aef68f2104bb3" [label="/bin/sh -c apt-get --yes update     && apt-get --yes install --no-install-recommends         apt-transport-https         ca-certificates     && apt-get --yes clean" shape="box"];
  "sha256:e3c60bb55cd9307fdd2729f199cb27e81e617475a8a486ac9296f916adae51c0" [label="/bin/sh -c echo \"deb ${FLOCKER_REPOSITORY} /\" > /etc/apt/sources.list.d/clusterhq.list" shape="box"];
  "sha256:27e4f61786b49ae1d7a4399179ae49cbca4c5746645912c299ba16805e63072b" [label="/bin/sh -c apt-get --yes update     && apt-get --yes install --no-install-recommends --allow-unauthenticated         clusterhq-python-flocker=${FLOCKER_VERSION}         clusterhq-flocker-node=${FLOCKER_VERSION}" shape="box"];
  "sha256:ea372213a8ea34f5ec2c00943f78cdefaf21784d5581e4a5caa9fc6d04e5a6a7" [label="sha256:ea372213a8ea34f5ec2c00943f78cdefaf21784d5581e4a5caa9fc6d04e5a6a7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1a28a1c1ecebef456e5b335e687130e88ccdfe09d69243d39c0aef68f2104bb3" [label=""];
  "sha256:1a28a1c1ecebef456e5b335e687130e88ccdfe09d69243d39c0aef68f2104bb3" -> "sha256:e3c60bb55cd9307fdd2729f199cb27e81e617475a8a486ac9296f916adae51c0" [label=""];
  "sha256:e3c60bb55cd9307fdd2729f199cb27e81e617475a8a486ac9296f916adae51c0" -> "sha256:27e4f61786b49ae1d7a4399179ae49cbca4c5746645912c299ba16805e63072b" [label=""];
  "sha256:27e4f61786b49ae1d7a4399179ae49cbca4c5746645912c299ba16805e63072b" -> "sha256:ea372213a8ea34f5ec2c00943f78cdefaf21784d5581e4a5caa9fc6d04e5a6a7" [label=""];
}

