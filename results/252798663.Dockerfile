[app/sources/252798663.Dockerfile]
digraph {
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" [label="local://context" shape="ellipse"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:8dca9690ccd7a3d2fec3531fa29ff1ada2639390ad032feb0ea25185fa8d3fa8" [label="copy{src=/.docker/install.sh, dest=/root/install.sh}" shape="note"];
  "sha256:83937c85150249c5d141cdae35777cb46dd35cc43f6227232c3284dbbea203e5" [label="/bin/sh -c /root/install.sh" shape="box"];
  "sha256:639690ecd7de1a94d4c9f5942b9349a41523c263d48045b93a8c49175b12b938" [label="copy{src=/.docker/config.sh, dest=/root/config.sh}" shape="note"];
  "sha256:276e23758c76f516c8e79c10c9de4c198b2093c3e8283eb8db663432b0b0ea97" [label="/bin/sh -c /root/config.sh" shape="box"];
  "sha256:5987710128c6ff5b3c03d2aba0e313310b5cdbfd9e3eeb3b4812f30f44c849a0" [label="copy{src=/.docker/loop.sh, dest=/root/loop.sh}" shape="note"];
  "sha256:56a1e1411b77d3252b9f3d263b9c8785fb0f798222e7ae1ee1e5d33894970081" [label="copy{src=/golafix, dest=/golafix}" shape="note"];
  "sha256:f0f02f7ce4a15041b2da14a840c159307b18502cc20bac299ee8f15bbf9ceb3a" [label="copy{src=/opt, dest=/opt}" shape="note"];
  "sha256:cc5ab26566a7a624563d9105104a6fd167a160ac6f127d2139379617a803d6ee" [label="copy{src=/.docker/post-install.sh, dest=/root/post-install.sh}" shape="note"];
  "sha256:df0de48314cd486893d89b1b78aa7dcae8bc887a55ba173c392d756e03a68886" [label="/bin/sh -c /root/post-install.sh" shape="box"];
  "sha256:dec70e4b44d6fa63b3fe87ba7c67b59048de6d4b8b96fae4c7a07fd7c2062170" [label="sha256:dec70e4b44d6fa63b3fe87ba7c67b59048de6d4b8b96fae4c7a07fd7c2062170" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:8dca9690ccd7a3d2fec3531fa29ff1ada2639390ad032feb0ea25185fa8d3fa8" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:8dca9690ccd7a3d2fec3531fa29ff1ada2639390ad032feb0ea25185fa8d3fa8" [label=""];
  "sha256:8dca9690ccd7a3d2fec3531fa29ff1ada2639390ad032feb0ea25185fa8d3fa8" -> "sha256:83937c85150249c5d141cdae35777cb46dd35cc43f6227232c3284dbbea203e5" [label=""];
  "sha256:83937c85150249c5d141cdae35777cb46dd35cc43f6227232c3284dbbea203e5" -> "sha256:639690ecd7de1a94d4c9f5942b9349a41523c263d48045b93a8c49175b12b938" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:639690ecd7de1a94d4c9f5942b9349a41523c263d48045b93a8c49175b12b938" [label=""];
  "sha256:639690ecd7de1a94d4c9f5942b9349a41523c263d48045b93a8c49175b12b938" -> "sha256:276e23758c76f516c8e79c10c9de4c198b2093c3e8283eb8db663432b0b0ea97" [label=""];
  "sha256:276e23758c76f516c8e79c10c9de4c198b2093c3e8283eb8db663432b0b0ea97" -> "sha256:5987710128c6ff5b3c03d2aba0e313310b5cdbfd9e3eeb3b4812f30f44c849a0" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:5987710128c6ff5b3c03d2aba0e313310b5cdbfd9e3eeb3b4812f30f44c849a0" [label=""];
  "sha256:5987710128c6ff5b3c03d2aba0e313310b5cdbfd9e3eeb3b4812f30f44c849a0" -> "sha256:56a1e1411b77d3252b9f3d263b9c8785fb0f798222e7ae1ee1e5d33894970081" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:56a1e1411b77d3252b9f3d263b9c8785fb0f798222e7ae1ee1e5d33894970081" [label=""];
  "sha256:56a1e1411b77d3252b9f3d263b9c8785fb0f798222e7ae1ee1e5d33894970081" -> "sha256:f0f02f7ce4a15041b2da14a840c159307b18502cc20bac299ee8f15bbf9ceb3a" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:f0f02f7ce4a15041b2da14a840c159307b18502cc20bac299ee8f15bbf9ceb3a" [label=""];
  "sha256:f0f02f7ce4a15041b2da14a840c159307b18502cc20bac299ee8f15bbf9ceb3a" -> "sha256:cc5ab26566a7a624563d9105104a6fd167a160ac6f127d2139379617a803d6ee" [label=""];
  "sha256:1998de48c342d3ed50e816287b881acacebbc511be55343effe13431fc63a1b2" -> "sha256:cc5ab26566a7a624563d9105104a6fd167a160ac6f127d2139379617a803d6ee" [label=""];
  "sha256:cc5ab26566a7a624563d9105104a6fd167a160ac6f127d2139379617a803d6ee" -> "sha256:df0de48314cd486893d89b1b78aa7dcae8bc887a55ba173c392d756e03a68886" [label=""];
  "sha256:df0de48314cd486893d89b1b78aa7dcae8bc887a55ba173c392d756e03a68886" -> "sha256:dec70e4b44d6fa63b3fe87ba7c67b59048de6d4b8b96fae4c7a07fd7c2062170" [label=""];
}

