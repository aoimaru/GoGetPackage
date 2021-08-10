[app/sources/431482010.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:4bac54d66b7227d3ba4553291629e0b3f791ea248309139eb5329f74a26f9bd5" [label="/bin/sh -c dnf -y update &&     dnf -y install firefox                    xorg-x11-twm                    tigervnc-server                    xterm xulrunner                    dejavu-sans-fonts                     dejavu-serif-fonts                    xdotool &&     dnf clean all" shape="box"];
  "sha256:af983d2463f38aea9b6e4a9f7027237a13187aac3de97f7000794d1cddeaf597" [label="/bin/sh -c mkdir /root/.vnc" shape="box"];
  "sha256:6942b10421b0bec5ee8d7a30cae453593edaf208aece3edff74ccf06ba932471" [label="local://context" shape="ellipse"];
  "sha256:8b77c3f22a7acd0e234f6bf62d067484c59338966f4bfdfd0b5761b783c7a543" [label="copy{src=/xstartup, dest=/root/.vnc/}" shape="note"];
  "sha256:98305a42fcbb0adcc70a3d20567e15455f564b81f181f6a16482af18f7b98fcc" [label="/bin/sh -c chmod -v +x /root/.vnc/xstartup" shape="box"];
  "sha256:021e827143d6c10b2dcbb755f96c364cda08a01c6c711f491ef783aa71c10137" [label="/bin/sh -c echo 123456 | vncpasswd -f > /root/.vnc/passwd" shape="box"];
  "sha256:1cf679644911be390269dc663ad713f87929d2de6bde2ce47314c9d1c8fb7ec9" [label="/bin/sh -c chmod -v 600 /root/.vnc/passwd" shape="box"];
  "sha256:b0a190b4c0b5d703105bc8fa5247e354c26e3c80fa685049a80d870a0ee5db97" [label="/bin/sh -c sed -i '/\\/etc\\/X11\\/xinit\\/xinitrc-common/a [ -x /usr/bin/firefox ] && /usr/bin/firefox &' /etc/X11/xinit/xinitrc" shape="box"];
  "sha256:c0a39673f04262cd9d8c779d19042ccb7a73afc3c4e362132e60342d2d0e46c1" [label="sha256:c0a39673f04262cd9d8c779d19042ccb7a73afc3c4e362132e60342d2d0e46c1" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:4bac54d66b7227d3ba4553291629e0b3f791ea248309139eb5329f74a26f9bd5" [label=""];
  "sha256:4bac54d66b7227d3ba4553291629e0b3f791ea248309139eb5329f74a26f9bd5" -> "sha256:af983d2463f38aea9b6e4a9f7027237a13187aac3de97f7000794d1cddeaf597" [label=""];
  "sha256:af983d2463f38aea9b6e4a9f7027237a13187aac3de97f7000794d1cddeaf597" -> "sha256:8b77c3f22a7acd0e234f6bf62d067484c59338966f4bfdfd0b5761b783c7a543" [label=""];
  "sha256:6942b10421b0bec5ee8d7a30cae453593edaf208aece3edff74ccf06ba932471" -> "sha256:8b77c3f22a7acd0e234f6bf62d067484c59338966f4bfdfd0b5761b783c7a543" [label=""];
  "sha256:8b77c3f22a7acd0e234f6bf62d067484c59338966f4bfdfd0b5761b783c7a543" -> "sha256:98305a42fcbb0adcc70a3d20567e15455f564b81f181f6a16482af18f7b98fcc" [label=""];
  "sha256:98305a42fcbb0adcc70a3d20567e15455f564b81f181f6a16482af18f7b98fcc" -> "sha256:021e827143d6c10b2dcbb755f96c364cda08a01c6c711f491ef783aa71c10137" [label=""];
  "sha256:021e827143d6c10b2dcbb755f96c364cda08a01c6c711f491ef783aa71c10137" -> "sha256:1cf679644911be390269dc663ad713f87929d2de6bde2ce47314c9d1c8fb7ec9" [label=""];
  "sha256:1cf679644911be390269dc663ad713f87929d2de6bde2ce47314c9d1c8fb7ec9" -> "sha256:b0a190b4c0b5d703105bc8fa5247e354c26e3c80fa685049a80d870a0ee5db97" [label=""];
  "sha256:b0a190b4c0b5d703105bc8fa5247e354c26e3c80fa685049a80d870a0ee5db97" -> "sha256:c0a39673f04262cd9d8c779d19042ccb7a73afc3c4e362132e60342d2d0e46c1" [label=""];
}

