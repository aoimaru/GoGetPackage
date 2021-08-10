[app/sources/363645503.Dockerfile]
digraph {
  "sha256:696941a8416cb6c3896e9728d5180eafd87e7855855479f072eb4a7718859a09" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime:2.2-stretch-slim@sha256:8f81aab10b63e73c0797fe728f3d0e9134387c02aa4c1c418eb30639f07964e5" shape="ellipse"];
  "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" [label="mkdir{path=/app}" shape="note"];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2@sha256:42699bba2fe4545dd753694499e6db08478ba5b3bcc34b929e7e324d4c115449" shape="ellipse"];
  "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" [label="mkdir{path=/app}" shape="note"];
  "sha256:330a31b1de02f2717690daa938bdc4a9205b8c0d6b0cea90159d337df8677f12" [label="docker-image://docker.io/library/node:lts" shape="ellipse"];
  "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" [label="mkdir{path=/app}" shape="note"];
  "sha256:f776fba17c81baf6c31fc76f0da39477da846b2ec2b71585e99199765131f48c" [label="local://context" shape="ellipse"];
  "sha256:ec8ec0b0d079e2cf3a7ccf6128d9b37d69b1032c3c86f2c13890fe3c806d1170" [label="copy{src=/ASF-ui, dest=/app/}" shape="note"];
  "sha256:f979fe9e287a2dfe66e50390638a02c76557a853d7a150f2f8ee855f6fabb21c" [label="/bin/sh -c echo \"node: $(node --version)\" &&     echo \"npm: $(npm --version)\" &&     npm ci &&     npm run-script deploy" shape="box"];
  "sha256:322ed76c68c29ea1ae85ef260ac69dd8b7e95f7ea4991a8a9c6a1dac29b2b38e" [label="copy{src=/app/dist, dest=/app/ASF-ui/dist}" shape="note"];
  "sha256:509e71c14827ab2030354a62d7cd0425ec1b3229fe8718081cc4459e27650b20" [label="copy{src=/ArchiSteamFarm, dest=/app/ArchiSteamFarm}" shape="note"];
  "sha256:1cd1ddbe9d5234b2f5ad02ea04c53c2680f25ddf0005a315ee73c5a4783ec68c" [label="copy{src=/ArchiSteamFarm.Tests, dest=/app/ArchiSteamFarm.Tests}" shape="note"];
  "sha256:bb54d939964e8a308d761b8138ef0c50129475d54d4d9619f7442ab7b889536c" [label="/bin/sh -c dotnet --info &&     if [ -f \"ArchiSteamFarm/Localization/Strings.zh-CN.resx\" ]; then ln -s \"Strings.zh-CN.resx\" \"ArchiSteamFarm/Localization/Strings.zh-Hans.resx\"; fi &&     if [ -f \"ArchiSteamFarm/Localization/Strings.zh-TW.resx\" ]; then ln -s \"Strings.zh-TW.resx\" \"ArchiSteamFarm/Localization/Strings.zh-Hant.resx\"; fi &&     dotnet build ArchiSteamFarm -c \"$CONFIGURATION\" -f \"$NET_CORE_VERSION\" -o 'out/source' /nologo &&     dotnet test ArchiSteamFarm.Tests -c \"$CONFIGURATION\" -f \"$NET_CORE_VERSION\" -o 'out/source' /nologo &&     dotnet publish ArchiSteamFarm -c \"$CONFIGURATION\" -f \"$NET_CORE_VERSION\" -o 'out/publish' /nologo /p:ASFVariant=generic /p:LinkDuringPublish=false &&     cp \"ArchiSteamFarm/overlay/generic/ArchiSteamFarm-Service.sh\" \"ArchiSteamFarm/out/publish/ArchiSteamFarm-Service.sh\"" shape="box"];
  "sha256:f467b41dcc4688d2a9fa45b3ea1d4fcc89ae4e0fc8e9bfe4779fd1356323c3b2" [label="copy{src=/app/ArchiSteamFarm/out/publish, dest=/app/}" shape="note"];
  "sha256:f319f7b9b9cb039c7959296d3bf93e77b200d602cd80d3837e9558eacd59304f" [label="sha256:f319f7b9b9cb039c7959296d3bf93e77b200d602cd80d3837e9558eacd59304f" shape="plaintext"];
  "sha256:696941a8416cb6c3896e9728d5180eafd87e7855855479f072eb4a7718859a09" -> "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" [label=""];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" -> "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" [label=""];
  "sha256:330a31b1de02f2717690daa938bdc4a9205b8c0d6b0cea90159d337df8677f12" -> "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" [label=""];
  "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" -> "sha256:ec8ec0b0d079e2cf3a7ccf6128d9b37d69b1032c3c86f2c13890fe3c806d1170" [label=""];
  "sha256:f776fba17c81baf6c31fc76f0da39477da846b2ec2b71585e99199765131f48c" -> "sha256:ec8ec0b0d079e2cf3a7ccf6128d9b37d69b1032c3c86f2c13890fe3c806d1170" [label=""];
  "sha256:ec8ec0b0d079e2cf3a7ccf6128d9b37d69b1032c3c86f2c13890fe3c806d1170" -> "sha256:f979fe9e287a2dfe66e50390638a02c76557a853d7a150f2f8ee855f6fabb21c" [label=""];
  "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" -> "sha256:322ed76c68c29ea1ae85ef260ac69dd8b7e95f7ea4991a8a9c6a1dac29b2b38e" [label=""];
  "sha256:f979fe9e287a2dfe66e50390638a02c76557a853d7a150f2f8ee855f6fabb21c" -> "sha256:322ed76c68c29ea1ae85ef260ac69dd8b7e95f7ea4991a8a9c6a1dac29b2b38e" [label=""];
  "sha256:322ed76c68c29ea1ae85ef260ac69dd8b7e95f7ea4991a8a9c6a1dac29b2b38e" -> "sha256:509e71c14827ab2030354a62d7cd0425ec1b3229fe8718081cc4459e27650b20" [label=""];
  "sha256:f776fba17c81baf6c31fc76f0da39477da846b2ec2b71585e99199765131f48c" -> "sha256:509e71c14827ab2030354a62d7cd0425ec1b3229fe8718081cc4459e27650b20" [label=""];
  "sha256:509e71c14827ab2030354a62d7cd0425ec1b3229fe8718081cc4459e27650b20" -> "sha256:1cd1ddbe9d5234b2f5ad02ea04c53c2680f25ddf0005a315ee73c5a4783ec68c" [label=""];
  "sha256:f776fba17c81baf6c31fc76f0da39477da846b2ec2b71585e99199765131f48c" -> "sha256:1cd1ddbe9d5234b2f5ad02ea04c53c2680f25ddf0005a315ee73c5a4783ec68c" [label=""];
  "sha256:1cd1ddbe9d5234b2f5ad02ea04c53c2680f25ddf0005a315ee73c5a4783ec68c" -> "sha256:bb54d939964e8a308d761b8138ef0c50129475d54d4d9619f7442ab7b889536c" [label=""];
  "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" -> "sha256:f467b41dcc4688d2a9fa45b3ea1d4fcc89ae4e0fc8e9bfe4779fd1356323c3b2" [label=""];
  "sha256:bb54d939964e8a308d761b8138ef0c50129475d54d4d9619f7442ab7b889536c" -> "sha256:f467b41dcc4688d2a9fa45b3ea1d4fcc89ae4e0fc8e9bfe4779fd1356323c3b2" [label=""];
  "sha256:f467b41dcc4688d2a9fa45b3ea1d4fcc89ae4e0fc8e9bfe4779fd1356323c3b2" -> "sha256:f319f7b9b9cb039c7959296d3bf93e77b200d602cd80d3837e9558eacd59304f" [label=""];
}

