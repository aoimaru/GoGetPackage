[app/sources/345365209.Dockerfile]
digraph {
  "sha256:826e08159d7cbda8edfaa0e54580298c0fc81399f1d45c05988a0bdb6527d412" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-debian:stretch-run" shape="ellipse"];
  "sha256:052a88d18731cbf951c2951cfe176014a9a8a6a10ed91ec4a1277023ec9911f2" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c5e8476581ff31312a61e4a7836a9bb3e4820a315d4ccf46daa0e9c6eb5cbde7" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:749c889c9ee5696d092354a1b8211adbe8ea48a5cb4eddf1424e372909bce441" [label="sha256:749c889c9ee5696d092354a1b8211adbe8ea48a5cb4eddf1424e372909bce441" shape="plaintext"];
  "sha256:826e08159d7cbda8edfaa0e54580298c0fc81399f1d45c05988a0bdb6527d412" -> "sha256:052a88d18731cbf951c2951cfe176014a9a8a6a10ed91ec4a1277023ec9911f2" [label=""];
  "sha256:052a88d18731cbf951c2951cfe176014a9a8a6a10ed91ec4a1277023ec9911f2" -> "sha256:c5e8476581ff31312a61e4a7836a9bb3e4820a315d4ccf46daa0e9c6eb5cbde7" [label=""];
  "sha256:c5e8476581ff31312a61e4a7836a9bb3e4820a315d4ccf46daa0e9c6eb5cbde7" -> "sha256:749c889c9ee5696d092354a1b8211adbe8ea48a5cb4eddf1424e372909bce441" [label=""];
}

