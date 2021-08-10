[app/sources/323442514.Dockerfile]
digraph {
  "sha256:e5b6b8c28100b22d23745a5ae4139c629b47f0239c7c1944c1b68c39e4e6f834" [label="docker-image://docker.io/microsoft/dotnet:2.1-runtime-nanoserver-1809" shape="ellipse"];
  "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" [label="mkdir{path=/app}" shape="note"];
  "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" [label="mkdir{path=/app}" shape="note"];
  "sha256:027f076f928a4e3411c7c0bab2b6192d2fc96c47a2f23cfd3fa0eb8e0caab2e7" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-nanoserver-1809" shape="ellipse"];
  "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" [label="mkdir{path=/src}" shape="note"];
  "sha256:e871ec68f35e0c810f358c1dffcc89bf0feb7e58364a45ea83fa4e232938879e" [label="local://context" shape="ellipse"];
  "sha256:d9e766cd88d1ed21271aa7eb88a6438e8f1c521b9f73d93caac3b5cf6034d977" [label="copy{src=/src/Microsoft.Azure.IIoT.Services.Notification.Blob/src/Microsoft.Azure.IIoT.Services.Notification.Blob.csproj, dest=/src/src/Microsoft.Azure.IIoT.Services.Notification.Blob/src/}" shape="note"];
  "sha256:702066d38d336f6c7c73385db335a2b25f59fc25bfbf981deca880123ec91284" [label="copy{src=/NuGet.Config, dest=/src/NuGet.Config}" shape="note"];
  "sha256:91c0600150f0fe162a42e8cff2cbe23754f989c7c1753fc01fb6932cd1a08da7" [label="copy{src=/*.props, dest=/}" shape="note"];
  "sha256:5ea18e60a9fad37bb2bbb41e9cb68336fb6205d88cd216655103542687a15f81" [label="/bin/sh -c dotnet restore --configfile NuGet.Config -nowarn:msb3202,nu1503 src/Microsoft.Azure.IIoT.Services.Notification.Blob/src/Microsoft.Azure.IIoT.Services.Notification.Blob.csproj" shape="box"];
  "sha256:18689c90af758554c2c120722352fac20a094a5377b21e6c77c082f5340db8dc" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:b897ea2c090adf05e3ee9a835d853709eb54503a9dd1aa2d6b2add0a23d0cc6f" [label="mkdir{path=/src/src/Microsoft.Azure.IIoT.Services.Notification.Blob/src}" shape="note"];
  "sha256:2ff5c57a501dc2c84c9e6562fb59a28840e18bf2cf36f57e273391b9de10c4da" [label="/bin/sh -c dotnet build Microsoft.Azure.IIoT.Services.Notification.Blob.csproj -c Release -o /app" shape="box"];
  "sha256:0acaaf8e6314808895d92ce14c6868d2b3347c09a41add05b310c27394934734" [label="/bin/sh -c dotnet publish Microsoft.Azure.IIoT.Services.Notification.Blob.csproj -c Release -o /app" shape="box"];
  "sha256:e7dc8be029ce7e2a82511cf330a8f8f611b3f5a131a708f1f4179af2f9294837" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:b851275a4ae41bdc56c7e24afc722ad6608ab5f981829f970fbde6d6a9240678" [label="sha256:b851275a4ae41bdc56c7e24afc722ad6608ab5f981829f970fbde6d6a9240678" shape="plaintext"];
  "sha256:e5b6b8c28100b22d23745a5ae4139c629b47f0239c7c1944c1b68c39e4e6f834" -> "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" [label=""];
  "sha256:41a5e61572cf054cfbbdc33ee21c57d635aae927c2e6862bb621b58c79c9c9f6" -> "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" [label=""];
  "sha256:027f076f928a4e3411c7c0bab2b6192d2fc96c47a2f23cfd3fa0eb8e0caab2e7" -> "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" [label=""];
  "sha256:2747c191f8a9d485c4e7fee4374e5df88b08ba8b0ed40f5a6df455cd2739340f" -> "sha256:d9e766cd88d1ed21271aa7eb88a6438e8f1c521b9f73d93caac3b5cf6034d977" [label=""];
  "sha256:e871ec68f35e0c810f358c1dffcc89bf0feb7e58364a45ea83fa4e232938879e" -> "sha256:d9e766cd88d1ed21271aa7eb88a6438e8f1c521b9f73d93caac3b5cf6034d977" [label=""];
  "sha256:d9e766cd88d1ed21271aa7eb88a6438e8f1c521b9f73d93caac3b5cf6034d977" -> "sha256:702066d38d336f6c7c73385db335a2b25f59fc25bfbf981deca880123ec91284" [label=""];
  "sha256:e871ec68f35e0c810f358c1dffcc89bf0feb7e58364a45ea83fa4e232938879e" -> "sha256:702066d38d336f6c7c73385db335a2b25f59fc25bfbf981deca880123ec91284" [label=""];
  "sha256:702066d38d336f6c7c73385db335a2b25f59fc25bfbf981deca880123ec91284" -> "sha256:91c0600150f0fe162a42e8cff2cbe23754f989c7c1753fc01fb6932cd1a08da7" [label=""];
  "sha256:e871ec68f35e0c810f358c1dffcc89bf0feb7e58364a45ea83fa4e232938879e" -> "sha256:91c0600150f0fe162a42e8cff2cbe23754f989c7c1753fc01fb6932cd1a08da7" [label=""];
  "sha256:91c0600150f0fe162a42e8cff2cbe23754f989c7c1753fc01fb6932cd1a08da7" -> "sha256:5ea18e60a9fad37bb2bbb41e9cb68336fb6205d88cd216655103542687a15f81" [label=""];
  "sha256:5ea18e60a9fad37bb2bbb41e9cb68336fb6205d88cd216655103542687a15f81" -> "sha256:18689c90af758554c2c120722352fac20a094a5377b21e6c77c082f5340db8dc" [label=""];
  "sha256:e871ec68f35e0c810f358c1dffcc89bf0feb7e58364a45ea83fa4e232938879e" -> "sha256:18689c90af758554c2c120722352fac20a094a5377b21e6c77c082f5340db8dc" [label=""];
  "sha256:18689c90af758554c2c120722352fac20a094a5377b21e6c77c082f5340db8dc" -> "sha256:b897ea2c090adf05e3ee9a835d853709eb54503a9dd1aa2d6b2add0a23d0cc6f" [label=""];
  "sha256:b897ea2c090adf05e3ee9a835d853709eb54503a9dd1aa2d6b2add0a23d0cc6f" -> "sha256:2ff5c57a501dc2c84c9e6562fb59a28840e18bf2cf36f57e273391b9de10c4da" [label=""];
  "sha256:2ff5c57a501dc2c84c9e6562fb59a28840e18bf2cf36f57e273391b9de10c4da" -> "sha256:0acaaf8e6314808895d92ce14c6868d2b3347c09a41add05b310c27394934734" [label=""];
  "sha256:d6b6f29a5e7939035fffcb7cbb5a7b11dbd72d8806ac043df96864cfa14e6f94" -> "sha256:e7dc8be029ce7e2a82511cf330a8f8f611b3f5a131a708f1f4179af2f9294837" [label=""];
  "sha256:0acaaf8e6314808895d92ce14c6868d2b3347c09a41add05b310c27394934734" -> "sha256:e7dc8be029ce7e2a82511cf330a8f8f611b3f5a131a708f1f4179af2f9294837" [label=""];
  "sha256:e7dc8be029ce7e2a82511cf330a8f8f611b3f5a131a708f1f4179af2f9294837" -> "sha256:b851275a4ae41bdc56c7e24afc722ad6608ab5f981829f970fbde6d6a9240678" [label=""];
}

