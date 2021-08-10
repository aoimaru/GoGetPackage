[app/sources/233152892.Dockerfile]
digraph {
  "sha256:448bc05f2a860c917c5504e7127558358d5083b71c00e9de6be8e0bf5170badf" [label="docker-image://docker.io/weaveworks/scope:1.3.0" shape="ellipse"];
  "sha256:0f77de9785460cd57c5ddc2c7605171c7f605397bcf35d7ccdc7c03956e4f888" [label="local://context" shape="ellipse"];
  "sha256:61d02ad36c1a8586a7dceace0110898e61e20db859d4860056aa8d9cf2a17d00" [label="copy{src=/report.tar.gz, dest=/home/weave/}" shape="note"];
  "sha256:e302bfb9850ab1c81966d9189a00f12c942e2251017378c3a401d16cc88bc875" [label="sha256:e302bfb9850ab1c81966d9189a00f12c942e2251017378c3a401d16cc88bc875" shape="plaintext"];
  "sha256:448bc05f2a860c917c5504e7127558358d5083b71c00e9de6be8e0bf5170badf" -> "sha256:61d02ad36c1a8586a7dceace0110898e61e20db859d4860056aa8d9cf2a17d00" [label=""];
  "sha256:0f77de9785460cd57c5ddc2c7605171c7f605397bcf35d7ccdc7c03956e4f888" -> "sha256:61d02ad36c1a8586a7dceace0110898e61e20db859d4860056aa8d9cf2a17d00" [label=""];
  "sha256:61d02ad36c1a8586a7dceace0110898e61e20db859d4860056aa8d9cf2a17d00" -> "sha256:e302bfb9850ab1c81966d9189a00f12c942e2251017378c3a401d16cc88bc875" [label=""];
}

