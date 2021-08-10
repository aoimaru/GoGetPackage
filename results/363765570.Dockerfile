[app/sources/363765570.Dockerfile]
digraph {
  "sha256:cf869ee167ecbe5fd1aba8c189091660a7783e76a9ba07d46ea67ecf1bc78b99" [label="docker-image://docker.io/webdevops/nginx:ubuntu-14.04@sha256:5a7d3bb306dd5a29952568044dd8bd6e510d559f660bdad6c0973ef82ccdd26b" shape="ellipse"];
  "sha256:b1777e9835428e64e51f7d6ac62e28158c2099bcd1a640131abca1830d24a80a" [label="local://context" shape="ellipse"];
  "sha256:0c7ad6250dcdbe6a139f1fe4f6842b5f87bf41aaec7cf37260dd0c68d1209bda" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e338faf99e7332adc921b307456af22854de0d01323bc8dd581b79b26d457236" [label="sha256:e338faf99e7332adc921b307456af22854de0d01323bc8dd581b79b26d457236" shape="plaintext"];
  "sha256:cf869ee167ecbe5fd1aba8c189091660a7783e76a9ba07d46ea67ecf1bc78b99" -> "sha256:0c7ad6250dcdbe6a139f1fe4f6842b5f87bf41aaec7cf37260dd0c68d1209bda" [label=""];
  "sha256:b1777e9835428e64e51f7d6ac62e28158c2099bcd1a640131abca1830d24a80a" -> "sha256:0c7ad6250dcdbe6a139f1fe4f6842b5f87bf41aaec7cf37260dd0c68d1209bda" [label=""];
  "sha256:0c7ad6250dcdbe6a139f1fe4f6842b5f87bf41aaec7cf37260dd0c68d1209bda" -> "sha256:e338faf99e7332adc921b307456af22854de0d01323bc8dd581b79b26d457236" [label=""];
}

