[app/sources/321128106.Dockerfile]
digraph {
  "sha256:e4782c2ea7dc1361189d16ba563e716332844988ebf15ecb6721bf36f7a6e720" [label="docker-image://docker.elastic.co/elasticsearch/elasticsearch:6.3.1@sha256:178051b116c91ae525369f3468aec167fb2c1cd90456e86c717cb1d135b8595e" shape="ellipse"];
  "sha256:273537ea228a771c51a6b9a3ed98fd05c126f717df2feca6c6c2a4c4570ed32a" [label="/bin/sh -c elasticsearch-plugin install analysis-kuromoji" shape="box"];
  "sha256:d3b2b780beae9cb720636f153cac9848fdaf9ffd516de30443bdd87c0d409c68" [label="sha256:d3b2b780beae9cb720636f153cac9848fdaf9ffd516de30443bdd87c0d409c68" shape="plaintext"];
  "sha256:e4782c2ea7dc1361189d16ba563e716332844988ebf15ecb6721bf36f7a6e720" -> "sha256:273537ea228a771c51a6b9a3ed98fd05c126f717df2feca6c6c2a4c4570ed32a" [label=""];
  "sha256:273537ea228a771c51a6b9a3ed98fd05c126f717df2feca6c6c2a4c4570ed32a" -> "sha256:d3b2b780beae9cb720636f153cac9848fdaf9ffd516de30443bdd87c0d409c68" [label=""];
}

