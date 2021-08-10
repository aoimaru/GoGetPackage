[app/sources/345365102.Dockerfile]
digraph {
  "sha256:b7ac9502cc8fdc36f7bb6ee4bd5c37c3c94c905f9b357251bd1b97f8f71db599" [label="docker-image://docker.io/balenalib/artik5-debian:stretch-build" shape="ellipse"];
  "sha256:9769a745f088c36a57dfbd2ab153bd97bfadfe16dc4bce7292510a73be4b69c9" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:497eadddd5fa919f1da60791befd5f39434671c540c395454205881aff93e9a1" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='CD4994ED51D555888281520066F9E0C9540DF6EE1B17CCCCAB2A4BF76F07AAF594A3FFF6B3E0FC4A24A941A89C0E887A63580AD9A0E645E5F4F26837ADCFD9E3'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:ced79ad5d2ddc7c71afc5042f5d9c1d11acca0363b8ea7bf6b0aee9c0e08df05" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:a774388f48cf37effb8c6ab7fdfea07890f002384469fbf94ac0b988252b29c3" [label="sha256:a774388f48cf37effb8c6ab7fdfea07890f002384469fbf94ac0b988252b29c3" shape="plaintext"];
  "sha256:b7ac9502cc8fdc36f7bb6ee4bd5c37c3c94c905f9b357251bd1b97f8f71db599" -> "sha256:9769a745f088c36a57dfbd2ab153bd97bfadfe16dc4bce7292510a73be4b69c9" [label=""];
  "sha256:9769a745f088c36a57dfbd2ab153bd97bfadfe16dc4bce7292510a73be4b69c9" -> "sha256:497eadddd5fa919f1da60791befd5f39434671c540c395454205881aff93e9a1" [label=""];
  "sha256:497eadddd5fa919f1da60791befd5f39434671c540c395454205881aff93e9a1" -> "sha256:ced79ad5d2ddc7c71afc5042f5d9c1d11acca0363b8ea7bf6b0aee9c0e08df05" [label=""];
  "sha256:ced79ad5d2ddc7c71afc5042f5d9c1d11acca0363b8ea7bf6b0aee9c0e08df05" -> "sha256:a774388f48cf37effb8c6ab7fdfea07890f002384469fbf94ac0b988252b29c3" [label=""];
}

