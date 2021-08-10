[app/sources/470747584.Dockerfile]
digraph {
  "sha256:078e4e2e09fae30803bd17ad38064d799c5e47c515bac326f7929ccc68f13b6c" [label="docker-image://docker.io/32bit/ubuntu:14.04" shape="ellipse"];
  "sha256:2d6e230c2d03b8b3260912455b9f346b8f5bf3702b1f8ec733610a2d5bbd99b0" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties software-properties-common git" shape="box"];
  "sha256:28b08b9fe9a6efd94daf15f4a579d3f0e7df9c6c72ffd3cb2fa21ac2301512b4" [label="/bin/sh -c add-apt-repository ppa:evarlast/golang1.4" shape="box"];
  "sha256:2c6d71dcb76399d8d90bb7bac535d58f10cfa16018dc8c6e6fdb2b8d9cdb2760" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::=\"--force-overwrite\" golang-go" shape="box"];
  "sha256:41ee72242caf89e68e3b0062ab5485c2e583eb6f2c196259dbe275821f671ff2" [label="/bin/sh -c mkdir -p /root/go/src/github.com/influxdata/influxdb" shape="box"];
  "sha256:2079c29edcd187f32997a375118404440b068e8ec57f2e6243ea77d59a11d14a" [label="/bin/sh -c mkdir -p /tmp/artifacts" shape="box"];
  "sha256:67cc55c831bae98e02bc2c545bcccdd83b70f8214e05cb5804d828dc0604ad87" [label="sha256:67cc55c831bae98e02bc2c545bcccdd83b70f8214e05cb5804d828dc0604ad87" shape="plaintext"];
  "sha256:078e4e2e09fae30803bd17ad38064d799c5e47c515bac326f7929ccc68f13b6c" -> "sha256:2d6e230c2d03b8b3260912455b9f346b8f5bf3702b1f8ec733610a2d5bbd99b0" [label=""];
  "sha256:2d6e230c2d03b8b3260912455b9f346b8f5bf3702b1f8ec733610a2d5bbd99b0" -> "sha256:28b08b9fe9a6efd94daf15f4a579d3f0e7df9c6c72ffd3cb2fa21ac2301512b4" [label=""];
  "sha256:28b08b9fe9a6efd94daf15f4a579d3f0e7df9c6c72ffd3cb2fa21ac2301512b4" -> "sha256:2c6d71dcb76399d8d90bb7bac535d58f10cfa16018dc8c6e6fdb2b8d9cdb2760" [label=""];
  "sha256:2c6d71dcb76399d8d90bb7bac535d58f10cfa16018dc8c6e6fdb2b8d9cdb2760" -> "sha256:41ee72242caf89e68e3b0062ab5485c2e583eb6f2c196259dbe275821f671ff2" [label=""];
  "sha256:41ee72242caf89e68e3b0062ab5485c2e583eb6f2c196259dbe275821f671ff2" -> "sha256:2079c29edcd187f32997a375118404440b068e8ec57f2e6243ea77d59a11d14a" [label=""];
  "sha256:2079c29edcd187f32997a375118404440b068e8ec57f2e6243ea77d59a11d14a" -> "sha256:67cc55c831bae98e02bc2c545bcccdd83b70f8214e05cb5804d828dc0604ad87" [label=""];
}

