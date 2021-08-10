[app/sources/353056144.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:1585ecde97f195df2823f8038675b6a27f76b18cc8314a425254b74f08179e76" [label="/bin/sh -c yum -y update; yum -y install hostname iproute unzip xterm net-tools nc openssh-server wget bsdtar; yum clean all" shape="box"];
  "sha256:a427b7a73532b039e8b2092bf4f8c72f8c9c0bbfc89023a4c73b1a1a9148bdad" [label="/bin/sh -c mkdir -p $SOFTWARE_INSTALL_DIR" shape="box"];
  "sha256:47c04fe8fa07447234cfb0a2321904029aaa0f8f4a3f147bbf41e128c7dd56b0" [label="/bin/sh -c chmod -Rf a+w /dnsmasq.hosts/" shape="box"];
  "sha256:3b38b2abfdb34ba92541e53a0fdd44cb8ffeef15eb57a3dc4b662de5f2c666b1" [label="local://context" shape="ellipse"];
  "sha256:85fce93153193f385d2c83babf0db4120d18b1ecbe99d27e7ec15eb7c2e96de0" [label="copy{src=/support/*.sh, dest=/}" shape="note"];
  "sha256:8944b104b52720ca72cf2b262d8460d3e1a619c753c7cdb64fc18f27dbc1662a" [label="/bin/sh -c . /build_setup.sh" shape="box"];
  "sha256:4c59ff664ed578a1519d025622bd908e3e843d5c239d37619085ed3a455cc054" [label="sha256:4c59ff664ed578a1519d025622bd908e3e843d5c239d37619085ed3a455cc054" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:1585ecde97f195df2823f8038675b6a27f76b18cc8314a425254b74f08179e76" [label=""];
  "sha256:1585ecde97f195df2823f8038675b6a27f76b18cc8314a425254b74f08179e76" -> "sha256:a427b7a73532b039e8b2092bf4f8c72f8c9c0bbfc89023a4c73b1a1a9148bdad" [label=""];
  "sha256:a427b7a73532b039e8b2092bf4f8c72f8c9c0bbfc89023a4c73b1a1a9148bdad" -> "sha256:47c04fe8fa07447234cfb0a2321904029aaa0f8f4a3f147bbf41e128c7dd56b0" [label=""];
  "sha256:47c04fe8fa07447234cfb0a2321904029aaa0f8f4a3f147bbf41e128c7dd56b0" -> "sha256:85fce93153193f385d2c83babf0db4120d18b1ecbe99d27e7ec15eb7c2e96de0" [label=""];
  "sha256:3b38b2abfdb34ba92541e53a0fdd44cb8ffeef15eb57a3dc4b662de5f2c666b1" -> "sha256:85fce93153193f385d2c83babf0db4120d18b1ecbe99d27e7ec15eb7c2e96de0" [label=""];
  "sha256:85fce93153193f385d2c83babf0db4120d18b1ecbe99d27e7ec15eb7c2e96de0" -> "sha256:8944b104b52720ca72cf2b262d8460d3e1a619c753c7cdb64fc18f27dbc1662a" [label=""];
  "sha256:8944b104b52720ca72cf2b262d8460d3e1a619c753c7cdb64fc18f27dbc1662a" -> "sha256:4c59ff664ed578a1519d025622bd908e3e843d5c239d37619085ed3a455cc054" [label=""];
}

