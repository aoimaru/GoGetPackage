[app/sources/345363010.Dockerfile]
digraph {
  "sha256:4bf57d26bd8dbaecff27d6154129be763421441fb89c959d295b982432df7252" [label="docker-image://docker.io/balenalib/up-board-debian:stretch-build" shape="ellipse"];
  "sha256:95887d51b3f0fabab11d955c6d256fd4e5da8b7e27a3bc7354a9a5aea9434b63" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:821d2b7f1b8b63803f73b1fe4aacd0ef3491ab537c44e450d99cfb003bcf5405" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-x64.tar.gz\"     && aspnetcore_sha512='1FD17BE80E9C4E6F2C70DC234079D535D8218ABCE0D34BCC6621A38AE48143DB11E8E9AC1DD8AF3BF3D47269733D82C04BCFD081566DCE0DA27CC4DD659A7AC6'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:591454d6823d43c6543b549acb1c60a722544a52808953b5a20da552cd7bfb3e" [label="sha256:591454d6823d43c6543b549acb1c60a722544a52808953b5a20da552cd7bfb3e" shape="plaintext"];
  "sha256:4bf57d26bd8dbaecff27d6154129be763421441fb89c959d295b982432df7252" -> "sha256:95887d51b3f0fabab11d955c6d256fd4e5da8b7e27a3bc7354a9a5aea9434b63" [label=""];
  "sha256:95887d51b3f0fabab11d955c6d256fd4e5da8b7e27a3bc7354a9a5aea9434b63" -> "sha256:821d2b7f1b8b63803f73b1fe4aacd0ef3491ab537c44e450d99cfb003bcf5405" [label=""];
  "sha256:821d2b7f1b8b63803f73b1fe4aacd0ef3491ab537c44e450d99cfb003bcf5405" -> "sha256:591454d6823d43c6543b549acb1c60a722544a52808953b5a20da552cd7bfb3e" [label=""];
}

