[app/sources/139228588.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d62d7ae6b59bab842becc5e59eaf67c69dcc28f321d84297f220d28f890f5cef" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         libc6         libcurl3         libgcc1         libgssapi-krb5-2         libicu55         liblttng-ust0         libssl1.0.2         libstdc++6         libunwind8         libuuid1         zlib1g         curl         ca-certificates     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b54cc840d5e8becb1ca246f2497e4ac32d5683d4d717487bb154a06b0bed26f" [label="/bin/sh -c curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz     && echo \"$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet     && rm dotnet.tar.gz" shape="box"];
  "sha256:98ee56ba43c7c8708425bdf6a7bc92858bb77456d2ae43de9b662d030869a91b" [label="/bin/sh -c mkdir /twilio" shape="box"];
  "sha256:1e8d26468846446c73a2f9facf01f1dde0ac2afeff1c5281f357f2710d598004" [label="mkdir{path=/twilio}" shape="note"];
  "sha256:9f89ee16c6a030c52fe2a07606f0c1745ca5d3efb080f48ffa4912e2b12a88db" [label="local://context" shape="ellipse"];
  "sha256:1d1f494147aa88d2a1b6239ba512ad852c61c200a3f0b32ea7037bdab53ec38b" [label="copy{src=/src, dest=/twilio/src}" shape="note"];
  "sha256:1c7b16a4e3aa0354042dfe309614c5f3e12abcab0cb525188534b25af63f2eca" [label="copy{src=/test, dest=/twilio/test}" shape="note"];
  "sha256:df8367e5a463b861cfe4d205653f4e92af51029061ab67139c7709714205832b" [label="copy{src=/Twilio.sln, dest=/twilio/}" shape="note"];
  "sha256:d9c9a9227b198c9ffaf66b0bc0041239e3c334f41d78ec0574c1e9f14c44085d" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:8c990977ed54a80d1025a21f8f981f2c0612c61a0875e236ef6baec5e87867f6" [label="sha256:8c990977ed54a80d1025a21f8f981f2c0612c61a0875e236ef6baec5e87867f6" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d62d7ae6b59bab842becc5e59eaf67c69dcc28f321d84297f220d28f890f5cef" [label=""];
  "sha256:d62d7ae6b59bab842becc5e59eaf67c69dcc28f321d84297f220d28f890f5cef" -> "sha256:0b54cc840d5e8becb1ca246f2497e4ac32d5683d4d717487bb154a06b0bed26f" [label=""];
  "sha256:0b54cc840d5e8becb1ca246f2497e4ac32d5683d4d717487bb154a06b0bed26f" -> "sha256:98ee56ba43c7c8708425bdf6a7bc92858bb77456d2ae43de9b662d030869a91b" [label=""];
  "sha256:98ee56ba43c7c8708425bdf6a7bc92858bb77456d2ae43de9b662d030869a91b" -> "sha256:1e8d26468846446c73a2f9facf01f1dde0ac2afeff1c5281f357f2710d598004" [label=""];
  "sha256:1e8d26468846446c73a2f9facf01f1dde0ac2afeff1c5281f357f2710d598004" -> "sha256:1d1f494147aa88d2a1b6239ba512ad852c61c200a3f0b32ea7037bdab53ec38b" [label=""];
  "sha256:9f89ee16c6a030c52fe2a07606f0c1745ca5d3efb080f48ffa4912e2b12a88db" -> "sha256:1d1f494147aa88d2a1b6239ba512ad852c61c200a3f0b32ea7037bdab53ec38b" [label=""];
  "sha256:1d1f494147aa88d2a1b6239ba512ad852c61c200a3f0b32ea7037bdab53ec38b" -> "sha256:1c7b16a4e3aa0354042dfe309614c5f3e12abcab0cb525188534b25af63f2eca" [label=""];
  "sha256:9f89ee16c6a030c52fe2a07606f0c1745ca5d3efb080f48ffa4912e2b12a88db" -> "sha256:1c7b16a4e3aa0354042dfe309614c5f3e12abcab0cb525188534b25af63f2eca" [label=""];
  "sha256:1c7b16a4e3aa0354042dfe309614c5f3e12abcab0cb525188534b25af63f2eca" -> "sha256:df8367e5a463b861cfe4d205653f4e92af51029061ab67139c7709714205832b" [label=""];
  "sha256:9f89ee16c6a030c52fe2a07606f0c1745ca5d3efb080f48ffa4912e2b12a88db" -> "sha256:df8367e5a463b861cfe4d205653f4e92af51029061ab67139c7709714205832b" [label=""];
  "sha256:df8367e5a463b861cfe4d205653f4e92af51029061ab67139c7709714205832b" -> "sha256:d9c9a9227b198c9ffaf66b0bc0041239e3c334f41d78ec0574c1e9f14c44085d" [label=""];
  "sha256:d9c9a9227b198c9ffaf66b0bc0041239e3c334f41d78ec0574c1e9f14c44085d" -> "sha256:8c990977ed54a80d1025a21f8f981f2c0612c61a0875e236ef6baec5e87867f6" [label=""];
}

