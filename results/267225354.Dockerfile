[app/sources/267225354.Dockerfile]
digraph {
  "sha256:fa007a8e6f194f2faaab7138fbf8d87c40d30753a53e8e43ff2c4bfd578ba692" [label="local://context" shape="ellipse"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:31ed6ed610776c61dee32e7a1fff405ee7399f91511cc75dd1c21f721fc98813" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:dc1d0039db27d9a54e8b999198c79d06f443059fa7efa5d7ea94848646eb0ec9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:34259a510ade4c09b60eaae140a51d60da67c663065995b752db90518b772959" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:9d642bd11f7192c57b56ccdb3bb3d601706c3fb032c3eb03d37a3d99e66073ec" [label="sha256:9d642bd11f7192c57b56ccdb3bb3d601706c3fb032c3eb03d37a3d99e66073ec" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label=""];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" -> "sha256:31ed6ed610776c61dee32e7a1fff405ee7399f91511cc75dd1c21f721fc98813" [label=""];
  "sha256:fa007a8e6f194f2faaab7138fbf8d87c40d30753a53e8e43ff2c4bfd578ba692" -> "sha256:31ed6ed610776c61dee32e7a1fff405ee7399f91511cc75dd1c21f721fc98813" [label=""];
  "sha256:31ed6ed610776c61dee32e7a1fff405ee7399f91511cc75dd1c21f721fc98813" -> "sha256:dc1d0039db27d9a54e8b999198c79d06f443059fa7efa5d7ea94848646eb0ec9" [label=""];
  "sha256:dc1d0039db27d9a54e8b999198c79d06f443059fa7efa5d7ea94848646eb0ec9" -> "sha256:34259a510ade4c09b60eaae140a51d60da67c663065995b752db90518b772959" [label=""];
  "sha256:fa007a8e6f194f2faaab7138fbf8d87c40d30753a53e8e43ff2c4bfd578ba692" -> "sha256:34259a510ade4c09b60eaae140a51d60da67c663065995b752db90518b772959" [label=""];
  "sha256:34259a510ade4c09b60eaae140a51d60da67c663065995b752db90518b772959" -> "sha256:9d642bd11f7192c57b56ccdb3bb3d601706c3fb032c3eb03d37a3d99e66073ec" [label=""];
}

