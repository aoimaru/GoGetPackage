[app/sources/238105919.Dockerfile]
digraph {
  "sha256:2d7b5110d4bd6f7fc1075151344299683a40cc0606939c48b01bc29b066b8679" [label="docker-image://docker.io/library/opensuse:42.2" shape="ellipse"];
  "sha256:df29514a310b79c0af6ec961d3074a2712827453f34c517488962b8ff54539d8" [label="/bin/sh -c zypper --non-interactive in  https://github.com/minio/minfs/releases/download/RELEASE.2016-10-04T19-44-43Z/minfs-0.0.20161004194443-1.x86_64.rpm     && zypper --non-interactive in fuse     && zypper clean" shape="box"];
  "sha256:0659e3d4b09914d60a1426ca6678de0dacceddb29f7aa6c324525f694b74f8ce" [label="/bin/sh -c mkdir -p /run/docker/plugins" shape="box"];
  "sha256:0fa7ac39e3d9adc3ef1a101537115a24828e0a634f5fa45bc6730d644120e636" [label="local://context" shape="ellipse"];
  "sha256:23514e2fcada208c80bf347b3d23e2ca11821078eb70863aacbdb3939b5132b2" [label="copy{src=/_out/bin/miniovol, dest=/usr/bin/miniovol}" shape="note"];
  "sha256:c3476d0e8faa056145e147bc9ca737294bce893ad9cba20f9b3ea9f1e47e3237" [label="sha256:c3476d0e8faa056145e147bc9ca737294bce893ad9cba20f9b3ea9f1e47e3237" shape="plaintext"];
  "sha256:2d7b5110d4bd6f7fc1075151344299683a40cc0606939c48b01bc29b066b8679" -> "sha256:df29514a310b79c0af6ec961d3074a2712827453f34c517488962b8ff54539d8" [label=""];
  "sha256:df29514a310b79c0af6ec961d3074a2712827453f34c517488962b8ff54539d8" -> "sha256:0659e3d4b09914d60a1426ca6678de0dacceddb29f7aa6c324525f694b74f8ce" [label=""];
  "sha256:0659e3d4b09914d60a1426ca6678de0dacceddb29f7aa6c324525f694b74f8ce" -> "sha256:23514e2fcada208c80bf347b3d23e2ca11821078eb70863aacbdb3939b5132b2" [label=""];
  "sha256:0fa7ac39e3d9adc3ef1a101537115a24828e0a634f5fa45bc6730d644120e636" -> "sha256:23514e2fcada208c80bf347b3d23e2ca11821078eb70863aacbdb3939b5132b2" [label=""];
  "sha256:23514e2fcada208c80bf347b3d23e2ca11821078eb70863aacbdb3939b5132b2" -> "sha256:c3476d0e8faa056145e147bc9ca737294bce893ad9cba20f9b3ea9f1e47e3237" [label=""];
}

