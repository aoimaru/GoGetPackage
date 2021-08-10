[app/sources/311757201.Dockerfile]
digraph {
  "sha256:ede8a3c7cb44d47374081f30732fa723a16dcfd1dafa578d2f52b0dc5234de68" [label="local://context" shape="ellipse"];
  "sha256:7e586dc72485c7cc26c07e9ebea81c1d9c2e33597f9c63319f2e90227e32e84a" [label="docker-image://docker.io/jlesage/baseimage-gui:ubuntu-16.04" shape="ellipse"];
  "sha256:f5f32693be3b9f5ea6bccb9084c268f9e2336748614fbb07069f67a51b7baaf3" [label="copy{src=/keycode-hack.c, dest=/keycode-hack.c}" shape="note"];
  "sha256:40bc033d34d8251efd4b0cdd2fe28dd0da6b26e7c03db6bb384e9c87c1737917" [label="/bin/sh -c apt-get update &&     apt-get install -y wget software-properties-common &&     add-apt-repository ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y openjdk-7-jdk gcc &&     gcc -o /keycode-hack.so /keycode-hack.c -shared -s -ldl -fPIC &&     apt-get remove -y gcc software-properties-common &&     apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/* &&     rm /keycode-hack.c" shape="box"];
  "sha256:a03acf1b7950ab015611128c674bd4b74719fecdf58a103533c6dcb8ae2f2e9c" [label="/bin/sh -c mkdir /app &&     chown ${USER_ID}:${GROUP_ID} /app" shape="box"];
  "sha256:50cbfa5d9d7a3f54c5cbf22933cc8d7ab66c5f662714de91f05f66e404e129f5" [label="copy{src=/startapp.sh, dest=/startapp.sh}" shape="note"];
  "sha256:9f118f10e3049d6b1bb73d06f760a69dd077dd1bec91fc274f85eb0df2f87f4d" [label="mkdir{path=/app}" shape="note"];
  "sha256:50dfd1e83fa059bd1bc8e3ef9f16feb0864b4d557f6572507a7ece43dc87d50c" [label="sha256:50dfd1e83fa059bd1bc8e3ef9f16feb0864b4d557f6572507a7ece43dc87d50c" shape="plaintext"];
  "sha256:7e586dc72485c7cc26c07e9ebea81c1d9c2e33597f9c63319f2e90227e32e84a" -> "sha256:f5f32693be3b9f5ea6bccb9084c268f9e2336748614fbb07069f67a51b7baaf3" [label=""];
  "sha256:ede8a3c7cb44d47374081f30732fa723a16dcfd1dafa578d2f52b0dc5234de68" -> "sha256:f5f32693be3b9f5ea6bccb9084c268f9e2336748614fbb07069f67a51b7baaf3" [label=""];
  "sha256:f5f32693be3b9f5ea6bccb9084c268f9e2336748614fbb07069f67a51b7baaf3" -> "sha256:40bc033d34d8251efd4b0cdd2fe28dd0da6b26e7c03db6bb384e9c87c1737917" [label=""];
  "sha256:40bc033d34d8251efd4b0cdd2fe28dd0da6b26e7c03db6bb384e9c87c1737917" -> "sha256:a03acf1b7950ab015611128c674bd4b74719fecdf58a103533c6dcb8ae2f2e9c" [label=""];
  "sha256:a03acf1b7950ab015611128c674bd4b74719fecdf58a103533c6dcb8ae2f2e9c" -> "sha256:50cbfa5d9d7a3f54c5cbf22933cc8d7ab66c5f662714de91f05f66e404e129f5" [label=""];
  "sha256:ede8a3c7cb44d47374081f30732fa723a16dcfd1dafa578d2f52b0dc5234de68" -> "sha256:50cbfa5d9d7a3f54c5cbf22933cc8d7ab66c5f662714de91f05f66e404e129f5" [label=""];
  "sha256:50cbfa5d9d7a3f54c5cbf22933cc8d7ab66c5f662714de91f05f66e404e129f5" -> "sha256:9f118f10e3049d6b1bb73d06f760a69dd077dd1bec91fc274f85eb0df2f87f4d" [label=""];
  "sha256:9f118f10e3049d6b1bb73d06f760a69dd077dd1bec91fc274f85eb0df2f87f4d" -> "sha256:50dfd1e83fa059bd1bc8e3ef9f16feb0864b4d557f6572507a7ece43dc87d50c" [label=""];
}

