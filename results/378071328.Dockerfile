[app/sources/378071328.Dockerfile]
digraph {
  "sha256:58880c2b9d99e6bc1597919548c2fe2c5630b2b6f80d00916e822f3990ea2f2d" [label="local://context" shape="ellipse"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:04b9af2aaf0159fa609dc9fa294725951e19750b3f0afc920f641c50b90407d4" [label="/bin/sh -c apt-get -qy update && apt-get -qy install vim-common gcc mercurial bzr supervisor" shape="box"];
  "sha256:d9e4950278b8670ecc6c4327575fa53a0a4712c2a327452dcc0ebd57c98b1e1b" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:d3d1da424166c80df115ff722c20d6ce623852172283695c71d19a713be17f0d" [label="/bin/sh -c mkdir -p /etc/mqtt-proxy" shape="box"];
  "sha256:c12b04c5df212d2da3b1a2bd365ad994ae88dbde5f3fea58658015031df50bc8" [label="copy{src=/etc/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:acbb840bdfe487dc79baa4cdd9f68216ceddc809269a7124643b99cb0d751d00" [label="copy{src=/etc/example.config.toml, dest=/etc/mqtt-proxy/config.toml}" shape="note"];
  "sha256:79baa0e30c00aca2ea438e23bdb22b785d34039f0c6d6138b87ad5a7c61f4583" [label="copy{src=/build/mqtt-proxy, dest=/app/}" shape="note"];
  "sha256:224a727712d0975456b581e2763512cb82508facf3be34033983392fd30b6901" [label="mkdir{path=/app}" shape="note"];
  "sha256:a2037a9a2064a648a0bfaa1d42ae96ca497cd8a6aeee6dbd78495ede8813aecc" [label="sha256:a2037a9a2064a648a0bfaa1d42ae96ca497cd8a6aeee6dbd78495ede8813aecc" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:04b9af2aaf0159fa609dc9fa294725951e19750b3f0afc920f641c50b90407d4" [label=""];
  "sha256:04b9af2aaf0159fa609dc9fa294725951e19750b3f0afc920f641c50b90407d4" -> "sha256:d9e4950278b8670ecc6c4327575fa53a0a4712c2a327452dcc0ebd57c98b1e1b" [label=""];
  "sha256:d9e4950278b8670ecc6c4327575fa53a0a4712c2a327452dcc0ebd57c98b1e1b" -> "sha256:d3d1da424166c80df115ff722c20d6ce623852172283695c71d19a713be17f0d" [label=""];
  "sha256:d3d1da424166c80df115ff722c20d6ce623852172283695c71d19a713be17f0d" -> "sha256:c12b04c5df212d2da3b1a2bd365ad994ae88dbde5f3fea58658015031df50bc8" [label=""];
  "sha256:58880c2b9d99e6bc1597919548c2fe2c5630b2b6f80d00916e822f3990ea2f2d" -> "sha256:c12b04c5df212d2da3b1a2bd365ad994ae88dbde5f3fea58658015031df50bc8" [label=""];
  "sha256:c12b04c5df212d2da3b1a2bd365ad994ae88dbde5f3fea58658015031df50bc8" -> "sha256:acbb840bdfe487dc79baa4cdd9f68216ceddc809269a7124643b99cb0d751d00" [label=""];
  "sha256:58880c2b9d99e6bc1597919548c2fe2c5630b2b6f80d00916e822f3990ea2f2d" -> "sha256:acbb840bdfe487dc79baa4cdd9f68216ceddc809269a7124643b99cb0d751d00" [label=""];
  "sha256:acbb840bdfe487dc79baa4cdd9f68216ceddc809269a7124643b99cb0d751d00" -> "sha256:79baa0e30c00aca2ea438e23bdb22b785d34039f0c6d6138b87ad5a7c61f4583" [label=""];
  "sha256:58880c2b9d99e6bc1597919548c2fe2c5630b2b6f80d00916e822f3990ea2f2d" -> "sha256:79baa0e30c00aca2ea438e23bdb22b785d34039f0c6d6138b87ad5a7c61f4583" [label=""];
  "sha256:79baa0e30c00aca2ea438e23bdb22b785d34039f0c6d6138b87ad5a7c61f4583" -> "sha256:224a727712d0975456b581e2763512cb82508facf3be34033983392fd30b6901" [label=""];
  "sha256:224a727712d0975456b581e2763512cb82508facf3be34033983392fd30b6901" -> "sha256:a2037a9a2064a648a0bfaa1d42ae96ca497cd8a6aeee6dbd78495ede8813aecc" [label=""];
}

