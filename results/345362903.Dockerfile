[app/sources/345362903.Dockerfile]
digraph {
  "sha256:f0b7efd4904f87277934150973d7558292997b0203ed1b2554a5671311446c8c" [label="docker-image://docker.io/balenalib/raspberrypi3-64-debian:stretch-run" shape="ellipse"];
  "sha256:5b37d4c21536db42497f7d7a2c0316e273277cee4bbee30dc65b44f1e4717bb6" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b1ba51dff68e257a61a942e98be34e005eedf45cf52d668904a1341c2f13216e" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='4012E0E57A64144018ACA3C9A4994B9B9160848BCC532A4F00806F8EE86B7B5EFB3B47FF53DDF852E829CA0ACDFBEF285C9FFE34B02D223D79A8C00C76264E39'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:2541f1fb0055defddbd517247bfc6404721649fb33ddcdec4be513a20e689a92" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:99b93aaf526d5514a0d6159db2d7c97556c62e9069826aec73447affb9296275" [label="sha256:99b93aaf526d5514a0d6159db2d7c97556c62e9069826aec73447affb9296275" shape="plaintext"];
  "sha256:f0b7efd4904f87277934150973d7558292997b0203ed1b2554a5671311446c8c" -> "sha256:5b37d4c21536db42497f7d7a2c0316e273277cee4bbee30dc65b44f1e4717bb6" [label=""];
  "sha256:5b37d4c21536db42497f7d7a2c0316e273277cee4bbee30dc65b44f1e4717bb6" -> "sha256:b1ba51dff68e257a61a942e98be34e005eedf45cf52d668904a1341c2f13216e" [label=""];
  "sha256:b1ba51dff68e257a61a942e98be34e005eedf45cf52d668904a1341c2f13216e" -> "sha256:2541f1fb0055defddbd517247bfc6404721649fb33ddcdec4be513a20e689a92" [label=""];
  "sha256:2541f1fb0055defddbd517247bfc6404721649fb33ddcdec4be513a20e689a92" -> "sha256:99b93aaf526d5514a0d6159db2d7c97556c62e9069826aec73447affb9296275" [label=""];
}

