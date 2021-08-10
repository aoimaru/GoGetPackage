[app/sources/252783023.Dockerfile]
digraph {
  "sha256:4a3bbb1d686349522ac3989cfda5a53f26e7ebfbf8e1f1d56e7df4a65e05fbdd" [label="docker-image://docker.io/lambci/lambda:build" shape="ellipse"];
  "sha256:f9fb45c8cc45bb8075b3c1d8fd6af428c43e8af036d008692685b0338e8d3fd5" [label="local://context" shape="ellipse"];
  "sha256:214d2cef3a09caba2b518e0bfc70f70d0c58ffb92ec38d61a0b8c699269a7f1d" [label="copy{src=/installDeps.sh, dest=/usr/bin/installDeps.sh}" shape="note"];
  "sha256:268cfb1f481b47e77c3316adfc83243ca86db6a70f569f7b53a9c656e9fe55d4" [label="mkdir{path=/dawson-dist}" shape="note"];
  "sha256:7f5b332dff1fb9cdaa565f071b274fb9b3117b4481303387bde20117db8b031b" [label="sha256:7f5b332dff1fb9cdaa565f071b274fb9b3117b4481303387bde20117db8b031b" shape="plaintext"];
  "sha256:4a3bbb1d686349522ac3989cfda5a53f26e7ebfbf8e1f1d56e7df4a65e05fbdd" -> "sha256:214d2cef3a09caba2b518e0bfc70f70d0c58ffb92ec38d61a0b8c699269a7f1d" [label=""];
  "sha256:f9fb45c8cc45bb8075b3c1d8fd6af428c43e8af036d008692685b0338e8d3fd5" -> "sha256:214d2cef3a09caba2b518e0bfc70f70d0c58ffb92ec38d61a0b8c699269a7f1d" [label=""];
  "sha256:214d2cef3a09caba2b518e0bfc70f70d0c58ffb92ec38d61a0b8c699269a7f1d" -> "sha256:268cfb1f481b47e77c3316adfc83243ca86db6a70f569f7b53a9c656e9fe55d4" [label=""];
  "sha256:268cfb1f481b47e77c3316adfc83243ca86db6a70f569f7b53a9c656e9fe55d4" -> "sha256:7f5b332dff1fb9cdaa565f071b274fb9b3117b4481303387bde20117db8b031b" [label=""];
}

