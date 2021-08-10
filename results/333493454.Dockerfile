[app/sources/333493454.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:a1dbf26f80677ee046063a9a742054fa99b566b81c8491b98e33a229c9c529a3" [label="/bin/sh -c apk -U upgrade  && apk add -t build-dependencies     python3-dev     libffi-dev     build-base  && apk add     python3     sqlite     openssl     ca-certificates     su-exec     tini  && pip3 install --no-cache \"isso==${ISSO_VER}\"  && apk del build-dependencies  && rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:8bbdc3f85d0f20639240de49923e7e284633128ae57067a608773b4e4e887fb9" [label="local://context" shape="ellipse"];
  "sha256:dc30d5976b0ba601de3732741f8a59df1ee780c846f153edd1af87fd81b9ee20" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:c6f4074f7934942f9d4912e8e45d59c1acb2c287145f12b4d873e698d2b106f1" [label="/bin/sh -c chmod +x /usr/local/bin/run.sh" shape="box"];
  "sha256:cac2458feae850d985469dae77c7127cd47df82d9ea7a7a3acbe88e63b095abd" [label="sha256:cac2458feae850d985469dae77c7127cd47df82d9ea7a7a3acbe88e63b095abd" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:a1dbf26f80677ee046063a9a742054fa99b566b81c8491b98e33a229c9c529a3" [label=""];
  "sha256:a1dbf26f80677ee046063a9a742054fa99b566b81c8491b98e33a229c9c529a3" -> "sha256:dc30d5976b0ba601de3732741f8a59df1ee780c846f153edd1af87fd81b9ee20" [label=""];
  "sha256:8bbdc3f85d0f20639240de49923e7e284633128ae57067a608773b4e4e887fb9" -> "sha256:dc30d5976b0ba601de3732741f8a59df1ee780c846f153edd1af87fd81b9ee20" [label=""];
  "sha256:dc30d5976b0ba601de3732741f8a59df1ee780c846f153edd1af87fd81b9ee20" -> "sha256:c6f4074f7934942f9d4912e8e45d59c1acb2c287145f12b4d873e698d2b106f1" [label=""];
  "sha256:c6f4074f7934942f9d4912e8e45d59c1acb2c287145f12b4d873e698d2b106f1" -> "sha256:cac2458feae850d985469dae77c7127cd47df82d9ea7a7a3acbe88e63b095abd" [label=""];
}

