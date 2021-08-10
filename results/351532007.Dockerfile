[app/sources/351532007.Dockerfile]
digraph {
  "sha256:4bf9b468334c2e43ca52ba278a106ac1d540231d6871c2a02a3b4b005f421fd0" [label="docker-image://docker.io/openshift/origin-release:golang-1.10" shape="ellipse"];
  "sha256:17504973fddca968a395fd26d88a19172cae1d51f99b86ac54d7b2634859eb16" [label="/bin/sh -c yum install -y glide python-pip python-virtualenv python36 git     && pip install tox" shape="box"];
  "sha256:cdb8bc9de14fdf2ebae65a5c06b5048088cc7be4f40163a3284afcd055744e92" [label="sha256:cdb8bc9de14fdf2ebae65a5c06b5048088cc7be4f40163a3284afcd055744e92" shape="plaintext"];
  "sha256:4bf9b468334c2e43ca52ba278a106ac1d540231d6871c2a02a3b4b005f421fd0" -> "sha256:17504973fddca968a395fd26d88a19172cae1d51f99b86ac54d7b2634859eb16" [label=""];
  "sha256:17504973fddca968a395fd26d88a19172cae1d51f99b86ac54d7b2634859eb16" -> "sha256:cdb8bc9de14fdf2ebae65a5c06b5048088cc7be4f40163a3284afcd055744e92" [label=""];
}

