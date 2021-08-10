[app/sources/246055185.Dockerfile]
digraph {
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" [label="docker-image://docker.io/library/golang:1.12.6" shape="ellipse"];
  "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:3e7547880622c7712e97db7401c5bc19266ea62d79f6e959a4b9977daf060201" [label="local://context" shape="ellipse"];
  "sha256:4dfb46668e1f9ab62baeaef4a84ce591e9fa2bb1fa505342b32450996bdeb03a" [label="copy{src=/main.go, dest=/go/src/app/},copy{src=/go.mod, dest=/go/src/app/}" shape="note"];
  "sha256:988efca678bf3b243d296c7254132c5552e3b0467dc4d3a140ffea225a428fa3" [label="/bin/sh -c go build ." shape="box"];
  "sha256:3c3173944c19d6317f5402ad2703e98418fff0cd71a63e51fac9e6aebddbee16" [label="sha256:3c3173944c19d6317f5402ad2703e98418fff0cd71a63e51fac9e6aebddbee16" shape="plaintext"];
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" -> "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" [label=""];
  "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" -> "sha256:4dfb46668e1f9ab62baeaef4a84ce591e9fa2bb1fa505342b32450996bdeb03a" [label=""];
  "sha256:3e7547880622c7712e97db7401c5bc19266ea62d79f6e959a4b9977daf060201" -> "sha256:4dfb46668e1f9ab62baeaef4a84ce591e9fa2bb1fa505342b32450996bdeb03a" [label=""];
  "sha256:4dfb46668e1f9ab62baeaef4a84ce591e9fa2bb1fa505342b32450996bdeb03a" -> "sha256:988efca678bf3b243d296c7254132c5552e3b0467dc4d3a140ffea225a428fa3" [label=""];
  "sha256:988efca678bf3b243d296c7254132c5552e3b0467dc4d3a140ffea225a428fa3" -> "sha256:3c3173944c19d6317f5402ad2703e98418fff0cd71a63e51fac9e6aebddbee16" [label=""];
}

