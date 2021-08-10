[app/sources/252801249.Dockerfile]
digraph {
  "sha256:f7e7ca91e4cd7c3dae3e1b2ec1db855b810355a7d00d2532cdf3a3aba0c0130d" [label="docker-image://docker.io/library/golang:1.7.5-alpine3.5" shape="ellipse"];
  "sha256:a4393308728da7f7d3e5f665346a7d59916bafa272f1b678e10a6e3761508184" [label="local://context" shape="ellipse"];
  "sha256:bc0aa694fd78bc285e0d045cb3275105c25f22d2006cd16d90c938b4844dd4c8" [label="copy{src=/, dest=/go/src/github.com/mantl/mesos-consul}" shape="note"];
  "sha256:acc4938809277261f3044cd6239590f29862fa00c247820e91cb3854848483dc" [label="/bin/sh -c apk add \\--update make git glide && cd /go/src/github.com/mantl/mesos-consul && make vendor && go build -o /bin/mesos-consul && rm -rf /go && apk del --purge make git glide" shape="box"];
  "sha256:db2f1567a5f8fb1497d5f94f6715436d1bbfe2f0743bbcedf006a47f1043150f" [label="sha256:db2f1567a5f8fb1497d5f94f6715436d1bbfe2f0743bbcedf006a47f1043150f" shape="plaintext"];
  "sha256:f7e7ca91e4cd7c3dae3e1b2ec1db855b810355a7d00d2532cdf3a3aba0c0130d" -> "sha256:bc0aa694fd78bc285e0d045cb3275105c25f22d2006cd16d90c938b4844dd4c8" [label=""];
  "sha256:a4393308728da7f7d3e5f665346a7d59916bafa272f1b678e10a6e3761508184" -> "sha256:bc0aa694fd78bc285e0d045cb3275105c25f22d2006cd16d90c938b4844dd4c8" [label=""];
  "sha256:bc0aa694fd78bc285e0d045cb3275105c25f22d2006cd16d90c938b4844dd4c8" -> "sha256:acc4938809277261f3044cd6239590f29862fa00c247820e91cb3854848483dc" [label=""];
  "sha256:acc4938809277261f3044cd6239590f29862fa00c247820e91cb3854848483dc" -> "sha256:db2f1567a5f8fb1497d5f94f6715436d1bbfe2f0743bbcedf006a47f1043150f" [label=""];
}

