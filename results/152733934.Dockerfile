[app/sources/152733934.Dockerfile]
digraph {
  "sha256:56d42b421382efdfd2b25f09a233cfe22a9e76f8fc81ed18b78322c00552c36e" [label="docker-image://docker.io/library/debian:testing-slim" shape="ellipse"];
  "sha256:f38d7de915afd6297e81d2d950d0dbbd04299d5dc8b89e23253c50ccfbe78d4e" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y    ca-certificates   doxygen   && rm -rf /var/lib/apt/lists/*   && addgroup --gid 2000 skia   && adduser --uid 2000 --gid 2000 skia" shape="box"];
  "sha256:ff7ee8ec6a7dc8fdb9e999adb25a678d1b12de7d492e2b7613e9eb40c7f84f61" [label="local://context" shape="ellipse"];
  "sha256:1d7ecba791f9899ad7e4a08a353c00f5bf9212dc1c4bae9ab385fc5bdcb343e4" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:11f9add38b56e8e3a5f11f4c8198d06eb43cc0021db8b7a6aed88a8428072e3c" [label="sha256:11f9add38b56e8e3a5f11f4c8198d06eb43cc0021db8b7a6aed88a8428072e3c" shape="plaintext"];
  "sha256:56d42b421382efdfd2b25f09a233cfe22a9e76f8fc81ed18b78322c00552c36e" -> "sha256:f38d7de915afd6297e81d2d950d0dbbd04299d5dc8b89e23253c50ccfbe78d4e" [label=""];
  "sha256:f38d7de915afd6297e81d2d950d0dbbd04299d5dc8b89e23253c50ccfbe78d4e" -> "sha256:1d7ecba791f9899ad7e4a08a353c00f5bf9212dc1c4bae9ab385fc5bdcb343e4" [label=""];
  "sha256:ff7ee8ec6a7dc8fdb9e999adb25a678d1b12de7d492e2b7613e9eb40c7f84f61" -> "sha256:1d7ecba791f9899ad7e4a08a353c00f5bf9212dc1c4bae9ab385fc5bdcb343e4" [label=""];
  "sha256:1d7ecba791f9899ad7e4a08a353c00f5bf9212dc1c4bae9ab385fc5bdcb343e4" -> "sha256:11f9add38b56e8e3a5f11f4c8198d06eb43cc0021db8b7a6aed88a8428072e3c" [label=""];
}

