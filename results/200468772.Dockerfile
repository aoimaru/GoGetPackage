[app/sources/200468772.Dockerfile]
digraph {
  "sha256:85c653c08c80ce93deabc91ad435bedc7b73777d13b8446fec20e2c146f3d35d" [label="docker-image://docker.io/rocker/tidyverse:latest" shape="ellipse"];
  "sha256:cb20a667731fa367a6dd653d3d99abc74db9774cfe90ff2bfb5fc35cd7100286" [label="/bin/sh -c apt-get update && apt-get -y install     mariadb-client \tpostgresql-client" shape="box"];
  "sha256:058f6e37f88a7a76d3475425b78b12b495dc544460406b03965954afd157a76c" [label="/bin/sh -c echo \"en_US.ISO8859-1 ISO-8859-1\" >> /etc/locale.gen && \tlocale-gen" shape="box"];
  "sha256:fe8ea9cc65deab93541fc95b6e96e68a248dc41df58cbcaa72c3374428024dcc" [label="/bin/sh -c installGithub.r ropensci/taxizedb" shape="box"];
  "sha256:a3c711baf71b42112a0307c612b0bed9153a15a4648a28bb85140b14dda304a7" [label="sha256:a3c711baf71b42112a0307c612b0bed9153a15a4648a28bb85140b14dda304a7" shape="plaintext"];
  "sha256:85c653c08c80ce93deabc91ad435bedc7b73777d13b8446fec20e2c146f3d35d" -> "sha256:cb20a667731fa367a6dd653d3d99abc74db9774cfe90ff2bfb5fc35cd7100286" [label=""];
  "sha256:cb20a667731fa367a6dd653d3d99abc74db9774cfe90ff2bfb5fc35cd7100286" -> "sha256:058f6e37f88a7a76d3475425b78b12b495dc544460406b03965954afd157a76c" [label=""];
  "sha256:058f6e37f88a7a76d3475425b78b12b495dc544460406b03965954afd157a76c" -> "sha256:fe8ea9cc65deab93541fc95b6e96e68a248dc41df58cbcaa72c3374428024dcc" [label=""];
  "sha256:fe8ea9cc65deab93541fc95b6e96e68a248dc41df58cbcaa72c3374428024dcc" -> "sha256:a3c711baf71b42112a0307c612b0bed9153a15a4648a28bb85140b14dda304a7" [label=""];
}

