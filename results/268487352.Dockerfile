[app/sources/268487352.Dockerfile]
digraph {
  "sha256:1f5c9b84e348c576a6f85d97989dd29d09a43c77f81f4c36973e5d64f77e1980" [label="docker-image://docker.io/microsoft/dotnet:1.1-runtime-nanoserver" shape="ellipse"];
  "sha256:71752c149ffa766b09077cf8b02f987754a0e7191c1f920fccdb71225239330d" [label="mkdir{path=/dotnetapp}" shape="note"];
  "sha256:210105d2b8f2ada1ec68a913aea13d0a1422c8134be14fb8e02fb27f5645c93a" [label="docker-image://docker.io/microsoft/dotnet:1.1-sdk-nanoserver" shape="ellipse"];
  "sha256:4f804271ddc5647cb773fe3fd89e6c3feb26588a163d4d1d2339f8271e35643c" [label="mkdir{path=/src}" shape="note"];
  "sha256:ed4894f24af492b3f6fdacc0dfbb84eb1e90362a8b4b0ea430b8c5b48f50c487" [label="local://context" shape="ellipse"];
  "sha256:a66044a75d73c64f9f4a7d438a95a64307620aa3a84dc0b3189991b63d2ed3fd" [label="copy{src=/src, dest=/src/}" shape="note"];
  "sha256:f238ee62f58833a6a3d9b33e483b402f0248c3cc77fb3afb4e2926c93b193e91" [label="/bin/sh -c dotnet restore; dotnet publish" shape="box"];
  "sha256:31ba440016c5db0d8c52ed1ebfbb1e554cce35298a130af095081bb8674e122a" [label="copy{src=/src/bin/Debug/netcoreapp1.1/publish, dest=/dotnetapp/}" shape="note"];
  "sha256:ea6a6df75bba3c5b1d7989f1260c0411ad14963c025fb394baaf57e088862a82" [label="sha256:ea6a6df75bba3c5b1d7989f1260c0411ad14963c025fb394baaf57e088862a82" shape="plaintext"];
  "sha256:1f5c9b84e348c576a6f85d97989dd29d09a43c77f81f4c36973e5d64f77e1980" -> "sha256:71752c149ffa766b09077cf8b02f987754a0e7191c1f920fccdb71225239330d" [label=""];
  "sha256:210105d2b8f2ada1ec68a913aea13d0a1422c8134be14fb8e02fb27f5645c93a" -> "sha256:4f804271ddc5647cb773fe3fd89e6c3feb26588a163d4d1d2339f8271e35643c" [label=""];
  "sha256:4f804271ddc5647cb773fe3fd89e6c3feb26588a163d4d1d2339f8271e35643c" -> "sha256:a66044a75d73c64f9f4a7d438a95a64307620aa3a84dc0b3189991b63d2ed3fd" [label=""];
  "sha256:ed4894f24af492b3f6fdacc0dfbb84eb1e90362a8b4b0ea430b8c5b48f50c487" -> "sha256:a66044a75d73c64f9f4a7d438a95a64307620aa3a84dc0b3189991b63d2ed3fd" [label=""];
  "sha256:a66044a75d73c64f9f4a7d438a95a64307620aa3a84dc0b3189991b63d2ed3fd" -> "sha256:f238ee62f58833a6a3d9b33e483b402f0248c3cc77fb3afb4e2926c93b193e91" [label=""];
  "sha256:71752c149ffa766b09077cf8b02f987754a0e7191c1f920fccdb71225239330d" -> "sha256:31ba440016c5db0d8c52ed1ebfbb1e554cce35298a130af095081bb8674e122a" [label=""];
  "sha256:f238ee62f58833a6a3d9b33e483b402f0248c3cc77fb3afb4e2926c93b193e91" -> "sha256:31ba440016c5db0d8c52ed1ebfbb1e554cce35298a130af095081bb8674e122a" [label=""];
  "sha256:31ba440016c5db0d8c52ed1ebfbb1e554cce35298a130af095081bb8674e122a" -> "sha256:ea6a6df75bba3c5b1d7989f1260c0411ad14963c025fb394baaf57e088862a82" [label=""];
}

