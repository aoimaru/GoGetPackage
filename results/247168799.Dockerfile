[app/sources/247168799.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:67b3f039437dba1466c44baf417f6b2603fae6a0afa2455837cd29c212ec8362" [label="/bin/sh -c apk --no-cache add     python2     py2-pip     python3     py3-pip     bash     git     openssh     curl     make     &&     pip2 --no-cache-dir install --upgrade twine wheel     &&     pip3 --no-cache-dir install --upgrade twine wheel" shape="box"];
  "sha256:a2f497afd045052d65a22e281efd27eb4b2db0cf85f8634ec9ceda7340d1fba6" [label="/bin/sh -c /bin/sh -c 'curl https://sdk.cloud.google.com | bash' &&     /root/google-cloud-sdk/bin/gcloud components install beta" shape="box"];
  "sha256:65c063c012e171ca481f91f3191331ad016739382e01d66f653f2f61ba98eeb0" [label="sha256:65c063c012e171ca481f91f3191331ad016739382e01d66f653f2f61ba98eeb0" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:67b3f039437dba1466c44baf417f6b2603fae6a0afa2455837cd29c212ec8362" [label=""];
  "sha256:67b3f039437dba1466c44baf417f6b2603fae6a0afa2455837cd29c212ec8362" -> "sha256:a2f497afd045052d65a22e281efd27eb4b2db0cf85f8634ec9ceda7340d1fba6" [label=""];
  "sha256:a2f497afd045052d65a22e281efd27eb4b2db0cf85f8634ec9ceda7340d1fba6" -> "sha256:65c063c012e171ca481f91f3191331ad016739382e01d66f653f2f61ba98eeb0" [label=""];
}

