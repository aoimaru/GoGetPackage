[app/sources/345364998.Dockerfile]
digraph {
  "sha256:54dc7919b40393c5b9de02ffd671be3d072d430626914a6c2808ab92f636648b" [label="docker-image://docker.io/balenalib/aarch64-debian:stretch-build" shape="ellipse"];
  "sha256:8619094914a77b0317b1f2a35e9da52a46f0479e76e9117ee64a81068851164f" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3a3a1027337c587c3b3b0fb2f0a9226f02ce39217798c870f41ee71ca4221257" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='3D0DEABC092865BD3583312FE14211BD94275F569EAE9D32F447B29D55D31B4B61FADA36ECFB88CB7E9B185C1F3D67A1F270DBFD3D691ACE249DEF3797926F06'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:5b1366795e97a491056dc4b9972c81f47d1c4f8b578cbaba66b08c1b2435c59d" [label="sha256:5b1366795e97a491056dc4b9972c81f47d1c4f8b578cbaba66b08c1b2435c59d" shape="plaintext"];
  "sha256:54dc7919b40393c5b9de02ffd671be3d072d430626914a6c2808ab92f636648b" -> "sha256:8619094914a77b0317b1f2a35e9da52a46f0479e76e9117ee64a81068851164f" [label=""];
  "sha256:8619094914a77b0317b1f2a35e9da52a46f0479e76e9117ee64a81068851164f" -> "sha256:3a3a1027337c587c3b3b0fb2f0a9226f02ce39217798c870f41ee71ca4221257" [label=""];
  "sha256:3a3a1027337c587c3b3b0fb2f0a9226f02ce39217798c870f41ee71ca4221257" -> "sha256:5b1366795e97a491056dc4b9972c81f47d1c4f8b578cbaba66b08c1b2435c59d" [label=""];
}

