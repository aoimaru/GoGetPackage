[app/sources/304356016.Dockerfile]
digraph {
  "sha256:70bf8d95b0c584d59db2e46870fbe77821af98d429be5fc7f34aa4824992fff0" [label="docker-image://docker.io/microsoft/dotnet:2.2.0-aspnetcore-runtime" shape="ellipse"];
  "sha256:0c89308eac3dbc8aa8b5028f86add3e8891ec19e6afe15bb60b38a8932b6a3de" [label="mkdir{path=/app}" shape="note"];
  "sha256:3c742155509b90e9c2eea075a7a3548b9ce24d787d44b4224f44d1ac55eb37ad" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:ad62353d0946b62d59c423ed8cf4070ce481edeb6afb3128a090ff75acc37020" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:90ad583dc44b45e6c7b54f401ddcadbbc560224379db6fa2acf2e4805bd038e2" [label="local://context" shape="ellipse"];
  "sha256:c239a0d25c79cbb4651e13f5e177bcb33043823ca730d5b40dedf1378d6edccb" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:61dfa6498da704231d7521b9c4946de730d7a3f7afeafe3a2f8f0f77ee30cfca" [label="/bin/sh -c dotnet restore ${sln_name} &&     dotnet build --no-restore -c Release ${sln_name}" shape="box"];
  "sha256:37b4ad816b654cd54e744d87e5ef66b72f2f72f30bdd8fb8428f8f73d3e06508" [label="mkdir{path=/src}" shape="note"];
  "sha256:e25be8ccca209f4c9050d8bbb4d8cab3f5c67e4543c94fb797774afd238ba6fd" [label="/bin/sh -c dotnet publish --no-restore -c Release -o /app" shape="box"];
  "sha256:5f7ca5bfe93543d1d876f0b95c04f5ef8ae08230542c0758d4cf450ac7d3d94c" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:fc7977cd11db8f21cd258f1cdcf3830e2b8b82b4cc499dcd1ff10daacb773653" [label="sha256:fc7977cd11db8f21cd258f1cdcf3830e2b8b82b4cc499dcd1ff10daacb773653" shape="plaintext"];
  "sha256:70bf8d95b0c584d59db2e46870fbe77821af98d429be5fc7f34aa4824992fff0" -> "sha256:0c89308eac3dbc8aa8b5028f86add3e8891ec19e6afe15bb60b38a8932b6a3de" [label=""];
  "sha256:0c89308eac3dbc8aa8b5028f86add3e8891ec19e6afe15bb60b38a8932b6a3de" -> "sha256:3c742155509b90e9c2eea075a7a3548b9ce24d787d44b4224f44d1ac55eb37ad" [label=""];
  "sha256:3c742155509b90e9c2eea075a7a3548b9ce24d787d44b4224f44d1ac55eb37ad" -> "sha256:ad62353d0946b62d59c423ed8cf4070ce481edeb6afb3128a090ff75acc37020" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:c239a0d25c79cbb4651e13f5e177bcb33043823ca730d5b40dedf1378d6edccb" [label=""];
  "sha256:90ad583dc44b45e6c7b54f401ddcadbbc560224379db6fa2acf2e4805bd038e2" -> "sha256:c239a0d25c79cbb4651e13f5e177bcb33043823ca730d5b40dedf1378d6edccb" [label=""];
  "sha256:c239a0d25c79cbb4651e13f5e177bcb33043823ca730d5b40dedf1378d6edccb" -> "sha256:61dfa6498da704231d7521b9c4946de730d7a3f7afeafe3a2f8f0f77ee30cfca" [label=""];
  "sha256:61dfa6498da704231d7521b9c4946de730d7a3f7afeafe3a2f8f0f77ee30cfca" -> "sha256:37b4ad816b654cd54e744d87e5ef66b72f2f72f30bdd8fb8428f8f73d3e06508" [label=""];
  "sha256:37b4ad816b654cd54e744d87e5ef66b72f2f72f30bdd8fb8428f8f73d3e06508" -> "sha256:e25be8ccca209f4c9050d8bbb4d8cab3f5c67e4543c94fb797774afd238ba6fd" [label=""];
  "sha256:ad62353d0946b62d59c423ed8cf4070ce481edeb6afb3128a090ff75acc37020" -> "sha256:5f7ca5bfe93543d1d876f0b95c04f5ef8ae08230542c0758d4cf450ac7d3d94c" [label=""];
  "sha256:e25be8ccca209f4c9050d8bbb4d8cab3f5c67e4543c94fb797774afd238ba6fd" -> "sha256:5f7ca5bfe93543d1d876f0b95c04f5ef8ae08230542c0758d4cf450ac7d3d94c" [label=""];
  "sha256:5f7ca5bfe93543d1d876f0b95c04f5ef8ae08230542c0758d4cf450ac7d3d94c" -> "sha256:fc7977cd11db8f21cd258f1cdcf3830e2b8b82b4cc499dcd1ff10daacb773653" [label=""];
}

