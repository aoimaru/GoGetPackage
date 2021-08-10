[app/sources/345365540.Dockerfile]
digraph {
  "sha256:af9b8283cbe26e88d2a057e2ccc38a95a35e495eb33b0b8f8708dc5523f7016a" [label="docker-image://docker.io/balenalib/intel-nuc-debian:stretch-build" shape="ellipse"];
  "sha256:879917371db280b358b695caf9409a765fcdc10ce4f112699d12760dec14df8b" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0497e05052b521360a077682d1f2e8fa3dcb87c841498d2e66fd09f7c8143853" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='7C8790C263806DBF7CFFEF73FC39C52C46DC9CE7F43A3A290CA21B271A6164A57ABEE4619D021C04097C43AF4DEC0E2BE205CF0C12B4AC498290CFCA77EC1DE5'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:a8a27bd60cae8d56cba8e48bea83a00582c23f3bedd3947be7510e476410f8ed" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-x64.tar.gz\"     && aspnetcore_sha512='7C8790C263806DBF7CFFEF73FC39C52C46DC9CE7F43A3A290CA21B271A6164A57ABEE4619D021C04097C43AF4DEC0E2BE205CF0C12B4AC498290CFCA77EC1DE5'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet ./shared/Microsoft.AspNetCore.App     && rm aspnetcore.tar.gz" shape="box"];
  "sha256:c421efe9e51345af61af6776a1dce1c5236a1dd7436a4b00ac614d0964aa0ab8" [label="sha256:c421efe9e51345af61af6776a1dce1c5236a1dd7436a4b00ac614d0964aa0ab8" shape="plaintext"];
  "sha256:af9b8283cbe26e88d2a057e2ccc38a95a35e495eb33b0b8f8708dc5523f7016a" -> "sha256:879917371db280b358b695caf9409a765fcdc10ce4f112699d12760dec14df8b" [label=""];
  "sha256:879917371db280b358b695caf9409a765fcdc10ce4f112699d12760dec14df8b" -> "sha256:0497e05052b521360a077682d1f2e8fa3dcb87c841498d2e66fd09f7c8143853" [label=""];
  "sha256:0497e05052b521360a077682d1f2e8fa3dcb87c841498d2e66fd09f7c8143853" -> "sha256:a8a27bd60cae8d56cba8e48bea83a00582c23f3bedd3947be7510e476410f8ed" [label=""];
  "sha256:a8a27bd60cae8d56cba8e48bea83a00582c23f3bedd3947be7510e476410f8ed" -> "sha256:c421efe9e51345af61af6776a1dce1c5236a1dd7436a4b00ac614d0964aa0ab8" [label=""];
}

