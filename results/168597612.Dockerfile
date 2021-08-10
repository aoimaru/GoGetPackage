[app/sources/168597612.Dockerfile]
digraph {
  "sha256:f5a144b41d773d9c48562cc41e92df9b11bfdddcfe8360419f11cf58c81ceec3" [label="docker-image://docker.io/rocker/rstudio:3.5.2" shape="ellipse"];
  "sha256:c79ed1ac183e97dc592f36b1866942bfeaee2ab91b310646afaeb1b4e8fc51e6" [label="/bin/sh -c apt-get update -qq && apt-get -y --no-install-recommends install   libxml2-dev   libcairo2-dev   libsqlite3-dev   libmariadbd-dev   libmariadb-client-lgpl-dev   libpq-dev   libssh2-1-dev   unixodbc-dev   && install2.r --error     --deps TRUE     tidyverse     dplyr     devtools     formatR     remotes     selectr     caTools     BiocManager" shape="box"];
  "sha256:48375f522fd69a5549bb711bf9e70b246299239c7c1cbbba095030984d85a99e" [label="sha256:48375f522fd69a5549bb711bf9e70b246299239c7c1cbbba095030984d85a99e" shape="plaintext"];
  "sha256:f5a144b41d773d9c48562cc41e92df9b11bfdddcfe8360419f11cf58c81ceec3" -> "sha256:c79ed1ac183e97dc592f36b1866942bfeaee2ab91b310646afaeb1b4e8fc51e6" [label=""];
  "sha256:c79ed1ac183e97dc592f36b1866942bfeaee2ab91b310646afaeb1b4e8fc51e6" -> "sha256:48375f522fd69a5549bb711bf9e70b246299239c7c1cbbba095030984d85a99e" [label=""];
}

