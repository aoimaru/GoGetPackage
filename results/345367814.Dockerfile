[app/sources/345367814.Dockerfile]
digraph {
  "sha256:69cd6b85e527388c9e37d71b4ae9a94af4a77d2584292fa7e2ad196b230e75a4" [label="docker-image://docker.io/balenalib/artik5-debian:sid-build" shape="ellipse"];
  "sha256:9bef42bb506f17bef07eff92f2e2e94280a72dc45f747194c2c18ebc50f5ff54" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:2e1bf5a2877b68a7280079cd3d335caea8cbfb8e21334faf7155269198550c23" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cb3d5346626031a98f33d74759cf9e0bcbc1c664fd05bf4fc8bdd4193ca1fd16" [label="mkdir{path=/go}" shape="note"];
  "sha256:40fda671cdeefef6a5cf2708f9a76c0055299e220ae45ce14c79f424dfe09f8a" [label="sha256:40fda671cdeefef6a5cf2708f9a76c0055299e220ae45ce14c79f424dfe09f8a" shape="plaintext"];
  "sha256:69cd6b85e527388c9e37d71b4ae9a94af4a77d2584292fa7e2ad196b230e75a4" -> "sha256:9bef42bb506f17bef07eff92f2e2e94280a72dc45f747194c2c18ebc50f5ff54" [label=""];
  "sha256:9bef42bb506f17bef07eff92f2e2e94280a72dc45f747194c2c18ebc50f5ff54" -> "sha256:2e1bf5a2877b68a7280079cd3d335caea8cbfb8e21334faf7155269198550c23" [label=""];
  "sha256:2e1bf5a2877b68a7280079cd3d335caea8cbfb8e21334faf7155269198550c23" -> "sha256:cb3d5346626031a98f33d74759cf9e0bcbc1c664fd05bf4fc8bdd4193ca1fd16" [label=""];
  "sha256:cb3d5346626031a98f33d74759cf9e0bcbc1c664fd05bf4fc8bdd4193ca1fd16" -> "sha256:40fda671cdeefef6a5cf2708f9a76c0055299e220ae45ce14c79f424dfe09f8a" [label=""];
}

