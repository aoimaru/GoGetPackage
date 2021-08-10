[app/sources/448373321.Dockerfile]
digraph {
  "sha256:9f5b2a5c351cc84a36e8f3a8ed53d07058eb826a1280d189651f63ecd3dbd238" [label="docker-image://docker.io/neerav/alpine:latest" shape="ellipse"];
  "sha256:a0d74effa7569007446a282397842e7a966c952efe8ef229b9a0669e2c16efbe" [label="/bin/sh -c apk add --update openssh nginx openssl pwgen &&    ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa &&    sed -i \"s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g\" /etc/ssh/sshd_config &&    sed -i \"s/UsePAM.*/UsePAM yes/g\" /etc/ssh/sshd_config &&    sed -i \"s/PermitRootLogin.*/PermitRootLogin yes/g\" /etc/ssh/sshd_config &&    sed -i \"s/#AuthorizedKeysFile/AuthorizedKeysFile/g\" /etc/ssh/sshd_config && mkdir /root/.ssh &&    apk upgrade && wget https://github.com/neeravkumar.keys -O /root/.ssh/authorized_keys &&    mkdir -p /tmp/nginx/client-body /usr/share/nginx/html /usr/share/nginx/log &&    rm -rf /var/cache/apk/* &&    touch /usr/share/nginx/log/access.log /usr/share/nginx/log/error.log" shape="box"];
  "sha256:5b81da41f60eee412314ce36c67886dd0ae104f246847eeee5216f8eeb178676" [label="local://context" shape="ellipse"];
  "sha256:8fe55b288ecc935efa76ec5b7229fee648f350f06b32356d89a1359842367b05" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:0b9a9f18c39ec920c951ead9bd6df0d4d8d021052c9bcde2e0793b53c8117bac" [label="sha256:0b9a9f18c39ec920c951ead9bd6df0d4d8d021052c9bcde2e0793b53c8117bac" shape="plaintext"];
  "sha256:9f5b2a5c351cc84a36e8f3a8ed53d07058eb826a1280d189651f63ecd3dbd238" -> "sha256:a0d74effa7569007446a282397842e7a966c952efe8ef229b9a0669e2c16efbe" [label=""];
  "sha256:a0d74effa7569007446a282397842e7a966c952efe8ef229b9a0669e2c16efbe" -> "sha256:8fe55b288ecc935efa76ec5b7229fee648f350f06b32356d89a1359842367b05" [label=""];
  "sha256:5b81da41f60eee412314ce36c67886dd0ae104f246847eeee5216f8eeb178676" -> "sha256:8fe55b288ecc935efa76ec5b7229fee648f350f06b32356d89a1359842367b05" [label=""];
  "sha256:8fe55b288ecc935efa76ec5b7229fee648f350f06b32356d89a1359842367b05" -> "sha256:0b9a9f18c39ec920c951ead9bd6df0d4d8d021052c9bcde2e0793b53c8117bac" [label=""];
}

