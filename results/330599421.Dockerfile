[app/sources/330599421.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:8d39a5ee1c4cbc9b204faa2cc10f37ef8a8caa4b2c6409b36f77f4b5a1464372" [label="mkdir{path=/App}" shape="note"];
  "sha256:8a837a125b6c13d1337e401c9943fd5469eca5ebef47f9a3d3bc3831adf052cf" [label="/bin/sh -c set -ef     && apt update     && apt install -y --no-install-recommends         libicu57 libcurl3 libunwind8 libssl1.0     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7d2c62585eeb8132c507a3b8a6bd1eef4a845401611dbc666cadb7abab4fd3b8" [label="local://context" shape="ellipse"];
  "sha256:caa6c3286b74a30bc0c02b19daee7461dc29250fa31d0d6f7a7484a3c71207ab" [label="/bin/sh -c set -ex \t&& apt update \t&& apt install --no-install-recommends --assume-yes \t\tca-certificates curl         \tlibicu57 libunwind8 \t&& curl -fsSLO https://download.microsoft.com/download/4/0/9/40920432-3302-47a8-b13c-bbc4848ad114/dotnet-sdk-2.1.302-linux-arm64.tar.gz \t&& mkdir -p /opt/dotnet \t&& tar xf dotnet-sdk-2.1.302-linux-arm64.tar.gz -C /opt/dotnet" shape="box"];
  "sha256:d227676002738f0d9f40f40988c993ba2e4d4a1936a6e748565778e926e9fc43" [label="mkdir{path=/Sln}" shape="note"];
  "sha256:99884f4755da3e96b3329f39723292761697747378d6709c8328ff450630e077" [label="copy{src=/, dest=/Sln/}" shape="note"];
  "sha256:9b6a8ee0e22ec865b6425d5d780273d44743d95e44270da34c7acb1b8c10da83" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:d11019f88bb803113ffa0419a26f85b04a75acd415f92f4ceab1bd663d29da68" [label="mkdir{path=/Sln/Decoder}" shape="note"];
  "sha256:2ee2812518311c261844a926ff841507addd4e51ee6ef1bd571a0cb3d7e67cfe" [label="/bin/sh -c dotnet publish -c Release -r linux-arm64 -o out" shape="box"];
  "sha256:31b52ece97252e0f0aca6342d8e90439620f03fcc6d4940250fda65edae2562b" [label="copy{src=/Sln/Decoder/out, dest=/App/}" shape="note"];
  "sha256:8cce8ce2beacd452ee923e12defdd16c6375df535daeea217b33d49683ab223d" [label="sha256:8cce8ce2beacd452ee923e12defdd16c6375df535daeea217b33d49683ab223d" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:8d39a5ee1c4cbc9b204faa2cc10f37ef8a8caa4b2c6409b36f77f4b5a1464372" [label=""];
  "sha256:8d39a5ee1c4cbc9b204faa2cc10f37ef8a8caa4b2c6409b36f77f4b5a1464372" -> "sha256:8a837a125b6c13d1337e401c9943fd5469eca5ebef47f9a3d3bc3831adf052cf" [label=""];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:caa6c3286b74a30bc0c02b19daee7461dc29250fa31d0d6f7a7484a3c71207ab" [label=""];
  "sha256:caa6c3286b74a30bc0c02b19daee7461dc29250fa31d0d6f7a7484a3c71207ab" -> "sha256:d227676002738f0d9f40f40988c993ba2e4d4a1936a6e748565778e926e9fc43" [label=""];
  "sha256:d227676002738f0d9f40f40988c993ba2e4d4a1936a6e748565778e926e9fc43" -> "sha256:99884f4755da3e96b3329f39723292761697747378d6709c8328ff450630e077" [label=""];
  "sha256:7d2c62585eeb8132c507a3b8a6bd1eef4a845401611dbc666cadb7abab4fd3b8" -> "sha256:99884f4755da3e96b3329f39723292761697747378d6709c8328ff450630e077" [label=""];
  "sha256:99884f4755da3e96b3329f39723292761697747378d6709c8328ff450630e077" -> "sha256:9b6a8ee0e22ec865b6425d5d780273d44743d95e44270da34c7acb1b8c10da83" [label=""];
  "sha256:9b6a8ee0e22ec865b6425d5d780273d44743d95e44270da34c7acb1b8c10da83" -> "sha256:d11019f88bb803113ffa0419a26f85b04a75acd415f92f4ceab1bd663d29da68" [label=""];
  "sha256:d11019f88bb803113ffa0419a26f85b04a75acd415f92f4ceab1bd663d29da68" -> "sha256:2ee2812518311c261844a926ff841507addd4e51ee6ef1bd571a0cb3d7e67cfe" [label=""];
  "sha256:8a837a125b6c13d1337e401c9943fd5469eca5ebef47f9a3d3bc3831adf052cf" -> "sha256:31b52ece97252e0f0aca6342d8e90439620f03fcc6d4940250fda65edae2562b" [label=""];
  "sha256:2ee2812518311c261844a926ff841507addd4e51ee6ef1bd571a0cb3d7e67cfe" -> "sha256:31b52ece97252e0f0aca6342d8e90439620f03fcc6d4940250fda65edae2562b" [label=""];
  "sha256:31b52ece97252e0f0aca6342d8e90439620f03fcc6d4940250fda65edae2562b" -> "sha256:8cce8ce2beacd452ee923e12defdd16c6375df535daeea217b33d49683ab223d" [label=""];
}

