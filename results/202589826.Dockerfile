[app/sources/202589826.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:d05047321b5793e30248b78e40a0d64c0d4f692a8af1ec527500c78b55bbce49" [label="/bin/sh -c apk update  && apk add ca-certificates wget git  && update-ca-certificates  && mkdir -p /root/.postmanerator/themes  && cd /root/.postmanerator/themes  && if [ \"${verify_ssl}\" = \"n\" ];     then git config --global http.sslVerify \"false\";     fi  && git clone https://github.com/aubm/postmanerator-default-theme.git default  && git clone https://github.com/zanaca/postmanerator-hu-theme.git hu  && git clone https://github.com/aubm/postmanerator-markdown-theme.git markdown  && cd /usr/bin/  && if [ \"${verify_ssl}\" = \"n\" ];     then wget -O postmanerator https://github.com/aubm/postmanerator/releases/download/v0.8.0/postmanerator_linux_386 --no-check-certificate;     else wget -O postmanerator https://github.com/aubm/postmanerator/releases/download/v0.8.0/postmanerator_linux_386;     fi  && chmod +x postmanerator" shape="box"];
  "sha256:5c44550d999cb152775678c9390a06f21f95b06812ae1010ea0342742637777d" [label="sha256:5c44550d999cb152775678c9390a06f21f95b06812ae1010ea0342742637777d" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:d05047321b5793e30248b78e40a0d64c0d4f692a8af1ec527500c78b55bbce49" [label=""];
  "sha256:d05047321b5793e30248b78e40a0d64c0d4f692a8af1ec527500c78b55bbce49" -> "sha256:5c44550d999cb152775678c9390a06f21f95b06812ae1010ea0342742637777d" [label=""];
}

