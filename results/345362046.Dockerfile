[app/sources/345362046.Dockerfile]
digraph {
  "sha256:0e14c782c7ddb0bfc6d80041b3bd1a10d68974cdb36333aa453c0f64a1cc1327" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-build@sha256:22be4615eb9c6537f6a9d531073b148550c279871b7478bdbb67070ec65730b0" shape="ellipse"];
  "sha256:c39f3d935739c0fbe3c882ebd933afd84a3023fdf487d69f90e87a1a07517b38" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e4fa4407beb8d3d6493b0494c7f0e6b653b82b0960c6468d59d531635de8d1b1" [label="sha256:e4fa4407beb8d3d6493b0494c7f0e6b653b82b0960c6468d59d531635de8d1b1" shape="plaintext"];
  "sha256:0e14c782c7ddb0bfc6d80041b3bd1a10d68974cdb36333aa453c0f64a1cc1327" -> "sha256:c39f3d935739c0fbe3c882ebd933afd84a3023fdf487d69f90e87a1a07517b38" [label=""];
  "sha256:c39f3d935739c0fbe3c882ebd933afd84a3023fdf487d69f90e87a1a07517b38" -> "sha256:e4fa4407beb8d3d6493b0494c7f0e6b653b82b0960c6468d59d531635de8d1b1" [label=""];
}

