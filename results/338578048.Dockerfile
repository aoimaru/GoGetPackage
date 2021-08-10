[app/sources/338578048.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:6dd4d69d421274ca1ac829da7c38b913c5f416d0f529429aa00cea11a4a97fa7" [label="/bin/sh -c apt-get update && apt-get install -y     python     python-dev     python-pip     gcc" shape="box"];
  "sha256:97c57eedaca692afcc6f20604d8ff9094ff2fcb1b1e4c4649fe47f202ccb7ddb" [label="/bin/sh -c pip install uwsgi PyMySql" shape="box"];
  "sha256:d4f7ff21ef7894afc02cd493bfb66c1728bebcb0cdcf3c8b5603d7b5d703fbf8" [label="local://context" shape="ellipse"];
  "sha256:35ff29b60e9eacbf0667a0ee580c06db9d24aa2304e0c72dfa249615a19a6a8b" [label="copy{src=/start.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:105bebb77d51804d7af4b32313e6b87f3eeee4867217a1681b35c8f751261323" [label="copy{src=/app.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:c595ca709773e5d4d8b60d2369ee8f7b3f36553de61c34dafc0d3d26c996d554" [label="copy{src=/server.py, dest=/}" shape="note"];
  "sha256:28774dd42f84dc961c6cedd8120e0831ee13ad4ec8b3aacbb77b80f841fd9174" [label="sha256:28774dd42f84dc961c6cedd8120e0831ee13ad4ec8b3aacbb77b80f841fd9174" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:6dd4d69d421274ca1ac829da7c38b913c5f416d0f529429aa00cea11a4a97fa7" [label=""];
  "sha256:6dd4d69d421274ca1ac829da7c38b913c5f416d0f529429aa00cea11a4a97fa7" -> "sha256:97c57eedaca692afcc6f20604d8ff9094ff2fcb1b1e4c4649fe47f202ccb7ddb" [label=""];
  "sha256:97c57eedaca692afcc6f20604d8ff9094ff2fcb1b1e4c4649fe47f202ccb7ddb" -> "sha256:35ff29b60e9eacbf0667a0ee580c06db9d24aa2304e0c72dfa249615a19a6a8b" [label=""];
  "sha256:d4f7ff21ef7894afc02cd493bfb66c1728bebcb0cdcf3c8b5603d7b5d703fbf8" -> "sha256:35ff29b60e9eacbf0667a0ee580c06db9d24aa2304e0c72dfa249615a19a6a8b" [label=""];
  "sha256:35ff29b60e9eacbf0667a0ee580c06db9d24aa2304e0c72dfa249615a19a6a8b" -> "sha256:105bebb77d51804d7af4b32313e6b87f3eeee4867217a1681b35c8f751261323" [label=""];
  "sha256:d4f7ff21ef7894afc02cd493bfb66c1728bebcb0cdcf3c8b5603d7b5d703fbf8" -> "sha256:105bebb77d51804d7af4b32313e6b87f3eeee4867217a1681b35c8f751261323" [label=""];
  "sha256:105bebb77d51804d7af4b32313e6b87f3eeee4867217a1681b35c8f751261323" -> "sha256:c595ca709773e5d4d8b60d2369ee8f7b3f36553de61c34dafc0d3d26c996d554" [label=""];
  "sha256:d4f7ff21ef7894afc02cd493bfb66c1728bebcb0cdcf3c8b5603d7b5d703fbf8" -> "sha256:c595ca709773e5d4d8b60d2369ee8f7b3f36553de61c34dafc0d3d26c996d554" [label=""];
  "sha256:c595ca709773e5d4d8b60d2369ee8f7b3f36553de61c34dafc0d3d26c996d554" -> "sha256:28774dd42f84dc961c6cedd8120e0831ee13ad4ec8b3aacbb77b80f841fd9174" [label=""];
}

