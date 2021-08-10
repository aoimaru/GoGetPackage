[app/sources/226925172.Dockerfile]
digraph {
  "sha256:5725d8f30561a9a5ae1a936560dd299857fd4d4f07804c24dbfe9488b0da0a83" [label="local://context" shape="ellipse"];
  "sha256:baa7b2c43a0089273cc36378bac84ec0f08d9c7554b970718b6ceb9d2193fd51" [label="docker-image://docker.io/swiftdocker/swift:latest" shape="ellipse"];
  "sha256:2bfb12104bc5eb15ed722b1444b395db8dddf9ea2fffe69f51126428b2fc1fff" [label="mkdir{path=/package}" shape="note"];
  "sha256:4458c58fbf9d9f36780501a4cc602adfcdee2728698ae9fae4042fb6144e41b0" [label="copy{src=/, dest=/package/}" shape="note"];
  "sha256:8e7664c2f7b1e88b768fbc94df94701102cebc42e1fa3f3189a2b5127bac2322" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:12f9d537b41ec5cd4f810eb573d1d937e796024dedec153f9fe2e93c4536db13" [label="/bin/sh -c swift package tools-version --set 4.0" shape="box"];
  "sha256:184f8f38f218d485bc7c307b377bd465f34d4d1a0ed2b948e7e71285702b4a97" [label="/bin/sh -c swift package resolve" shape="box"];
  "sha256:80c960b404855af707d22a06deadcaf06a3882e61fe392cc4171e87ea178ee67" [label="/bin/sh -c swift package clean" shape="box"];
  "sha256:7f5ce8398762567063f9f84afed618b9f7454f9f37abfc873224c9f988f3a1d7" [label="/bin/sh -c swift test" shape="box"];
  "sha256:b6e8aba85922dc8e637a828c8c0d63f9e0cc57b33f336a9e1e7d954fdf0f5fd7" [label="/bin/sh -c swift package tools-version --set 4.1" shape="box"];
  "sha256:2bb1dd39a42630d6cac53844770e34a33c50f786c95789503ac23eac5c5427b2" [label="/bin/sh -c swift package resolve" shape="box"];
  "sha256:354ccd0b3d5e2aa8c76d6d8101f5b43f0185fe4f8931880a3ebcccd0b97d5e69" [label="/bin/sh -c swift package clean" shape="box"];
  "sha256:b94fbcdc3febd42996a0e9fb99f9ed5200bb2408cb60ee620f7d8a79346337bb" [label="sha256:b94fbcdc3febd42996a0e9fb99f9ed5200bb2408cb60ee620f7d8a79346337bb" shape="plaintext"];
  "sha256:baa7b2c43a0089273cc36378bac84ec0f08d9c7554b970718b6ceb9d2193fd51" -> "sha256:2bfb12104bc5eb15ed722b1444b395db8dddf9ea2fffe69f51126428b2fc1fff" [label=""];
  "sha256:2bfb12104bc5eb15ed722b1444b395db8dddf9ea2fffe69f51126428b2fc1fff" -> "sha256:4458c58fbf9d9f36780501a4cc602adfcdee2728698ae9fae4042fb6144e41b0" [label=""];
  "sha256:5725d8f30561a9a5ae1a936560dd299857fd4d4f07804c24dbfe9488b0da0a83" -> "sha256:4458c58fbf9d9f36780501a4cc602adfcdee2728698ae9fae4042fb6144e41b0" [label=""];
  "sha256:4458c58fbf9d9f36780501a4cc602adfcdee2728698ae9fae4042fb6144e41b0" -> "sha256:8e7664c2f7b1e88b768fbc94df94701102cebc42e1fa3f3189a2b5127bac2322" [label=""];
  "sha256:8e7664c2f7b1e88b768fbc94df94701102cebc42e1fa3f3189a2b5127bac2322" -> "sha256:12f9d537b41ec5cd4f810eb573d1d937e796024dedec153f9fe2e93c4536db13" [label=""];
  "sha256:12f9d537b41ec5cd4f810eb573d1d937e796024dedec153f9fe2e93c4536db13" -> "sha256:184f8f38f218d485bc7c307b377bd465f34d4d1a0ed2b948e7e71285702b4a97" [label=""];
  "sha256:184f8f38f218d485bc7c307b377bd465f34d4d1a0ed2b948e7e71285702b4a97" -> "sha256:80c960b404855af707d22a06deadcaf06a3882e61fe392cc4171e87ea178ee67" [label=""];
  "sha256:80c960b404855af707d22a06deadcaf06a3882e61fe392cc4171e87ea178ee67" -> "sha256:7f5ce8398762567063f9f84afed618b9f7454f9f37abfc873224c9f988f3a1d7" [label=""];
  "sha256:7f5ce8398762567063f9f84afed618b9f7454f9f37abfc873224c9f988f3a1d7" -> "sha256:b6e8aba85922dc8e637a828c8c0d63f9e0cc57b33f336a9e1e7d954fdf0f5fd7" [label=""];
  "sha256:b6e8aba85922dc8e637a828c8c0d63f9e0cc57b33f336a9e1e7d954fdf0f5fd7" -> "sha256:2bb1dd39a42630d6cac53844770e34a33c50f786c95789503ac23eac5c5427b2" [label=""];
  "sha256:2bb1dd39a42630d6cac53844770e34a33c50f786c95789503ac23eac5c5427b2" -> "sha256:354ccd0b3d5e2aa8c76d6d8101f5b43f0185fe4f8931880a3ebcccd0b97d5e69" [label=""];
  "sha256:354ccd0b3d5e2aa8c76d6d8101f5b43f0185fe4f8931880a3ebcccd0b97d5e69" -> "sha256:b94fbcdc3febd42996a0e9fb99f9ed5200bb2408cb60ee620f7d8a79346337bb" [label=""];
}

