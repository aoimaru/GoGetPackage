[app/sources/206861992.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:fdebc6cb22ad2c453021ba037675d975f7085dfb77865087a1164d7d0c5e2c19" [label="local://context" shape="ellipse"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:007295dffab2e2914009f60ac63e87cf5226c59944d315a3b377c2c38deec1e8" [label="copy{src=/Fortune-Teller-Service/Fortune-Teller-Service.csproj, dest=/src/Fortune-Teller-Service/}" shape="note"];
  "sha256:99e5c394e390dd7f12845cb5a2599873e7b0161f4fe760536eadbaa82940a5ed" [label="/bin/sh -c dotnet restore \"Fortune-Teller-Service/Fortune-Teller-Service.csproj\"" shape="box"];
  "sha256:415f3f8f0dedd50f0d5d2b2574f902a9ab10f7378f10b14efafb56eec0773b60" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:66e93fcbddb98f11c847b73263e6aa54192b2a7afba0fb72747db30b9c09959c" [label="mkdir{path=/src/Fortune-Teller-Service}" shape="note"];
  "sha256:527ffa1e2f97d76cd97f5f84b81a75fcc1dbb1797235e2b646cf40e6ea2a985b" [label="/bin/sh -c dotnet build \"Fortune-Teller-Service.csproj\" -c Release -o /app" shape="box"];
  "sha256:301deb5690fa03f30f5148b0b3ca8eda8f34aa9e8fb9096c79e2a0cc31e4d6aa" [label="/bin/sh -c dotnet publish \"Fortune-Teller-Service.csproj\" -c Release -o /app" shape="box"];
  "sha256:9e33fc3c4212e38a5eb8fc8de6fac9d35f4e4bd03480e83d23adcb4b0933fc45" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:67ac83c3219490fa1e2bcab6651647af29c62ec1a3844f4962e8dc7841eba1d9" [label="sha256:67ac83c3219490fa1e2bcab6651647af29c62ec1a3844f4962e8dc7841eba1d9" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:007295dffab2e2914009f60ac63e87cf5226c59944d315a3b377c2c38deec1e8" [label=""];
  "sha256:fdebc6cb22ad2c453021ba037675d975f7085dfb77865087a1164d7d0c5e2c19" -> "sha256:007295dffab2e2914009f60ac63e87cf5226c59944d315a3b377c2c38deec1e8" [label=""];
  "sha256:007295dffab2e2914009f60ac63e87cf5226c59944d315a3b377c2c38deec1e8" -> "sha256:99e5c394e390dd7f12845cb5a2599873e7b0161f4fe760536eadbaa82940a5ed" [label=""];
  "sha256:99e5c394e390dd7f12845cb5a2599873e7b0161f4fe760536eadbaa82940a5ed" -> "sha256:415f3f8f0dedd50f0d5d2b2574f902a9ab10f7378f10b14efafb56eec0773b60" [label=""];
  "sha256:fdebc6cb22ad2c453021ba037675d975f7085dfb77865087a1164d7d0c5e2c19" -> "sha256:415f3f8f0dedd50f0d5d2b2574f902a9ab10f7378f10b14efafb56eec0773b60" [label=""];
  "sha256:415f3f8f0dedd50f0d5d2b2574f902a9ab10f7378f10b14efafb56eec0773b60" -> "sha256:66e93fcbddb98f11c847b73263e6aa54192b2a7afba0fb72747db30b9c09959c" [label=""];
  "sha256:66e93fcbddb98f11c847b73263e6aa54192b2a7afba0fb72747db30b9c09959c" -> "sha256:527ffa1e2f97d76cd97f5f84b81a75fcc1dbb1797235e2b646cf40e6ea2a985b" [label=""];
  "sha256:527ffa1e2f97d76cd97f5f84b81a75fcc1dbb1797235e2b646cf40e6ea2a985b" -> "sha256:301deb5690fa03f30f5148b0b3ca8eda8f34aa9e8fb9096c79e2a0cc31e4d6aa" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:9e33fc3c4212e38a5eb8fc8de6fac9d35f4e4bd03480e83d23adcb4b0933fc45" [label=""];
  "sha256:301deb5690fa03f30f5148b0b3ca8eda8f34aa9e8fb9096c79e2a0cc31e4d6aa" -> "sha256:9e33fc3c4212e38a5eb8fc8de6fac9d35f4e4bd03480e83d23adcb4b0933fc45" [label=""];
  "sha256:9e33fc3c4212e38a5eb8fc8de6fac9d35f4e4bd03480e83d23adcb4b0933fc45" -> "sha256:67ac83c3219490fa1e2bcab6651647af29c62ec1a3844f4962e8dc7841eba1d9" [label=""];
}

