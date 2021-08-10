[app/sources/469061549.Dockerfile]
digraph {
  "sha256:72d30b783c4c7dbb7583830d350a95ffa2a09729208e47703f561597d7ce327c" [label="docker-image://docker.io/microsoft/dotnet:2.1.5-runtime-stretch-slim-arm32v7" shape="ellipse"];
  "sha256:3aa2c39197ba8b6983c99aa918a5dc2569f0da0f1123cba26a66d1e1ea0f4f02" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:26417281e3f73d132120d377862ca817cdc0c1242ca0828a9e12aab3da00d90a" [label="mkdir{path=/build}" shape="note"];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" [label="local://context" shape="ellipse"];
  "sha256:106f9a550b352c391d06dc2fcf1456cff1cc370766ee5535eb91f8f630522533" [label="copy{src=/stylecop.*, dest=/build/}" shape="note"];
  "sha256:447955523b5db05bd92b4a743dabddea84b855c9cfcea4424ab77e601360cd2c" [label="mkdir{path=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule}" shape="note"];
  "sha256:c026fb0dceec95e511b97cc803ef53fe64952ef24e86759c8121ec67b964a2e5" [label="copy{src=/LoRaEngine/modules/LoRaWanNetworkSrvModule/Logger, dest=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/Logger}" shape="note"];
  "sha256:cb7b784f1caab696b58ba75e2e16b278fa4e819c1bd7496c98b03868db03da1c" [label="copy{src=/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoraTools, dest=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoraTools}" shape="note"];
  "sha256:78d7c61f2d500a3181b6c897a71aa43b66cbbfa841221b9390d2837824ccfec4" [label="copy{src=/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWan.NetworkServer, dest=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWan.NetworkServer}" shape="note"];
  "sha256:3ca4485620ab19c601537aa125e7e0706d511524e6b205c393f058b983012068" [label="copy{src=/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWanNetworkSrvModule, dest=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWanNetworkSrvModule}" shape="note"];
  "sha256:a40c7ccc08d6e8eda4f609a89f82f76928511e643aae9d57726eeb32e2103ca7" [label="mkdir{path=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWanNetworkSrvModule}" shape="note"];
  "sha256:02dc2fd55854d029322487a9c773074f245292fc012385e9aed1df4838adc89b" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:399ebdd536701fca88574dbc627ad3d3471e3b55dd921ee97b05646c78303466" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:9b8eb1f96797a340364949875adaefaa4597746aeba5d158913f6e42119a055b" [label="copy{src=/build/LoRaEngine/modules/LoRaWanNetworkSrvModule/LoRaWanNetworkSrvModule/out/*, dest=/app/}" shape="note"];
  "sha256:12aa37ad66da8a5ee4e0283cd2aadf2f5744cc596b9b3b3ee1d491f0014acade" [label="sha256:12aa37ad66da8a5ee4e0283cd2aadf2f5744cc596b9b3b3ee1d491f0014acade" shape="plaintext"];
  "sha256:72d30b783c4c7dbb7583830d350a95ffa2a09729208e47703f561597d7ce327c" -> "sha256:3aa2c39197ba8b6983c99aa918a5dc2569f0da0f1123cba26a66d1e1ea0f4f02" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:26417281e3f73d132120d377862ca817cdc0c1242ca0828a9e12aab3da00d90a" [label=""];
  "sha256:26417281e3f73d132120d377862ca817cdc0c1242ca0828a9e12aab3da00d90a" -> "sha256:106f9a550b352c391d06dc2fcf1456cff1cc370766ee5535eb91f8f630522533" [label=""];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" -> "sha256:106f9a550b352c391d06dc2fcf1456cff1cc370766ee5535eb91f8f630522533" [label=""];
  "sha256:106f9a550b352c391d06dc2fcf1456cff1cc370766ee5535eb91f8f630522533" -> "sha256:447955523b5db05bd92b4a743dabddea84b855c9cfcea4424ab77e601360cd2c" [label=""];
  "sha256:447955523b5db05bd92b4a743dabddea84b855c9cfcea4424ab77e601360cd2c" -> "sha256:c026fb0dceec95e511b97cc803ef53fe64952ef24e86759c8121ec67b964a2e5" [label=""];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" -> "sha256:c026fb0dceec95e511b97cc803ef53fe64952ef24e86759c8121ec67b964a2e5" [label=""];
  "sha256:c026fb0dceec95e511b97cc803ef53fe64952ef24e86759c8121ec67b964a2e5" -> "sha256:cb7b784f1caab696b58ba75e2e16b278fa4e819c1bd7496c98b03868db03da1c" [label=""];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" -> "sha256:cb7b784f1caab696b58ba75e2e16b278fa4e819c1bd7496c98b03868db03da1c" [label=""];
  "sha256:cb7b784f1caab696b58ba75e2e16b278fa4e819c1bd7496c98b03868db03da1c" -> "sha256:78d7c61f2d500a3181b6c897a71aa43b66cbbfa841221b9390d2837824ccfec4" [label=""];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" -> "sha256:78d7c61f2d500a3181b6c897a71aa43b66cbbfa841221b9390d2837824ccfec4" [label=""];
  "sha256:78d7c61f2d500a3181b6c897a71aa43b66cbbfa841221b9390d2837824ccfec4" -> "sha256:3ca4485620ab19c601537aa125e7e0706d511524e6b205c393f058b983012068" [label=""];
  "sha256:9da2ce996835453a3df6d521906ab7dcf9f6585e8a0978cad21ab062ec0191f0" -> "sha256:3ca4485620ab19c601537aa125e7e0706d511524e6b205c393f058b983012068" [label=""];
  "sha256:3ca4485620ab19c601537aa125e7e0706d511524e6b205c393f058b983012068" -> "sha256:a40c7ccc08d6e8eda4f609a89f82f76928511e643aae9d57726eeb32e2103ca7" [label=""];
  "sha256:a40c7ccc08d6e8eda4f609a89f82f76928511e643aae9d57726eeb32e2103ca7" -> "sha256:02dc2fd55854d029322487a9c773074f245292fc012385e9aed1df4838adc89b" [label=""];
  "sha256:02dc2fd55854d029322487a9c773074f245292fc012385e9aed1df4838adc89b" -> "sha256:399ebdd536701fca88574dbc627ad3d3471e3b55dd921ee97b05646c78303466" [label=""];
  "sha256:3aa2c39197ba8b6983c99aa918a5dc2569f0da0f1123cba26a66d1e1ea0f4f02" -> "sha256:9b8eb1f96797a340364949875adaefaa4597746aeba5d158913f6e42119a055b" [label=""];
  "sha256:399ebdd536701fca88574dbc627ad3d3471e3b55dd921ee97b05646c78303466" -> "sha256:9b8eb1f96797a340364949875adaefaa4597746aeba5d158913f6e42119a055b" [label=""];
  "sha256:9b8eb1f96797a340364949875adaefaa4597746aeba5d158913f6e42119a055b" -> "sha256:12aa37ad66da8a5ee4e0283cd2aadf2f5744cc596b9b3b3ee1d491f0014acade" [label=""];
}

