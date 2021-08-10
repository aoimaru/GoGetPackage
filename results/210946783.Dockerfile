[app/sources/210946783.Dockerfile]
digraph {
  "sha256:cb4e280dc08de2efee8b96ab2ccb228f1a5402e4af9c034f8d6b0ecce7f82b2b" [label="docker-image://docker.io/openshift3/nodejs-010-rhel7:latest" shape="ellipse"];
  "sha256:402a44824ab0f3c1853acf436fb9258cd202e6f8f50b574d06cfda183d923aa1" [label="local://context" shape="ellipse"];
  "sha256:73ec2ef028c908a7e5a148a996fde3629481cee02b3e21026d7c78bd349b6116" [label="copy{src=/, dest=/opt/app-root/src}" shape="note"];
  "sha256:5091b3c23702672530dd33bc86d9744fc0de17323096164948f35000549ae074" [label="sha256:5091b3c23702672530dd33bc86d9744fc0de17323096164948f35000549ae074" shape="plaintext"];
  "sha256:cb4e280dc08de2efee8b96ab2ccb228f1a5402e4af9c034f8d6b0ecce7f82b2b" -> "sha256:73ec2ef028c908a7e5a148a996fde3629481cee02b3e21026d7c78bd349b6116" [label=""];
  "sha256:402a44824ab0f3c1853acf436fb9258cd202e6f8f50b574d06cfda183d923aa1" -> "sha256:73ec2ef028c908a7e5a148a996fde3629481cee02b3e21026d7c78bd349b6116" [label=""];
  "sha256:73ec2ef028c908a7e5a148a996fde3629481cee02b3e21026d7c78bd349b6116" -> "sha256:5091b3c23702672530dd33bc86d9744fc0de17323096164948f35000549ae074" [label=""];
}

