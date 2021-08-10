[app/sources/155334698.Dockerfile]
digraph {
  "sha256:ba09857861a408ba7fe19e177ab7641a9b40d47c78b1c8cc90fe56302227dbe0" [label="docker-image://docker.io/nacyot/ubuntu:latest" shape="ellipse"];
  "sha256:9666e6d81d86b7062dc669c2cccb8cf9fd928d9b72f7963cd06d04efd7c1bc59" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5cce09b265ea603a25ea2601fa90806c507eb5148ca7b0697140fe735a3d1aa4" [label="/bin/sh -c apt-get install -y swi-prolog" shape="box"];
  "sha256:c96c6560b7e3cd52b8e865ea7d57a9f9fc030300df678b66e518847392dc9acb" [label="mkdir{path=/source}" shape="note"];
  "sha256:aed463a3be96e5cdd0ee93e0adfa5d03baaa66336eb29e22d61de79a315388af" [label="sha256:aed463a3be96e5cdd0ee93e0adfa5d03baaa66336eb29e22d61de79a315388af" shape="plaintext"];
  "sha256:ba09857861a408ba7fe19e177ab7641a9b40d47c78b1c8cc90fe56302227dbe0" -> "sha256:9666e6d81d86b7062dc669c2cccb8cf9fd928d9b72f7963cd06d04efd7c1bc59" [label=""];
  "sha256:9666e6d81d86b7062dc669c2cccb8cf9fd928d9b72f7963cd06d04efd7c1bc59" -> "sha256:5cce09b265ea603a25ea2601fa90806c507eb5148ca7b0697140fe735a3d1aa4" [label=""];
  "sha256:5cce09b265ea603a25ea2601fa90806c507eb5148ca7b0697140fe735a3d1aa4" -> "sha256:c96c6560b7e3cd52b8e865ea7d57a9f9fc030300df678b66e518847392dc9acb" [label=""];
  "sha256:c96c6560b7e3cd52b8e865ea7d57a9f9fc030300df678b66e518847392dc9acb" -> "sha256:aed463a3be96e5cdd0ee93e0adfa5d03baaa66336eb29e22d61de79a315388af" [label=""];
}

