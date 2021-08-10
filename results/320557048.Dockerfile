[app/sources/320557048.Dockerfile]
digraph {
  "sha256:caed0343757fa79b41464910eda3cf10356eba92cad1c7992d9326abb25d68cd" [label="docker-image://mcr.microsoft.com/azure-functions/dotnet:2.0-iot-edge@sha256:2eb5a4f9323d8f9a37cc279506e8d4dbc7420393502595fbc1880ba42fdbac3e" shape="ellipse"];
  "sha256:14396220546564d21423a12887a06a609c41522093874d44939d0a02f7d3d449" [label="local://context" shape="ellipse"];
  "sha256:e97ce7b4a02a9cd007e5a6a91c96cbaecdba5bc46514e4758dad41f0361da2b2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c71cac92d381415b51ffa3510e2853c45f67660c104eee3f041d7104fe26ea18" [label="sha256:c71cac92d381415b51ffa3510e2853c45f67660c104eee3f041d7104fe26ea18" shape="plaintext"];
  "sha256:caed0343757fa79b41464910eda3cf10356eba92cad1c7992d9326abb25d68cd" -> "sha256:e97ce7b4a02a9cd007e5a6a91c96cbaecdba5bc46514e4758dad41f0361da2b2" [label=""];
  "sha256:14396220546564d21423a12887a06a609c41522093874d44939d0a02f7d3d449" -> "sha256:e97ce7b4a02a9cd007e5a6a91c96cbaecdba5bc46514e4758dad41f0361da2b2" [label=""];
  "sha256:e97ce7b4a02a9cd007e5a6a91c96cbaecdba5bc46514e4758dad41f0361da2b2" -> "sha256:c71cac92d381415b51ffa3510e2853c45f67660c104eee3f041d7104fe26ea18" [label=""];
}

