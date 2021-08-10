[app/sources/345361987.Dockerfile]
digraph {
  "sha256:3efc93a64649685b8d3ad0e988a79c3917d20a0e443d7b9947b46f1721f84b32" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:a2f1755fbfc55b31dadf6e0e2139e8ca895f4ddfbe9ee4de521bcdc9b34dd4f7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5ae42854bd9f5e005ea957d76e10fd763728bc8b7f85e18eea2cca3772b34e9e" [label="sha256:5ae42854bd9f5e005ea957d76e10fd763728bc8b7f85e18eea2cca3772b34e9e" shape="plaintext"];
  "sha256:3efc93a64649685b8d3ad0e988a79c3917d20a0e443d7b9947b46f1721f84b32" -> "sha256:a2f1755fbfc55b31dadf6e0e2139e8ca895f4ddfbe9ee4de521bcdc9b34dd4f7" [label=""];
  "sha256:a2f1755fbfc55b31dadf6e0e2139e8ca895f4ddfbe9ee4de521bcdc9b34dd4f7" -> "sha256:5ae42854bd9f5e005ea957d76e10fd763728bc8b7f85e18eea2cca3772b34e9e" [label=""];
}

