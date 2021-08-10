[app/sources/345362792.Dockerfile]
digraph {
  "sha256:577654776f71c0f4086a7c7a183543a6aedfac096db4708d67f294ce00516349" [label="docker-image://docker.io/balenalib/orange-pi-zero-debian:stretch-build@sha256:06bbd4d3e152a0bf92162d3f0ee11f5e570581ed9ebc5374c1b391bff14ee62e" shape="ellipse"];
  "sha256:316c8b1e9e7add1e6be186fbb3688927991e980ddc89a3b374376e932c3aa486" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:644ea91cf15117d11741445615950bace3676a71cfb992916f7d4211668b88be" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:809f06ed7dbd43e4d1b24c2104d64745e6691bdfe975f1f50e85af95eab9221a" [label="sha256:809f06ed7dbd43e4d1b24c2104d64745e6691bdfe975f1f50e85af95eab9221a" shape="plaintext"];
  "sha256:577654776f71c0f4086a7c7a183543a6aedfac096db4708d67f294ce00516349" -> "sha256:316c8b1e9e7add1e6be186fbb3688927991e980ddc89a3b374376e932c3aa486" [label=""];
  "sha256:316c8b1e9e7add1e6be186fbb3688927991e980ddc89a3b374376e932c3aa486" -> "sha256:644ea91cf15117d11741445615950bace3676a71cfb992916f7d4211668b88be" [label=""];
  "sha256:644ea91cf15117d11741445615950bace3676a71cfb992916f7d4211668b88be" -> "sha256:809f06ed7dbd43e4d1b24c2104d64745e6691bdfe975f1f50e85af95eab9221a" [label=""];
}

