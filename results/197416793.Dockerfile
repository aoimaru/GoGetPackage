[app/sources/197416793.Dockerfile]
digraph {
  "sha256:e530709c254c29694cdd3895106157a6d2e7dcd4a05b761b0c53c5dddff48d3f" [label="local://context" shape="ellipse"];
  "sha256:af2b786ddbbbfa27db965b00a9ed5a914eccabf8d515213c2d9ecbf6ec548f3c" [label="copy{src=/lede-x86-64-generic-rootfs.tar.gz, dest=/}" shape="note"];
  "sha256:79ea39e202dd6dd1ded74f9c41bc75748e3a4dde87ec610eb449ac5994820e95" [label="copy{src=/config.tar.gz, dest=/}" shape="note"];
  "sha256:8aa6fc470ad1263d166ffc95edfa9decc07fdfa96e7834f89a2c2193b7872972" [label="sha256:8aa6fc470ad1263d166ffc95edfa9decc07fdfa96e7834f89a2c2193b7872972" shape="plaintext"];
  "sha256:e530709c254c29694cdd3895106157a6d2e7dcd4a05b761b0c53c5dddff48d3f" -> "sha256:af2b786ddbbbfa27db965b00a9ed5a914eccabf8d515213c2d9ecbf6ec548f3c" [label=""];
  "sha256:af2b786ddbbbfa27db965b00a9ed5a914eccabf8d515213c2d9ecbf6ec548f3c" -> "sha256:79ea39e202dd6dd1ded74f9c41bc75748e3a4dde87ec610eb449ac5994820e95" [label=""];
  "sha256:e530709c254c29694cdd3895106157a6d2e7dcd4a05b761b0c53c5dddff48d3f" -> "sha256:79ea39e202dd6dd1ded74f9c41bc75748e3a4dde87ec610eb449ac5994820e95" [label=""];
  "sha256:79ea39e202dd6dd1ded74f9c41bc75748e3a4dde87ec610eb449ac5994820e95" -> "sha256:8aa6fc470ad1263d166ffc95edfa9decc07fdfa96e7834f89a2c2193b7872972" [label=""];
}

