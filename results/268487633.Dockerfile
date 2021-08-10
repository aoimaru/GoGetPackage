[app/sources/268487633.Dockerfile]
digraph {
  "sha256:9bc544715d238de3d8ed7d9f411b2de465bf0071e051377ee98c48c99a493459" [label="docker-image://docker.io/microsoft/aspnetcore:1.1.2-nanoserver" shape="ellipse"];
  "sha256:dbb2258f9ce4bf3c4fe457972a3fe52f328c68706c41208627061188b2ccb269" [label="mkdir{path=/C:\\dotnetapp}" shape="note"];
  "sha256:42c1b5f076404954923fd9a30bc1ec27d37d47b61258c61277bd16c93409a7eb" [label="docker-image://docker.io/microsoft/dotnet:1.1.2-sdk-nanoserver" shape="ellipse"];
  "sha256:9fb3fc0dc0b4e971cbffbc986cfd2394bc360d4b85aac4b5b3ab658b4feafd9b" [label="mkdir{path=/C:\\src\\NerdDinnerHomepage}" shape="note"];
  "sha256:f1cbfa132eeedce9205b8b70448fca6fc43ef728c2991b52359bcef9df8f4fde" [label="local://context" shape="ellipse"];
  "sha256:8c681669691fbebbc7198e598d5c5b0824af6eb095682997e7f4af89de879e4a" [label="copy{src=/src\\NerdDinnerHomepage\\NerdDinnerHomepage.csproj, dest=/C:\\src\\NerdDinnerHomepage/}" shape="note"];
  "sha256:27892e26e00958c7c76c62c5430ac76dd76d39b9482174f0a6b0742962887e65" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:4b7d257d71a02572a444eff6ded77f43a5d7ec247004292c30dfb487dc78f30b" [label="copy{src=/src\\NerdDinnerHomepage, dest=/C:\\src\\NerdDinnerHomepage/}" shape="note"];
  "sha256:cc2e0cc253f49cb107397d885ad32768ddbeef70bbd3380b0369bac483e43123" [label="/bin/sh -c dotnet publish" shape="box"];
  "sha256:a0ba734e419f0bb68b65ee1c1b4638f80c5e9cff79ab0e9bf9a908db721d13e8" [label="copy{src=/C:\\src\\NerdDinnerHomepage/C:\\src\\NerdDinnerHomepage\\bin\\Debug\\netcoreapp1.1\\publish, dest=/C:\\dotnetapp/}" shape="note"];
  "sha256:248ba5e4601f1fe37420bf6697c387745f3a7135b68b6a729b6540661cf8a371" [label="sha256:248ba5e4601f1fe37420bf6697c387745f3a7135b68b6a729b6540661cf8a371" shape="plaintext"];
  "sha256:9bc544715d238de3d8ed7d9f411b2de465bf0071e051377ee98c48c99a493459" -> "sha256:dbb2258f9ce4bf3c4fe457972a3fe52f328c68706c41208627061188b2ccb269" [label=""];
  "sha256:42c1b5f076404954923fd9a30bc1ec27d37d47b61258c61277bd16c93409a7eb" -> "sha256:9fb3fc0dc0b4e971cbffbc986cfd2394bc360d4b85aac4b5b3ab658b4feafd9b" [label=""];
  "sha256:9fb3fc0dc0b4e971cbffbc986cfd2394bc360d4b85aac4b5b3ab658b4feafd9b" -> "sha256:8c681669691fbebbc7198e598d5c5b0824af6eb095682997e7f4af89de879e4a" [label=""];
  "sha256:f1cbfa132eeedce9205b8b70448fca6fc43ef728c2991b52359bcef9df8f4fde" -> "sha256:8c681669691fbebbc7198e598d5c5b0824af6eb095682997e7f4af89de879e4a" [label=""];
  "sha256:8c681669691fbebbc7198e598d5c5b0824af6eb095682997e7f4af89de879e4a" -> "sha256:27892e26e00958c7c76c62c5430ac76dd76d39b9482174f0a6b0742962887e65" [label=""];
  "sha256:27892e26e00958c7c76c62c5430ac76dd76d39b9482174f0a6b0742962887e65" -> "sha256:4b7d257d71a02572a444eff6ded77f43a5d7ec247004292c30dfb487dc78f30b" [label=""];
  "sha256:f1cbfa132eeedce9205b8b70448fca6fc43ef728c2991b52359bcef9df8f4fde" -> "sha256:4b7d257d71a02572a444eff6ded77f43a5d7ec247004292c30dfb487dc78f30b" [label=""];
  "sha256:4b7d257d71a02572a444eff6ded77f43a5d7ec247004292c30dfb487dc78f30b" -> "sha256:cc2e0cc253f49cb107397d885ad32768ddbeef70bbd3380b0369bac483e43123" [label=""];
  "sha256:dbb2258f9ce4bf3c4fe457972a3fe52f328c68706c41208627061188b2ccb269" -> "sha256:a0ba734e419f0bb68b65ee1c1b4638f80c5e9cff79ab0e9bf9a908db721d13e8" [label=""];
  "sha256:cc2e0cc253f49cb107397d885ad32768ddbeef70bbd3380b0369bac483e43123" -> "sha256:a0ba734e419f0bb68b65ee1c1b4638f80c5e9cff79ab0e9bf9a908db721d13e8" [label=""];
  "sha256:a0ba734e419f0bb68b65ee1c1b4638f80c5e9cff79ab0e9bf9a908db721d13e8" -> "sha256:248ba5e4601f1fe37420bf6697c387745f3a7135b68b6a729b6540661cf8a371" [label=""];
}

