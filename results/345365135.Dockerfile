[app/sources/345365135.Dockerfile]
digraph {
  "sha256:ba8e355a9aa8673dd37a2b427a6f5249a7ab5222dfcd9057021f468dfacc10d4" [label="docker-image://docker.io/balenalib/artik533s-debian:stretch-run" shape="ellipse"];
  "sha256:22aa0d23ee7701680ec23706f9b5575a45a0392468a041a0c1e1e76d1bce11cf" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:94d9760ce782ad872c2033d8f810a64b3af99b751fc0a374350c1c76a4906d51" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:4745b5c98f4bac121fc1752263c351624f25c737c541ac52aa249abc7c7758c3" [label="sha256:4745b5c98f4bac121fc1752263c351624f25c737c541ac52aa249abc7c7758c3" shape="plaintext"];
  "sha256:ba8e355a9aa8673dd37a2b427a6f5249a7ab5222dfcd9057021f468dfacc10d4" -> "sha256:22aa0d23ee7701680ec23706f9b5575a45a0392468a041a0c1e1e76d1bce11cf" [label=""];
  "sha256:22aa0d23ee7701680ec23706f9b5575a45a0392468a041a0c1e1e76d1bce11cf" -> "sha256:94d9760ce782ad872c2033d8f810a64b3af99b751fc0a374350c1c76a4906d51" [label=""];
  "sha256:94d9760ce782ad872c2033d8f810a64b3af99b751fc0a374350c1c76a4906d51" -> "sha256:4745b5c98f4bac121fc1752263c351624f25c737c541ac52aa249abc7c7758c3" [label=""];
}

