[app/sources/345362724.Dockerfile]
digraph {
  "sha256:44596f71649a2deed2722ac00d7cc1b17574f872e000421b9a3745ccdf330a4a" [label="docker-image://docker.io/balenalib/odroid-c1-debian:stretch-build" shape="ellipse"];
  "sha256:16f36ca69d5fcd8894abcbbb069c582f482f38b5110397bb1ed59cdaa5d650e5" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:30b87dcf5cc3b8676575421fbbe9aabc736ee94cb7dff0433b2e90b5e22ffc74" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='CD4994ED51D555888281520066F9E0C9540DF6EE1B17CCCCAB2A4BF76F07AAF594A3FFF6B3E0FC4A24A941A89C0E887A63580AD9A0E645E5F4F26837ADCFD9E3'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:ae68eb67818a3f87afbe6ab6c590d6d0883360a2e90242cf01890550d69c06cc" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:05b9994bb2f0adb52d033a316b77af06c8f32acf57f94a818193222f0d2ca30a" [label="sha256:05b9994bb2f0adb52d033a316b77af06c8f32acf57f94a818193222f0d2ca30a" shape="plaintext"];
  "sha256:44596f71649a2deed2722ac00d7cc1b17574f872e000421b9a3745ccdf330a4a" -> "sha256:16f36ca69d5fcd8894abcbbb069c582f482f38b5110397bb1ed59cdaa5d650e5" [label=""];
  "sha256:16f36ca69d5fcd8894abcbbb069c582f482f38b5110397bb1ed59cdaa5d650e5" -> "sha256:30b87dcf5cc3b8676575421fbbe9aabc736ee94cb7dff0433b2e90b5e22ffc74" [label=""];
  "sha256:30b87dcf5cc3b8676575421fbbe9aabc736ee94cb7dff0433b2e90b5e22ffc74" -> "sha256:ae68eb67818a3f87afbe6ab6c590d6d0883360a2e90242cf01890550d69c06cc" [label=""];
  "sha256:ae68eb67818a3f87afbe6ab6c590d6d0883360a2e90242cf01890550d69c06cc" -> "sha256:05b9994bb2f0adb52d033a316b77af06c8f32acf57f94a818193222f0d2ca30a" [label=""];
}

