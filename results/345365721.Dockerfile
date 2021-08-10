[app/sources/345365721.Dockerfile]
digraph {
  "sha256:8aa83324bececc4a03a4770d4b7532f2ec709e15714c5c31bd7e549ead93f263" [label="docker-image://docker.io/balenalib/odroid-c1-debian:stretch-run" shape="ellipse"];
  "sha256:8c5f36d23de8fd627be4259499728050a708b917107ef9da5cc027d46292be17" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b1cf2f3ee22923567f07542b14f53c611b2c444d9b02c695f1f62f321776fe18" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:6677519808a5320777244ab62a95088518d8adc051a51feb37a384c699e4b9d2" [label="sha256:6677519808a5320777244ab62a95088518d8adc051a51feb37a384c699e4b9d2" shape="plaintext"];
  "sha256:8aa83324bececc4a03a4770d4b7532f2ec709e15714c5c31bd7e549ead93f263" -> "sha256:8c5f36d23de8fd627be4259499728050a708b917107ef9da5cc027d46292be17" [label=""];
  "sha256:8c5f36d23de8fd627be4259499728050a708b917107ef9da5cc027d46292be17" -> "sha256:b1cf2f3ee22923567f07542b14f53c611b2c444d9b02c695f1f62f321776fe18" [label=""];
  "sha256:b1cf2f3ee22923567f07542b14f53c611b2c444d9b02c695f1f62f321776fe18" -> "sha256:6677519808a5320777244ab62a95088518d8adc051a51feb37a384c699e4b9d2" [label=""];
}

