[app/sources/289238232.Dockerfile]
digraph {
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" [label="docker-image://docker.io/library/mysql:5.6" shape="ellipse"];
  "sha256:13b8bebe23c0e9e36840e85e29fa90638d6cd9f33b08bddcfaa5d9c9ee25fcea" [label="/bin/sh -c groupadd -g 1000 oracle &&     mkdir -p /u01 &&     chmod a+xr /u01 &&     useradd -b /u01 -d /u01/oracle -g 1000 -u 1000 -m -s /bin/bash oracle &&     chown oracle:oracle -R /u01" shape="box"];
  "sha256:9cbbac79e689a18a34e940503b78df3f683dec5b7e32682cd6978c233a0fca4c" [label="sha256:9cbbac79e689a18a34e940503b78df3f683dec5b7e32682cd6978c233a0fca4c" shape="plaintext"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" -> "sha256:13b8bebe23c0e9e36840e85e29fa90638d6cd9f33b08bddcfaa5d9c9ee25fcea" [label=""];
  "sha256:13b8bebe23c0e9e36840e85e29fa90638d6cd9f33b08bddcfaa5d9c9ee25fcea" -> "sha256:9cbbac79e689a18a34e940503b78df3f683dec5b7e32682cd6978c233a0fca4c" [label=""];
}

