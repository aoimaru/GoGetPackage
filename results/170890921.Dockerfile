[app/sources/170890921.Dockerfile]
digraph {
  "sha256:4c2f3efff6499b1725342d3eb35bb0c10a2a6bffc31512566ef34031553bf362" [label="local://context" shape="ellipse"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:10f19d93c1654b8e4b771af28ef50e6168ece0844a3c33211f1f0bc58706aad5" [label="copy{src=/target/topology-*-shaded.jar, dest=/opt/tads/topology.jar}" shape="note"];
  "sha256:0130f3340e2de72af285ed0e62b94aa8d05e6e359c06cf9029f7f9071ba9aac1" [label="copy{src=/target/*.xml, dest=/opt/tads/}" shape="note"];
  "sha256:24c07a23f3a290c8fe80c4f8bf90342c34c14ae963a1838533968bbbe6659800" [label="mkdir{path=/opt/tads}" shape="note"];
  "sha256:59f9bca62ffd043571c4c12d3c82b76e81b470128427c53b0b0641654aeb2ecb" [label="sha256:59f9bca62ffd043571c4c12d3c82b76e81b470128427c53b0b0641654aeb2ecb" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:10f19d93c1654b8e4b771af28ef50e6168ece0844a3c33211f1f0bc58706aad5" [label=""];
  "sha256:4c2f3efff6499b1725342d3eb35bb0c10a2a6bffc31512566ef34031553bf362" -> "sha256:10f19d93c1654b8e4b771af28ef50e6168ece0844a3c33211f1f0bc58706aad5" [label=""];
  "sha256:10f19d93c1654b8e4b771af28ef50e6168ece0844a3c33211f1f0bc58706aad5" -> "sha256:0130f3340e2de72af285ed0e62b94aa8d05e6e359c06cf9029f7f9071ba9aac1" [label=""];
  "sha256:4c2f3efff6499b1725342d3eb35bb0c10a2a6bffc31512566ef34031553bf362" -> "sha256:0130f3340e2de72af285ed0e62b94aa8d05e6e359c06cf9029f7f9071ba9aac1" [label=""];
  "sha256:0130f3340e2de72af285ed0e62b94aa8d05e6e359c06cf9029f7f9071ba9aac1" -> "sha256:24c07a23f3a290c8fe80c4f8bf90342c34c14ae963a1838533968bbbe6659800" [label=""];
  "sha256:24c07a23f3a290c8fe80c4f8bf90342c34c14ae963a1838533968bbbe6659800" -> "sha256:59f9bca62ffd043571c4c12d3c82b76e81b470128427c53b0b0641654aeb2ecb" [label=""];
}

