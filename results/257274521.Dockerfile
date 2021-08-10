[app/sources/257274521.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:f51717e7dbc4c5d72d75a11c1b769038d9c5ad7ac977af11b7821ec0ecdf997c" [label="local://context" shape="ellipse"];
  "sha256:148a9c8a0d73405dc99deaffbe9a7ffe35aab2f96e2e759f77bf74997277d703" [label="copy{src=/service/hybrid-query-1.4.6.jar, dest=/server.jar}" shape="note"];
  "sha256:a3532eb2d0f75ce83d36a741e0cc46f678e59856a9b498ec5700f359ea2776d6" [label="sha256:a3532eb2d0f75ce83d36a741e0cc46f678e59856a9b498ec5700f359ea2776d6" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:148a9c8a0d73405dc99deaffbe9a7ffe35aab2f96e2e759f77bf74997277d703" [label=""];
  "sha256:f51717e7dbc4c5d72d75a11c1b769038d9c5ad7ac977af11b7821ec0ecdf997c" -> "sha256:148a9c8a0d73405dc99deaffbe9a7ffe35aab2f96e2e759f77bf74997277d703" [label=""];
  "sha256:148a9c8a0d73405dc99deaffbe9a7ffe35aab2f96e2e759f77bf74997277d703" -> "sha256:a3532eb2d0f75ce83d36a741e0cc46f678e59856a9b498ec5700f359ea2776d6" [label=""];
}

