[app/sources/162329852.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:4e3ba82062cd5b938611d0d15592f40565c517b4de511b1f711f6c9c72885be0" [label="/bin/sh -c apk --no-cache add ca-certificates wget device-mapper findutils &&     apk --no-cache add zfs --repository http://dl-3.alpinelinux.org/alpine/edge/main/ &&     apk --no-cache add thin-provisioning-tools --repository http://dl-3.alpinelinux.org/alpine/edge/main/ &&     wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub &&     wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk &&     wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk &&     apk add glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk &&     /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib &&     echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:835d047fd5bbd40860309daa0c99326b76fd8403f555e5af3b75a9503981c8e1" [label="local://context" shape="ellipse"];
  "sha256:72eb55189328531839a46e0e5170e64f42637e54c88c757c9b4a768aa5284e7a" [label="copy{src=/cadvisor, dest=/usr/bin/cadvisor}" shape="note"];
  "sha256:025bf81c8eee476b8730201fa44739c9faf3a2d7881c1efd3511042286063f3a" [label="sha256:025bf81c8eee476b8730201fa44739c9faf3a2d7881c1efd3511042286063f3a" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4e3ba82062cd5b938611d0d15592f40565c517b4de511b1f711f6c9c72885be0" [label=""];
  "sha256:4e3ba82062cd5b938611d0d15592f40565c517b4de511b1f711f6c9c72885be0" -> "sha256:72eb55189328531839a46e0e5170e64f42637e54c88c757c9b4a768aa5284e7a" [label=""];
  "sha256:835d047fd5bbd40860309daa0c99326b76fd8403f555e5af3b75a9503981c8e1" -> "sha256:72eb55189328531839a46e0e5170e64f42637e54c88c757c9b4a768aa5284e7a" [label=""];
  "sha256:72eb55189328531839a46e0e5170e64f42637e54c88c757c9b4a768aa5284e7a" -> "sha256:025bf81c8eee476b8730201fa44739c9faf3a2d7881c1efd3511042286063f3a" [label=""];
}

