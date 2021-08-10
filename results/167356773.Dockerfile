[app/sources/167356773.Dockerfile]
digraph {
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" [label="docker-image://docker.io/jenkins/jenkins:lts@sha256:abcd55c9f19c85808124a4d82e3412719cd5c511c03ebd7d4210e9fa9e8f1029" shape="ellipse"];
  "sha256:056d6350ad3c4c11271b251655e18cbcc050063f2e8ae1a89bf27ef7fc1469c1" [label="/bin/sh -c /usr/local/bin/install-plugins.sh cloudbees-folder ssh-slaves credentials ssh-credentials docker-commons" shape="box"];
  "sha256:c3a9f4160e13b6d6a4e58a9283cf64a9631accf62f1626868d5e630553ecab78" [label="sha256:c3a9f4160e13b6d6a4e58a9283cf64a9631accf62f1626868d5e630553ecab78" shape="plaintext"];
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" -> "sha256:056d6350ad3c4c11271b251655e18cbcc050063f2e8ae1a89bf27ef7fc1469c1" [label=""];
  "sha256:056d6350ad3c4c11271b251655e18cbcc050063f2e8ae1a89bf27ef7fc1469c1" -> "sha256:c3a9f4160e13b6d6a4e58a9283cf64a9631accf62f1626868d5e630553ecab78" [label=""];
}

