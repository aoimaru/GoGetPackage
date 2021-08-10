[app/sources/471996102.Dockerfile]
digraph {
  "sha256:09622ac908021bfd5894b5720266000068e9e9abefacd0f8cd5ab78a3bee4a87" [label="docker-image://docker.io/microsoft/aspnetcore:2" shape="ellipse"];
  "sha256:3520093227425d4efe5227c8be094731b48f8603e5e78089cf4b19fb7bf7d794" [label="mkdir{path=/app}" shape="note"];
  "sha256:df95cb2df6356f746a327ce958f4354d46b0ef805128ee09d790e4fc65ab9dd6" [label="docker-image://docker.io/microsoft/aspnetcore-build:2" shape="ellipse"];
  "sha256:9f40a24bd4628dd738c71a7210bc230913a9cd943cce56f6a3fc589e6f48b5fe" [label="mkdir{path=/app}" shape="note"];
  "sha256:96d0228107efceaaa650b57ee8d84b26f608e7ef0df141a76a4905a7e62e9cfa" [label="local://context" shape="ellipse"];
  "sha256:56560c3567f3ea79193eda8d14d609b775522d667caf5f5e427b2e9d1f73ffa8" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:b19499d8499a05d8ab57c5d32605040869f4bb5bcfbd2b9aa1cf02b639abdefc" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:18f61087b0778f6127e311c30b937b9a2d982eb1112cd284ac9135bd154fe1c1" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:82d01bf8942ba6650698a88d06c689f8eb0de1898e3d612ab5d08c7f24b6ef6d" [label="/bin/sh -c dotnet publish --output /app/ --configuration Release" shape="box"];
  "sha256:0ea19363db1e7efa27b0ef20978a793a9d0b55404665ce065916b547234bbca6" [label="/bin/sh -c sed -n 's:.*<AssemblyName>\\(.*\\)</AssemblyName>.*:\\1:p' *.csproj > __assemblyname" shape="box"];
  "sha256:a3b3ca639bc84d54466bafd0fd67001de4c8fb0a8839a80b8eb535a2ef04fdd7" [label="/bin/sh -c if [ ! -s __assemblyname ]; then filename=$(ls *.csproj); echo ${filename%.*} > __assemblyname; fi" shape="box"];
  "sha256:cb5075320d1554d7e7738be573b39d1503aa85fcb736c780ef4e76bc5e0cd6a6" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:61f15b36f67fa8838ba01c7e35df60fe23ca0f3424c11433c297aae0da10b22b" [label="sha256:61f15b36f67fa8838ba01c7e35df60fe23ca0f3424c11433c297aae0da10b22b" shape="plaintext"];
  "sha256:09622ac908021bfd5894b5720266000068e9e9abefacd0f8cd5ab78a3bee4a87" -> "sha256:3520093227425d4efe5227c8be094731b48f8603e5e78089cf4b19fb7bf7d794" [label=""];
  "sha256:df95cb2df6356f746a327ce958f4354d46b0ef805128ee09d790e4fc65ab9dd6" -> "sha256:9f40a24bd4628dd738c71a7210bc230913a9cd943cce56f6a3fc589e6f48b5fe" [label=""];
  "sha256:9f40a24bd4628dd738c71a7210bc230913a9cd943cce56f6a3fc589e6f48b5fe" -> "sha256:56560c3567f3ea79193eda8d14d609b775522d667caf5f5e427b2e9d1f73ffa8" [label=""];
  "sha256:96d0228107efceaaa650b57ee8d84b26f608e7ef0df141a76a4905a7e62e9cfa" -> "sha256:56560c3567f3ea79193eda8d14d609b775522d667caf5f5e427b2e9d1f73ffa8" [label=""];
  "sha256:56560c3567f3ea79193eda8d14d609b775522d667caf5f5e427b2e9d1f73ffa8" -> "sha256:b19499d8499a05d8ab57c5d32605040869f4bb5bcfbd2b9aa1cf02b639abdefc" [label=""];
  "sha256:b19499d8499a05d8ab57c5d32605040869f4bb5bcfbd2b9aa1cf02b639abdefc" -> "sha256:18f61087b0778f6127e311c30b937b9a2d982eb1112cd284ac9135bd154fe1c1" [label=""];
  "sha256:96d0228107efceaaa650b57ee8d84b26f608e7ef0df141a76a4905a7e62e9cfa" -> "sha256:18f61087b0778f6127e311c30b937b9a2d982eb1112cd284ac9135bd154fe1c1" [label=""];
  "sha256:18f61087b0778f6127e311c30b937b9a2d982eb1112cd284ac9135bd154fe1c1" -> "sha256:82d01bf8942ba6650698a88d06c689f8eb0de1898e3d612ab5d08c7f24b6ef6d" [label=""];
  "sha256:82d01bf8942ba6650698a88d06c689f8eb0de1898e3d612ab5d08c7f24b6ef6d" -> "sha256:0ea19363db1e7efa27b0ef20978a793a9d0b55404665ce065916b547234bbca6" [label=""];
  "sha256:0ea19363db1e7efa27b0ef20978a793a9d0b55404665ce065916b547234bbca6" -> "sha256:a3b3ca639bc84d54466bafd0fd67001de4c8fb0a8839a80b8eb535a2ef04fdd7" [label=""];
  "sha256:3520093227425d4efe5227c8be094731b48f8603e5e78089cf4b19fb7bf7d794" -> "sha256:cb5075320d1554d7e7738be573b39d1503aa85fcb736c780ef4e76bc5e0cd6a6" [label=""];
  "sha256:a3b3ca639bc84d54466bafd0fd67001de4c8fb0a8839a80b8eb535a2ef04fdd7" -> "sha256:cb5075320d1554d7e7738be573b39d1503aa85fcb736c780ef4e76bc5e0cd6a6" [label=""];
  "sha256:cb5075320d1554d7e7738be573b39d1503aa85fcb736c780ef4e76bc5e0cd6a6" -> "sha256:61f15b36f67fa8838ba01c7e35df60fe23ca0f3424c11433c297aae0da10b22b" [label=""];
}

