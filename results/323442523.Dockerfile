[app/sources/323442523.Dockerfile]
digraph {
  "sha256:e5b6b8c28100b22d23745a5ae4139c629b47f0239c7c1944c1b68c39e4e6f834" [label="docker-image://docker.io/microsoft/dotnet:2.1-runtime-nanoserver-1809" shape="ellipse"];
  "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" [label="mkdir{path=/app}" shape="note"];
  "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" [label="mkdir{path=/app}" shape="note"];
  "sha256:027f076f928a4e3411c7c0bab2b6192d2fc96c47a2f23cfd3fa0eb8e0caab2e7" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-nanoserver-1809" shape="ellipse"];
  "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" [label="mkdir{path=/src}" shape="note"];
  "sha256:5d9a90e6fae1edbc62ca6038fb028164c35bce04204625b956e47c6fc2b77725" [label="local://context" shape="ellipse"];
  "sha256:15f4d583c0a9e434a009342924bd07c08527bd6efd6fc82760a0cdb547c29ce8" [label="copy{src=/src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway/src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway.csproj, dest=/src/src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway/src/}" shape="note"];
  "sha256:c5b32f90716ab6d00d716fc8203b85a429c7dc520ab4bd1100502bc03c33c0b5" [label="copy{src=/NuGet.Config, dest=/src/NuGet.Config}" shape="note"];
  "sha256:f6f08104f74b3e7b4c05aa1e7488c308fa581f56c5bd70b8dc1f72300313af6e" [label="copy{src=/*.props, dest=/}" shape="note"];
  "sha256:95652e78605d3be7d9beb30abeb4938d9ddb0e7b64bc6725f73bd19b05875c4a" [label="/bin/sh -c dotnet restore --configfile NuGet.Config -nowarn:msb3202,nu1503 src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway/src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway.csproj" shape="box"];
  "sha256:337372d9c685944b5d19d4269df4ec46b6bf8ae55c7b4ac80403c6753a8ce09e" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:30f48bde0c9e76427509eb3f99bbc48aa0a302ac52f77a08a7456ca88def68e5" [label="mkdir{path=/src/src/Microsoft.Azure.IIoT.Services.OpcUa.Gateway/src}" shape="note"];
  "sha256:37e5018863da41db77c3ce3a8d171f67e1c7839bea6dd830e7e6717f93a90fe2" [label="/bin/sh -c dotnet build Microsoft.Azure.IIoT.Services.OpcUa.Gateway.csproj -c Release -o /app" shape="box"];
  "sha256:4e346a88156dae2b9cdbfdbe80b85e52785908dbc5a66c4440427725be621378" [label="/bin/sh -c dotnet publish Microsoft.Azure.IIoT.Services.OpcUa.Gateway.csproj -c Release -o /app" shape="box"];
  "sha256:69d6859586f109fd37388f3c260c56c643d5d13cda3d03aa03f74362622799d6" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:31c72ed0e3f6794debb76eb11c674d93cac859b3436e5a393c57325411ba6bf2" [label="sha256:31c72ed0e3f6794debb76eb11c674d93cac859b3436e5a393c57325411ba6bf2" shape="plaintext"];
  "sha256:e5b6b8c28100b22d23745a5ae4139c629b47f0239c7c1944c1b68c39e4e6f834" -> "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" [label=""];
  "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" -> "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" [label=""];
  "sha256:027f076f928a4e3411c7c0bab2b6192d2fc96c47a2f23cfd3fa0eb8e0caab2e7" -> "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" [label=""];
  "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" -> "sha256:15f4d583c0a9e434a009342924bd07c08527bd6efd6fc82760a0cdb547c29ce8" [label=""];
  "sha256:5d9a90e6fae1edbc62ca6038fb028164c35bce04204625b956e47c6fc2b77725" -> "sha256:15f4d583c0a9e434a009342924bd07c08527bd6efd6fc82760a0cdb547c29ce8" [label=""];
  "sha256:15f4d583c0a9e434a009342924bd07c08527bd6efd6fc82760a0cdb547c29ce8" -> "sha256:c5b32f90716ab6d00d716fc8203b85a429c7dc520ab4bd1100502bc03c33c0b5" [label=""];
  "sha256:5d9a90e6fae1edbc62ca6038fb028164c35bce04204625b956e47c6fc2b77725" -> "sha256:c5b32f90716ab6d00d716fc8203b85a429c7dc520ab4bd1100502bc03c33c0b5" [label=""];
  "sha256:c5b32f90716ab6d00d716fc8203b85a429c7dc520ab4bd1100502bc03c33c0b5" -> "sha256:f6f08104f74b3e7b4c05aa1e7488c308fa581f56c5bd70b8dc1f72300313af6e" [label=""];
  "sha256:5d9a90e6fae1edbc62ca6038fb028164c35bce04204625b956e47c6fc2b77725" -> "sha256:f6f08104f74b3e7b4c05aa1e7488c308fa581f56c5bd70b8dc1f72300313af6e" [label=""];
  "sha256:f6f08104f74b3e7b4c05aa1e7488c308fa581f56c5bd70b8dc1f72300313af6e" -> "sha256:95652e78605d3be7d9beb30abeb4938d9ddb0e7b64bc6725f73bd19b05875c4a" [label=""];
  "sha256:95652e78605d3be7d9beb30abeb4938d9ddb0e7b64bc6725f73bd19b05875c4a" -> "sha256:337372d9c685944b5d19d4269df4ec46b6bf8ae55c7b4ac80403c6753a8ce09e" [label=""];
  "sha256:5d9a90e6fae1edbc62ca6038fb028164c35bce04204625b956e47c6fc2b77725" -> "sha256:337372d9c685944b5d19d4269df4ec46b6bf8ae55c7b4ac80403c6753a8ce09e" [label=""];
  "sha256:337372d9c685944b5d19d4269df4ec46b6bf8ae55c7b4ac80403c6753a8ce09e" -> "sha256:30f48bde0c9e76427509eb3f99bbc48aa0a302ac52f77a08a7456ca88def68e5" [label=""];
  "sha256:30f48bde0c9e76427509eb3f99bbc48aa0a302ac52f77a08a7456ca88def68e5" -> "sha256:37e5018863da41db77c3ce3a8d171f67e1c7839bea6dd830e7e6717f93a90fe2" [label=""];
  "sha256:37e5018863da41db77c3ce3a8d171f67e1c7839bea6dd830e7e6717f93a90fe2" -> "sha256:4e346a88156dae2b9cdbfdbe80b85e52785908dbc5a66c4440427725be621378" [label=""];
  "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" -> "sha256:69d6859586f109fd37388f3c260c56c643d5d13cda3d03aa03f74362622799d6" [label=""];
  "sha256:4e346a88156dae2b9cdbfdbe80b85e52785908dbc5a66c4440427725be621378" -> "sha256:69d6859586f109fd37388f3c260c56c643d5d13cda3d03aa03f74362622799d6" [label=""];
  "sha256:69d6859586f109fd37388f3c260c56c643d5d13cda3d03aa03f74362622799d6" -> "sha256:31c72ed0e3f6794debb76eb11c674d93cac859b3436e5a393c57325411ba6bf2" [label=""];
}

