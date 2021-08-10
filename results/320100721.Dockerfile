[app/sources/320100721.Dockerfile]
digraph {
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" [label="docker-image://docker.io/library/php:alpine" shape="ellipse"];
  "sha256:b05443b9d95d5f37fe041214ff00d7919bc9c33106d41fa9086ee32b9efe20ff" [label="/bin/sh -c wget https://github.com/bit3/faker-cli/releases/download/1.4/faker.phar -P /usr/local/bin" shape="box"];
  "sha256:8a15d91538382c03f65b8876c4a4f561c3f1258a5560239118a0038fe7ced8b6" [label="/bin/sh -c chmod 755 /usr/local/bin/faker.phar" shape="box"];
  "sha256:4b1892d3332cc4452d971b81b71363bb744d36e66941830f3ba653aaeb8f8bd0" [label="sha256:4b1892d3332cc4452d971b81b71363bb744d36e66941830f3ba653aaeb8f8bd0" shape="plaintext"];
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" -> "sha256:b05443b9d95d5f37fe041214ff00d7919bc9c33106d41fa9086ee32b9efe20ff" [label=""];
  "sha256:b05443b9d95d5f37fe041214ff00d7919bc9c33106d41fa9086ee32b9efe20ff" -> "sha256:8a15d91538382c03f65b8876c4a4f561c3f1258a5560239118a0038fe7ced8b6" [label=""];
  "sha256:8a15d91538382c03f65b8876c4a4f561c3f1258a5560239118a0038fe7ced8b6" -> "sha256:4b1892d3332cc4452d971b81b71363bb744d36e66941830f3ba653aaeb8f8bd0" [label=""];
}

