[app/sources/334167401.Dockerfile]
digraph {
  "sha256:8ad96a71d84984109a70d3b416f9ceab1649c6062df486b3af36b4a9b216951b" [label="docker-image://docker.io/library/python:3.7.3-alpine3.8" shape="ellipse"];
  "sha256:eca1fac608a228cd92dc566af6b773aa650d4f3a1e40e738b01459f35d9002d4" [label="/bin/sh -c apk update &&     apk add --no-cache         autoconf         bash         build-base         clang         clang-dev         cmake         coreutils         gcc         gettext-dev         git         icu-dev         iputils         krb5-dev         libtool         libunwind-dev         libffi         libffi-dev         linux-headers         llvm         make         openssl         openssl-dev         paxctl         py-cffi         sudo         tzdata         util-linux-dev         wget         zlib-dev &&     apk -X http://dl-cdn.alpinelinux.org/alpine/edge/main add --no-cache         userspace-rcu-dev         lttng-ust-dev         numactl-dev" shape="box"];
  "sha256:27a313059a360f51663b975eece308cbaf931b8cb723b800e48c0477b1fb2c13" [label="/bin/sh -c ln -sf /usr/bin/python3 /usr/bin/python &&     python -m pip install --upgrade pip==19.1 &&     python -m pip install                   applicationinsights==0.11.7                   certifi==2018.11.29                   cryptography==2.5                   docker==3.6.0                   ndg-httpsclient==0.5.1                    psutil==5.4.8                   pyasn1==0.4.5                   pyopenssl==18.0.0                   requests==2.21.0                   six==1.12.0                   virtualenv==16.2.0" shape="box"];
  "sha256:b4a0f8953bd91f828f2e1a60eaa692e8d0e80f94a8073848be3b0bbc91edacde" [label="/bin/sh -c /usr/sbin/adduser -D -g '' -G adm -s /bin/bash -u 1000 helixbot &&     chmod 755 /root &&     echo \"helixbot ALL=(ALL)       NOPASSWD: ALL\" > /etc/sudoers.d/helixbot" shape="box"];
  "sha256:701835aff6ce9fd659842ecc4a371b8139c05d12391cf6384d4302b75ea0b778" [label="sha256:701835aff6ce9fd659842ecc4a371b8139c05d12391cf6384d4302b75ea0b778" shape="plaintext"];
  "sha256:8ad96a71d84984109a70d3b416f9ceab1649c6062df486b3af36b4a9b216951b" -> "sha256:eca1fac608a228cd92dc566af6b773aa650d4f3a1e40e738b01459f35d9002d4" [label=""];
  "sha256:eca1fac608a228cd92dc566af6b773aa650d4f3a1e40e738b01459f35d9002d4" -> "sha256:27a313059a360f51663b975eece308cbaf931b8cb723b800e48c0477b1fb2c13" [label=""];
  "sha256:27a313059a360f51663b975eece308cbaf931b8cb723b800e48c0477b1fb2c13" -> "sha256:b4a0f8953bd91f828f2e1a60eaa692e8d0e80f94a8073848be3b0bbc91edacde" [label=""];
  "sha256:b4a0f8953bd91f828f2e1a60eaa692e8d0e80f94a8073848be3b0bbc91edacde" -> "sha256:701835aff6ce9fd659842ecc4a371b8139c05d12391cf6384d4302b75ea0b778" [label=""];
}

