[app/sources/345356667.Dockerfile]
digraph {
  "sha256:dedbd65df8ba1bed49131c8cc72716d42d0bf6b111f8a0ef6c4d4b988c1f322c" [label="docker-image://docker.io/balenalib/armv7hf-debian:sid-build" shape="ellipse"];
  "sha256:a3aad6b0279ed738cf221464dfdccab3e5fa778692fc7108858f7513fed13af9" [label="/bin/sh -c echo \"deb http://archive.raspbian.org/raspbian sid main contrib non-free rpi firmware\" >>  /etc/apt/sources.list \t&& apt-key adv --batch --keyserver ha.pool.sks-keyservers.net  --recv-key 0x9165938D90FDDD2E \t&& echo \"deb http://archive.raspberrypi.org/debian sid main ui\" >>  /etc/apt/sources.list.d/raspi.list \t&& apt-key adv --batch --keyserver ha.pool.sks-keyservers.net  --recv-key 0x82B129927FA3303E" shape="box"];
  "sha256:459de9cd4dca0a2f9f9bda3dde99da4d8df7e38dfd61d5800c85558ab5e10935" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tlibraspberrypi-bin \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:befbaa8dc449380b44d722ea01061a81c01e9c07398a0d987588182926e7f744" [label="sha256:befbaa8dc449380b44d722ea01061a81c01e9c07398a0d987588182926e7f744" shape="plaintext"];
  "sha256:dedbd65df8ba1bed49131c8cc72716d42d0bf6b111f8a0ef6c4d4b988c1f322c" -> "sha256:a3aad6b0279ed738cf221464dfdccab3e5fa778692fc7108858f7513fed13af9" [label=""];
  "sha256:a3aad6b0279ed738cf221464dfdccab3e5fa778692fc7108858f7513fed13af9" -> "sha256:459de9cd4dca0a2f9f9bda3dde99da4d8df7e38dfd61d5800c85558ab5e10935" [label=""];
  "sha256:459de9cd4dca0a2f9f9bda3dde99da4d8df7e38dfd61d5800c85558ab5e10935" -> "sha256:befbaa8dc449380b44d722ea01061a81c01e9c07398a0d987588182926e7f744" [label=""];
}

