[app/sources/162577140.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:6306428203aab349c380bec83e5b3a96e74bbaa1cd0b7ccca23e3d9a0f9cfab8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:25cddda1a87a78c9eb9f70f8bd5ce59757bf8f7a6fab51428027f1626a450e7c" [label="/bin/sh -c apt-get -y install sudo" shape="box"];
  "sha256:f6959af976987982909d171049303aaa672f35826487c446fa3305cbf7c1c882" [label="local://context" shape="ellipse"];
  "sha256:6db560b6fffe413529bd0aa764870c1f8423112813203bfd6def6a4e51b1aaf2" [label="copy{src=/, dest=/go/src/github.com/jwilder/docker-squash}" shape="note"];
  "sha256:072c54903c229d5e118f8737ca226272badc7ace3e7bb737e82521822f36dfdc" [label="/bin/sh -c go get github.com/jwilder/docker-squash" shape="box"];
  "sha256:73ec72015c5d7006de2463695ef3b86cc7231f8a9dd4691e003780c136fd13ec" [label="sha256:73ec72015c5d7006de2463695ef3b86cc7231f8a9dd4691e003780c136fd13ec" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:6306428203aab349c380bec83e5b3a96e74bbaa1cd0b7ccca23e3d9a0f9cfab8" [label=""];
  "sha256:6306428203aab349c380bec83e5b3a96e74bbaa1cd0b7ccca23e3d9a0f9cfab8" -> "sha256:25cddda1a87a78c9eb9f70f8bd5ce59757bf8f7a6fab51428027f1626a450e7c" [label=""];
  "sha256:25cddda1a87a78c9eb9f70f8bd5ce59757bf8f7a6fab51428027f1626a450e7c" -> "sha256:6db560b6fffe413529bd0aa764870c1f8423112813203bfd6def6a4e51b1aaf2" [label=""];
  "sha256:f6959af976987982909d171049303aaa672f35826487c446fa3305cbf7c1c882" -> "sha256:6db560b6fffe413529bd0aa764870c1f8423112813203bfd6def6a4e51b1aaf2" [label=""];
  "sha256:6db560b6fffe413529bd0aa764870c1f8423112813203bfd6def6a4e51b1aaf2" -> "sha256:072c54903c229d5e118f8737ca226272badc7ace3e7bb737e82521822f36dfdc" [label=""];
  "sha256:072c54903c229d5e118f8737ca226272badc7ace3e7bb737e82521822f36dfdc" -> "sha256:73ec72015c5d7006de2463695ef3b86cc7231f8a9dd4691e003780c136fd13ec" [label=""];
}

