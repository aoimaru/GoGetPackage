[app/sources/252783891.Dockerfile]
digraph {
  "sha256:4af95b5d7a410280f5fb048e5501c986ff8c376c90563d75f96ba7b1ab3dc000" [label="docker-image://docker.io/binocarlos/nodejs:latest" shape="ellipse"];
  "sha256:9f0575b8fec423330a458094995851b44bb392c0979c811519c10c2db418e01c" [label="local://context" shape="ellipse"];
  "sha256:66cacfc2700606d96ba490c4249c5b125822be258faa8c36fb55db5229dfe6bb" [label="copy{src=/, dest=/srv/app}" shape="note"];
  "sha256:bb37e44548636635eb5ba3fb9be0f234616bd4a161279e26ab38de925f852f23" [label="/bin/sh -c cd /srv/app && npm install" shape="box"];
  "sha256:8ef8b2ed8a2843feb9cf6863a44dc86c96564955bdbe0229a4d25719d3fcc1b5" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:31f6cd1ab0a0cf01f043f07edcc7445337cfd1f23bd7161056c011753a9d339a" [label="sha256:31f6cd1ab0a0cf01f043f07edcc7445337cfd1f23bd7161056c011753a9d339a" shape="plaintext"];
  "sha256:4af95b5d7a410280f5fb048e5501c986ff8c376c90563d75f96ba7b1ab3dc000" -> "sha256:66cacfc2700606d96ba490c4249c5b125822be258faa8c36fb55db5229dfe6bb" [label=""];
  "sha256:9f0575b8fec423330a458094995851b44bb392c0979c811519c10c2db418e01c" -> "sha256:66cacfc2700606d96ba490c4249c5b125822be258faa8c36fb55db5229dfe6bb" [label=""];
  "sha256:66cacfc2700606d96ba490c4249c5b125822be258faa8c36fb55db5229dfe6bb" -> "sha256:bb37e44548636635eb5ba3fb9be0f234616bd4a161279e26ab38de925f852f23" [label=""];
  "sha256:bb37e44548636635eb5ba3fb9be0f234616bd4a161279e26ab38de925f852f23" -> "sha256:8ef8b2ed8a2843feb9cf6863a44dc86c96564955bdbe0229a4d25719d3fcc1b5" [label=""];
  "sha256:8ef8b2ed8a2843feb9cf6863a44dc86c96564955bdbe0229a4d25719d3fcc1b5" -> "sha256:31f6cd1ab0a0cf01f043f07edcc7445337cfd1f23bd7161056c011753a9d339a" [label=""];
}

