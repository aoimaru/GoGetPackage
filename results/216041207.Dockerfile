[app/sources/216041207.Dockerfile]
digraph {
  "sha256:8df35a3573abcc905eca1105b5c3ffd9e540db4e8cd0287905ff72b801fdb972" [label="docker-image://docker.io/library/nginx:1.13.6" shape="ellipse"];
  "sha256:e6bf795a623b042ef80100e23385e02c338651aeb88c7358d226292791e3e76e" [label="/bin/sh -c mkdir -p /data/nginx/cache" shape="box"];
  "sha256:15821ba0e0dec86f33d2ba840ee0ad3dd41576d8009109203b300a5038039ddd" [label="local://context" shape="ellipse"];
  "sha256:fd8b863689eddd1f977fcd719613ca3882e956c2799fa1dfe353ef71d39d26af" [label="copy{src=/docker/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:dbfe6453a4acfffa8249fe2bd9004899548d7135abf2cbd6dac73fad1696cbd9" [label="sha256:dbfe6453a4acfffa8249fe2bd9004899548d7135abf2cbd6dac73fad1696cbd9" shape="plaintext"];
  "sha256:8df35a3573abcc905eca1105b5c3ffd9e540db4e8cd0287905ff72b801fdb972" -> "sha256:e6bf795a623b042ef80100e23385e02c338651aeb88c7358d226292791e3e76e" [label=""];
  "sha256:e6bf795a623b042ef80100e23385e02c338651aeb88c7358d226292791e3e76e" -> "sha256:fd8b863689eddd1f977fcd719613ca3882e956c2799fa1dfe353ef71d39d26af" [label=""];
  "sha256:15821ba0e0dec86f33d2ba840ee0ad3dd41576d8009109203b300a5038039ddd" -> "sha256:fd8b863689eddd1f977fcd719613ca3882e956c2799fa1dfe353ef71d39d26af" [label=""];
  "sha256:fd8b863689eddd1f977fcd719613ca3882e956c2799fa1dfe353ef71d39d26af" -> "sha256:dbfe6453a4acfffa8249fe2bd9004899548d7135abf2cbd6dac73fad1696cbd9" [label=""];
}

