[app/sources/260116738.Dockerfile]
digraph {
  "sha256:31c1dda58bd4b41b5898f5ddc1cd12a715b0567fc655144d6ad302ea11cd36d8" [label="docker-image://docker.io/library/postgres:alpine" shape="ellipse"];
  "sha256:200d9abd404a84fdb6e1ad85614bd22e9901dbc7a1dd94c63f8915a5497e55e5" [label="/bin/sh -c set -x \t&& apk update && apk add ca-certificates curl \t&& curl -L https://github.com/odise/go-cron/releases/download/v0.0.7/go-cron-linux.gz | zcat > /usr/local/bin/go-cron \t&& chmod a+x /usr/local/bin/go-cron \t&& apk del ca-certificates" shape="box"];
  "sha256:9a14b6edadfd505168cca3c7d4ab4fa5ff4278af1542094fe63b6068f81b941c" [label="local://context" shape="ellipse"];
  "sha256:b3223de16f2e44a5f342cd6dfce2e2116ac9abba29cb0d54d03c5299de1757e9" [label="copy{src=/backup.sh, dest=/backup.sh}" shape="note"];
  "sha256:a87593c0fef8850f73b5a14c2b7e00c9d8f7fd60233a770db3fdf3303e5d28f5" [label="sha256:a87593c0fef8850f73b5a14c2b7e00c9d8f7fd60233a770db3fdf3303e5d28f5" shape="plaintext"];
  "sha256:31c1dda58bd4b41b5898f5ddc1cd12a715b0567fc655144d6ad302ea11cd36d8" -> "sha256:200d9abd404a84fdb6e1ad85614bd22e9901dbc7a1dd94c63f8915a5497e55e5" [label=""];
  "sha256:200d9abd404a84fdb6e1ad85614bd22e9901dbc7a1dd94c63f8915a5497e55e5" -> "sha256:b3223de16f2e44a5f342cd6dfce2e2116ac9abba29cb0d54d03c5299de1757e9" [label=""];
  "sha256:9a14b6edadfd505168cca3c7d4ab4fa5ff4278af1542094fe63b6068f81b941c" -> "sha256:b3223de16f2e44a5f342cd6dfce2e2116ac9abba29cb0d54d03c5299de1757e9" [label=""];
  "sha256:b3223de16f2e44a5f342cd6dfce2e2116ac9abba29cb0d54d03c5299de1757e9" -> "sha256:a87593c0fef8850f73b5a14c2b7e00c9d8f7fd60233a770db3fdf3303e5d28f5" [label=""];
}

