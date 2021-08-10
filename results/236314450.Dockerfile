[app/sources/236314450.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:271af8bcc36c222935122ba1b56215768c8d5b5024f5601b2c01023f2087df58" [label="/bin/sh -c apt-get update && apt-get install -y netbase nfs-common=1:1.2.8-9ubuntu12 glusterfs-client=3.7.6-1ubuntu1" shape="box"];
  "sha256:ed32d9b508f76525f5bef2816fc8801aa1e75bfc406e38f1bb54763101d289ee" [label="sha256:ed32d9b508f76525f5bef2816fc8801aa1e75bfc406e38f1bb54763101d289ee" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:271af8bcc36c222935122ba1b56215768c8d5b5024f5601b2c01023f2087df58" [label=""];
  "sha256:271af8bcc36c222935122ba1b56215768c8d5b5024f5601b2c01023f2087df58" -> "sha256:ed32d9b508f76525f5bef2816fc8801aa1e75bfc406e38f1bb54763101d289ee" [label=""];
}

