[app/sources/236238168.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:0d5a5ae8cae9da55ccbe9583bd77344506e12b5532aa4207bb36a9b3b8f265c4" [label="/bin/sh -c adduser -h ${SERVICE_HOME} -s /sbin/nologin -u 1000 -D ${SERVICE_USER} &&   apk add --no-cache     dumb-init     vim" shape="box"];
  "sha256:f8e638e41919762c5d5b020d68b721fda7de9c764639b92c67dbf856e8ebfd41" [label="mkdir{path=/home/vim}" shape="note"];
  "sha256:78ec483c0633d143d8ddc2c1837586edc54d2b8266013d3f5b90c6c43cd0b26f" [label="sha256:78ec483c0633d143d8ddc2c1837586edc54d2b8266013d3f5b90c6c43cd0b26f" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:0d5a5ae8cae9da55ccbe9583bd77344506e12b5532aa4207bb36a9b3b8f265c4" [label=""];
  "sha256:0d5a5ae8cae9da55ccbe9583bd77344506e12b5532aa4207bb36a9b3b8f265c4" -> "sha256:f8e638e41919762c5d5b020d68b721fda7de9c764639b92c67dbf856e8ebfd41" [label=""];
  "sha256:f8e638e41919762c5d5b020d68b721fda7de9c764639b92c67dbf856e8ebfd41" -> "sha256:78ec483c0633d143d8ddc2c1837586edc54d2b8266013d3f5b90c6c43cd0b26f" [label=""];
}

