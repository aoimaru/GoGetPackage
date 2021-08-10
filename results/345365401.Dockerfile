[app/sources/345365401.Dockerfile]
digraph {
  "sha256:36f9e15843565af61e41c9615cc821f8d52c3e382301bf6b782a39779c7c7d9e" [label="docker-image://docker.io/balenalib/dl-pm6x-debian:stretch-run" shape="ellipse"];
  "sha256:34963a86bf381dfdeca1cd793995d893d8d5e77d251217ebb1c6f1c7c26afc25" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4fa162dcbbe9c36863a58aa4842adbba7a420792e3250ccf4278f54d30c141d8" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:b41ed7c71779a328c69442f5a5171b74f39a2dd2a90250974eb98e9f5e758551" [label="sha256:b41ed7c71779a328c69442f5a5171b74f39a2dd2a90250974eb98e9f5e758551" shape="plaintext"];
  "sha256:36f9e15843565af61e41c9615cc821f8d52c3e382301bf6b782a39779c7c7d9e" -> "sha256:34963a86bf381dfdeca1cd793995d893d8d5e77d251217ebb1c6f1c7c26afc25" [label=""];
  "sha256:34963a86bf381dfdeca1cd793995d893d8d5e77d251217ebb1c6f1c7c26afc25" -> "sha256:4fa162dcbbe9c36863a58aa4842adbba7a420792e3250ccf4278f54d30c141d8" [label=""];
  "sha256:4fa162dcbbe9c36863a58aa4842adbba7a420792e3250ccf4278f54d30c141d8" -> "sha256:b41ed7c71779a328c69442f5a5171b74f39a2dd2a90250974eb98e9f5e758551" [label=""];
}

