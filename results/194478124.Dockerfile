[app/sources/194478124.Dockerfile]
digraph {
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" [label="local://context" shape="ellipse"];
  "sha256:cfe2ba4f31594857fbdd1bef2b1c032348dbff29458af884e7bb13973717f9cf" [label="docker-image://docker.io/library/ruby:2.0@sha256:a3cc103e649a722f84989d4d7f411a66daa0854adcdadb55d15c6f5ebc60c55a" shape="ellipse"];
  "sha256:86b76a17b9487dad9721b18fd890ced484ca1e1e395020881d808efad6b63af3" [label="/bin/sh -c apt-get update && apt-get install -y dnsmasq" shape="box"];
  "sha256:4c931d8b2948f3f81c948d348b964e9573f06c81464a98a001edaa891b5d7a9f" [label="copy{src=/pxelinux.0, dest=/pxe/}" shape="note"];
  "sha256:34148b66f1dc7b76ad7c4d9cf777f2b5760da9f4a26f67af416e72a19077934b" [label="copy{src=/images, dest=/pxe/images}" shape="note"];
  "sha256:f5b8cb32bd5efa718e85d876f7c7739745e20442defe17b71a7ae7e154fc045d" [label="copy{src=/cfg, dest=/pxe/cfg}" shape="note"];
  "sha256:9454fde1fd0765a15d9bf7ea8102984c339755a542dbeb8e9bbe8cd675ee04ba" [label="copy{src=/pxelinux.cfg, dest=/pxe/pxelinux.cfg}" shape="note"];
  "sha256:5650e2dca24c746b3cfbe436f9eec838ff8deeb867458c9d70315f3a324b4d01" [label="copy{src=/syslinux, dest=/pxe/syslinux}" shape="note"];
  "sha256:f75d73fbe0d0d023d4cb4484a30756dfd582486503af0190b0f89edac0ec1a34" [label="/bin/sh -c ln -s /pxe/images /images &&     ln -s /pxe/cfg /cfg" shape="box"];
  "sha256:c62b200e06e607e88c6280907403a4f26d080e443dfb6faf9e92ab4cc61e076e" [label="/bin/sh -c chown nobody:www-data -R /pxe" shape="box"];
  "sha256:913415c4edef035ede43e6834c50b7c105a7b73186913fddfe93aad271cef41f" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:4fe8192585eb6ba8f43187e4895f3486fe7b655d31dbe1a3c72c2331921c069e" [label="sha256:4fe8192585eb6ba8f43187e4895f3486fe7b655d31dbe1a3c72c2331921c069e" shape="plaintext"];
  "sha256:cfe2ba4f31594857fbdd1bef2b1c032348dbff29458af884e7bb13973717f9cf" -> "sha256:86b76a17b9487dad9721b18fd890ced484ca1e1e395020881d808efad6b63af3" [label=""];
  "sha256:86b76a17b9487dad9721b18fd890ced484ca1e1e395020881d808efad6b63af3" -> "sha256:4c931d8b2948f3f81c948d348b964e9573f06c81464a98a001edaa891b5d7a9f" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:4c931d8b2948f3f81c948d348b964e9573f06c81464a98a001edaa891b5d7a9f" [label=""];
  "sha256:4c931d8b2948f3f81c948d348b964e9573f06c81464a98a001edaa891b5d7a9f" -> "sha256:34148b66f1dc7b76ad7c4d9cf777f2b5760da9f4a26f67af416e72a19077934b" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:34148b66f1dc7b76ad7c4d9cf777f2b5760da9f4a26f67af416e72a19077934b" [label=""];
  "sha256:34148b66f1dc7b76ad7c4d9cf777f2b5760da9f4a26f67af416e72a19077934b" -> "sha256:f5b8cb32bd5efa718e85d876f7c7739745e20442defe17b71a7ae7e154fc045d" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:f5b8cb32bd5efa718e85d876f7c7739745e20442defe17b71a7ae7e154fc045d" [label=""];
  "sha256:f5b8cb32bd5efa718e85d876f7c7739745e20442defe17b71a7ae7e154fc045d" -> "sha256:9454fde1fd0765a15d9bf7ea8102984c339755a542dbeb8e9bbe8cd675ee04ba" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:9454fde1fd0765a15d9bf7ea8102984c339755a542dbeb8e9bbe8cd675ee04ba" [label=""];
  "sha256:9454fde1fd0765a15d9bf7ea8102984c339755a542dbeb8e9bbe8cd675ee04ba" -> "sha256:5650e2dca24c746b3cfbe436f9eec838ff8deeb867458c9d70315f3a324b4d01" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:5650e2dca24c746b3cfbe436f9eec838ff8deeb867458c9d70315f3a324b4d01" [label=""];
  "sha256:5650e2dca24c746b3cfbe436f9eec838ff8deeb867458c9d70315f3a324b4d01" -> "sha256:f75d73fbe0d0d023d4cb4484a30756dfd582486503af0190b0f89edac0ec1a34" [label=""];
  "sha256:f75d73fbe0d0d023d4cb4484a30756dfd582486503af0190b0f89edac0ec1a34" -> "sha256:c62b200e06e607e88c6280907403a4f26d080e443dfb6faf9e92ab4cc61e076e" [label=""];
  "sha256:c62b200e06e607e88c6280907403a4f26d080e443dfb6faf9e92ab4cc61e076e" -> "sha256:913415c4edef035ede43e6834c50b7c105a7b73186913fddfe93aad271cef41f" [label=""];
  "sha256:4e3973a6a7055ee6042086bf94c18948751dfc180fb58b31abaeb064588e88b2" -> "sha256:913415c4edef035ede43e6834c50b7c105a7b73186913fddfe93aad271cef41f" [label=""];
  "sha256:913415c4edef035ede43e6834c50b7c105a7b73186913fddfe93aad271cef41f" -> "sha256:4fe8192585eb6ba8f43187e4895f3486fe7b655d31dbe1a3c72c2331921c069e" [label=""];
}

