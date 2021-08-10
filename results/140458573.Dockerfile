[app/sources/140458573.Dockerfile]
digraph {
  "sha256:9b2b83e1aff5645e30c23db1433c1325deda69df3dbf27667e7067df2aa24709" [label="docker-image://docker.io/library/perl:5.30" shape="ellipse"];
  "sha256:d14252851029f99d71cc83c349b47eb7e07233fe471b21aed3ca0bc25968cf60" [label="/bin/sh -c cpanm Mojolicious Mojo::Pg Mojo::Redis Minion" shape="box"];
  "sha256:c1b8e6e5d0b5aa5896731d3ee6b47b1bcfb3b477cf85a4941664308ccb4bdf04" [label="local://context" shape="ellipse"];
  "sha256:12a0e5c5cbd6c06e03fe83413f72d53392bbf208a45ce2083c82b99ec04d825a" [label="copy{src=/MessageFilterService.pl, dest=/opt/}" shape="note"];
  "sha256:8f13b7654678cdd3ce80774f02e32c602df97a2f5719356357832fc9142aafbe" [label="sha256:8f13b7654678cdd3ce80774f02e32c602df97a2f5719356357832fc9142aafbe" shape="plaintext"];
  "sha256:9b2b83e1aff5645e30c23db1433c1325deda69df3dbf27667e7067df2aa24709" -> "sha256:d14252851029f99d71cc83c349b47eb7e07233fe471b21aed3ca0bc25968cf60" [label=""];
  "sha256:d14252851029f99d71cc83c349b47eb7e07233fe471b21aed3ca0bc25968cf60" -> "sha256:12a0e5c5cbd6c06e03fe83413f72d53392bbf208a45ce2083c82b99ec04d825a" [label=""];
  "sha256:c1b8e6e5d0b5aa5896731d3ee6b47b1bcfb3b477cf85a4941664308ccb4bdf04" -> "sha256:12a0e5c5cbd6c06e03fe83413f72d53392bbf208a45ce2083c82b99ec04d825a" [label=""];
  "sha256:12a0e5c5cbd6c06e03fe83413f72d53392bbf208a45ce2083c82b99ec04d825a" -> "sha256:8f13b7654678cdd3ce80774f02e32c602df97a2f5719356357832fc9142aafbe" [label=""];
}

