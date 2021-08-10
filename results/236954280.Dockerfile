[app/sources/236954280.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:ef5900d73b8095ea4a5f818a0bc8b15c1939d4bc5117ba6ccaf871103d59c688" [label="/bin/sh -c set -x;     apt-get update     && apt-get install -y --no-install-recommends         btrfs-progs         curl         ca-certificates         python3-setuptools         ssh         unzip         rsync     && rm -rf /var/lib/apt/lists/*     && mkdir -p /run/docker/plugins     && mkdir -p /var/lib/buttervolume/{volumes,snapshots}     && mkdir /etc/buttervolume /root/.ssh" shape="box"];
  "sha256:620bdc296cd83ac124c7768c0e60a2348d52337ce76f30299d33456eec5c064c" [label="/bin/sh -c curl -o buttervolume.zip -SL https://github.com/anybox/buttervolume/archive/${VERSION}.zip     && unzip buttervolume.zip     && rm buttervolume.zip     && mv buttervolume-${VERSION} buttervolume     && cd buttervolume     && python3 setup.py install     && cd ..     && rm -rf buttervolume" shape="box"];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" [label="https://github.com/krallin/tini/releases/download/v0.18.0/tini" shape="ellipse"];
  "sha256:d61ef93836e8930dcad418992384dc23d238ecb5bd898328c6eba5e10af6d959" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:40f70550de8441b671b380d12a784dd2d2dda0f7c5b9335affd3a68f48e20963" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:2b01ef8ff8f565a9f97f2437569381bd8dbada726016b2d8afc74e66b54dbf77" [label="local://context" shape="ellipse"];
  "sha256:7152bdf85b3fb75acc9d9ac4061c3d3dc4c64e25126d3c911bd806932e7c438e" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:1572f560b92fe63a68c3ba5f781e432cf03c31ca3ac43789eeab9f3d4e44f5c8" [label="sha256:1572f560b92fe63a68c3ba5f781e432cf03c31ca3ac43789eeab9f3d4e44f5c8" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:ef5900d73b8095ea4a5f818a0bc8b15c1939d4bc5117ba6ccaf871103d59c688" [label=""];
  "sha256:ef5900d73b8095ea4a5f818a0bc8b15c1939d4bc5117ba6ccaf871103d59c688" -> "sha256:620bdc296cd83ac124c7768c0e60a2348d52337ce76f30299d33456eec5c064c" [label=""];
  "sha256:620bdc296cd83ac124c7768c0e60a2348d52337ce76f30299d33456eec5c064c" -> "sha256:d61ef93836e8930dcad418992384dc23d238ecb5bd898328c6eba5e10af6d959" [label=""];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" -> "sha256:d61ef93836e8930dcad418992384dc23d238ecb5bd898328c6eba5e10af6d959" [label=""];
  "sha256:d61ef93836e8930dcad418992384dc23d238ecb5bd898328c6eba5e10af6d959" -> "sha256:40f70550de8441b671b380d12a784dd2d2dda0f7c5b9335affd3a68f48e20963" [label=""];
  "sha256:40f70550de8441b671b380d12a784dd2d2dda0f7c5b9335affd3a68f48e20963" -> "sha256:7152bdf85b3fb75acc9d9ac4061c3d3dc4c64e25126d3c911bd806932e7c438e" [label=""];
  "sha256:2b01ef8ff8f565a9f97f2437569381bd8dbada726016b2d8afc74e66b54dbf77" -> "sha256:7152bdf85b3fb75acc9d9ac4061c3d3dc4c64e25126d3c911bd806932e7c438e" [label=""];
  "sha256:7152bdf85b3fb75acc9d9ac4061c3d3dc4c64e25126d3c911bd806932e7c438e" -> "sha256:1572f560b92fe63a68c3ba5f781e432cf03c31ca3ac43789eeab9f3d4e44f5c8" [label=""];
}

