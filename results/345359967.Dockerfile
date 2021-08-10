[app/sources/345359967.Dockerfile]
digraph {
  "sha256:5a15159db2c04f0dbc7ac4ac6ee6ad9035bb9681cb5ca1de4ac98e330559f14f" [label="docker-image://docker.io/balenalib/rpi-debian:buster-run" shape="ellipse"];
  "sha256:d51685d985595adb83f94bdb26eb65f754997026a3e980ad9e1414ed745b77a5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b5bb334b6dc893a510d31f161670a35e21655faed15eefe17a2d8806022a6a56" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-armv6l.tar.gz\" \t&& echo \"311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a  go$GO_VERSION.linux-armv6l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv6l.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv6l.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:27ebc353b53c1cf109a7b1a234963e51fd2edfc52fc83784910978b3c42dc843" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5b62ea8699e9c23768c70d525e7b9a3f7e325c8f5f83bde537d76e9d373830c7" [label="mkdir{path=/go}" shape="note"];
  "sha256:9301fb9fcd2477898239c0d1b6a624aa31d5d77832b6daaaed3f5620840b6363" [label="sha256:9301fb9fcd2477898239c0d1b6a624aa31d5d77832b6daaaed3f5620840b6363" shape="plaintext"];
  "sha256:5a15159db2c04f0dbc7ac4ac6ee6ad9035bb9681cb5ca1de4ac98e330559f14f" -> "sha256:d51685d985595adb83f94bdb26eb65f754997026a3e980ad9e1414ed745b77a5" [label=""];
  "sha256:d51685d985595adb83f94bdb26eb65f754997026a3e980ad9e1414ed745b77a5" -> "sha256:b5bb334b6dc893a510d31f161670a35e21655faed15eefe17a2d8806022a6a56" [label=""];
  "sha256:b5bb334b6dc893a510d31f161670a35e21655faed15eefe17a2d8806022a6a56" -> "sha256:27ebc353b53c1cf109a7b1a234963e51fd2edfc52fc83784910978b3c42dc843" [label=""];
  "sha256:27ebc353b53c1cf109a7b1a234963e51fd2edfc52fc83784910978b3c42dc843" -> "sha256:5b62ea8699e9c23768c70d525e7b9a3f7e325c8f5f83bde537d76e9d373830c7" [label=""];
  "sha256:5b62ea8699e9c23768c70d525e7b9a3f7e325c8f5f83bde537d76e9d373830c7" -> "sha256:9301fb9fcd2477898239c0d1b6a624aa31d5d77832b6daaaed3f5620840b6363" [label=""];
}

