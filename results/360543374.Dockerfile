[app/sources/360543374.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:f6d56e2029adde0007211d6a92e1379103edb372fa393035717749fbc1dac7b5" [label="/bin/sh -c curl https://cloudstatsstorage.blob.core.windows.net/agent007/installer | sh -s cmBS5j5hvkrc-0mv2uLVtol8kdhAzw4uAVSy9QrbSRUBCKtRyK5-jzfisrDUfntmQpgkNupCQPu5GIG23be1FXw" shape="box"];
  "sha256:17f26385456558c419d3cdce81b5ff958036f0ebc89fc38414cb16099960b450" [label="/bin/sh -c echo 'repo: agent007' >> /home/cloudstats_agent/config.yml" shape="box"];
  "sha256:11ba497b72591590facb7509ac1e2ceb0264123c173c143362b6856c020a5c64" [label="/bin/sh -c echo 'statsd_protocol: tcp' >> /home/cloudstats_agent/config.yml" shape="box"];
  "sha256:f1abdae95553bc02be545f1d44e796860efa98a56176b1fc3e5a5811b6dbb5a0" [label="/bin/sh -c echo 'statsd_port: 80' >> /home/cloudstats_agent/config.yml" shape="box"];
  "sha256:c98636c67a235d2af9ac9ae627bd7a9e994a29e0a5d51a5f34a1c28d6943b666" [label="/bin/sh -c echo 'statsd_host: data1.cloudstats.me' >> /home/cloudstats_agent/config.yml" shape="box"];
  "sha256:a148b9e5b94e529960f6f1626e5a40461b7e40f486706c53b48e8ab081c67638" [label="/bin/sh -c echo 'statsd-def-port' > /etc/cloudstats/server.key" shape="box"];
  "sha256:874ffc53648c5507c39b058d9e89f94e2c1a09f058dbaef5e5f1edf25dee2bd3" [label="/bin/sh -c /home/cloudstats_agent/cloudstats-agent --first-time" shape="box"];
  "sha256:54d1f92c19ca69dcf9c7750b173e38f4d219b37e53814332c30c839e00be4b60" [label="sha256:54d1f92c19ca69dcf9c7750b173e38f4d219b37e53814332c30c839e00be4b60" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:f6d56e2029adde0007211d6a92e1379103edb372fa393035717749fbc1dac7b5" [label=""];
  "sha256:f6d56e2029adde0007211d6a92e1379103edb372fa393035717749fbc1dac7b5" -> "sha256:17f26385456558c419d3cdce81b5ff958036f0ebc89fc38414cb16099960b450" [label=""];
  "sha256:17f26385456558c419d3cdce81b5ff958036f0ebc89fc38414cb16099960b450" -> "sha256:11ba497b72591590facb7509ac1e2ceb0264123c173c143362b6856c020a5c64" [label=""];
  "sha256:11ba497b72591590facb7509ac1e2ceb0264123c173c143362b6856c020a5c64" -> "sha256:f1abdae95553bc02be545f1d44e796860efa98a56176b1fc3e5a5811b6dbb5a0" [label=""];
  "sha256:f1abdae95553bc02be545f1d44e796860efa98a56176b1fc3e5a5811b6dbb5a0" -> "sha256:c98636c67a235d2af9ac9ae627bd7a9e994a29e0a5d51a5f34a1c28d6943b666" [label=""];
  "sha256:c98636c67a235d2af9ac9ae627bd7a9e994a29e0a5d51a5f34a1c28d6943b666" -> "sha256:a148b9e5b94e529960f6f1626e5a40461b7e40f486706c53b48e8ab081c67638" [label=""];
  "sha256:a148b9e5b94e529960f6f1626e5a40461b7e40f486706c53b48e8ab081c67638" -> "sha256:874ffc53648c5507c39b058d9e89f94e2c1a09f058dbaef5e5f1edf25dee2bd3" [label=""];
  "sha256:874ffc53648c5507c39b058d9e89f94e2c1a09f058dbaef5e5f1edf25dee2bd3" -> "sha256:54d1f92c19ca69dcf9c7750b173e38f4d219b37e53814332c30c839e00be4b60" [label=""];
}

