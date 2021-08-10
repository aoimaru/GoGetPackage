[app/sources/347128428.Dockerfile]
digraph {
  "sha256:76d9cae9771ce795337ce9637247e840656c084fb4afaa954fd42ae9b883cf61" [label="docker-image://docker.io/library/gradle:4.2-jdk8-alpine" shape="ellipse"];
  "sha256:d677fcd47739f259b0a14b72095ee9a8e6e307576e192fbcf2e562863629d213" [label="local://context" shape="ellipse"];
  "sha256:ee359c5eab15b7578bbd0231abe192ea79bd197c22c4f186ec4fa4c377100c56" [label="copy{src=/init-app.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:a463feee34216143342a26cf4042871549f333596a44373052e3aa78b21b18e1" [label="/bin/sh -c adduser -S -u 999 paradrop &&     mkdir -p /home/paradrop &&     chown paradrop /home/paradrop &&     mkdir -p /opt/paradrop/app &&     chown -R paradrop /opt/paradrop &&     chmod a+s /opt/paradrop" shape="box"];
  "sha256:bcea99fad0585fca49bda748a05e1f98b8a0d0f47bf382ece9ee6e26727f9c1a" [label="/bin/sh -c find / -perm +6000 -type f -exec chmod a-s {} \\; || true" shape="box"];
  "sha256:a4fe65de665cae503a6aaa310104ab36c73b775f323de76e2b219a28fde71bd5" [label="mkdir{path=/opt/paradrop/app}" shape="note"];
  "sha256:653acb67f41e818cdc5d697afda6d71ffb518f9b078645b2c92d1bfe0f9d55af" [label="sha256:653acb67f41e818cdc5d697afda6d71ffb518f9b078645b2c92d1bfe0f9d55af" shape="plaintext"];
  "sha256:76d9cae9771ce795337ce9637247e840656c084fb4afaa954fd42ae9b883cf61" -> "sha256:ee359c5eab15b7578bbd0231abe192ea79bd197c22c4f186ec4fa4c377100c56" [label=""];
  "sha256:d677fcd47739f259b0a14b72095ee9a8e6e307576e192fbcf2e562863629d213" -> "sha256:ee359c5eab15b7578bbd0231abe192ea79bd197c22c4f186ec4fa4c377100c56" [label=""];
  "sha256:ee359c5eab15b7578bbd0231abe192ea79bd197c22c4f186ec4fa4c377100c56" -> "sha256:a463feee34216143342a26cf4042871549f333596a44373052e3aa78b21b18e1" [label=""];
  "sha256:a463feee34216143342a26cf4042871549f333596a44373052e3aa78b21b18e1" -> "sha256:bcea99fad0585fca49bda748a05e1f98b8a0d0f47bf382ece9ee6e26727f9c1a" [label=""];
  "sha256:bcea99fad0585fca49bda748a05e1f98b8a0d0f47bf382ece9ee6e26727f9c1a" -> "sha256:a4fe65de665cae503a6aaa310104ab36c73b775f323de76e2b219a28fde71bd5" [label=""];
  "sha256:a4fe65de665cae503a6aaa310104ab36c73b775f323de76e2b219a28fde71bd5" -> "sha256:653acb67f41e818cdc5d697afda6d71ffb518f9b078645b2c92d1bfe0f9d55af" [label=""];
}

