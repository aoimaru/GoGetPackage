[app/sources/369020337.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:e6f1ecfcc9901592d4f7b2b86bd5a2a512c52e047f89556dbba4772667a4da6c" [label="local://context" shape="ellipse"];
  "sha256:8881c3a27e28e6dbf773fe6f843da3fdad43be9c6d89d5e48057c9121837d877" [label="copy{src=/Source/Examples/AspNetCoreDocker/AspNetCoreDocker.csproj, dest=/src/Source/Examples/AspNetCoreDocker/}" shape="note"];
  "sha256:94a5e72bffd269e24fd45d515d5cfc639fca3c1ac05035eca452057d0066c75e" [label="/bin/sh -c dotnet restore \"Source/Examples/AspNetCoreDocker/AspNetCoreDocker.csproj\"" shape="box"];
  "sha256:eba8fb5f9a20494ad6926dbed7fe9e44fe08568325ae99405f78d1b5b58a91f2" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:a732546967a0372f3fb476512dbed0ac6087af5dda8c5736cd21ce1c675f6858" [label="mkdir{path=/src/Source/Examples/AspNetCoreDocker}" shape="note"];
  "sha256:e96eda8dbee97f8c98426e865ee8d5682fb49b92486e40f315db8152584eea93" [label="/bin/sh -c dotnet build \"AspNetCoreDocker.csproj\" -c Release -o /app" shape="box"];
  "sha256:e0f9e0337a17a39dfba2f7f3dae1f19090d34aa3cca9969e33057608e5182cd4" [label="/bin/sh -c dotnet publish \"AspNetCoreDocker.csproj\" -c Release -o /app" shape="box"];
  "sha256:76b5008e1daa56557661dedefed4bc8d57af05525b10f6243e26424d1db2ac4c" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:977d12fa780ae1d5c8d13fca51b078bda10aaf162d35d21d983541702b986069" [label="sha256:977d12fa780ae1d5c8d13fca51b078bda10aaf162d35d21d983541702b986069" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:8881c3a27e28e6dbf773fe6f843da3fdad43be9c6d89d5e48057c9121837d877" [label=""];
  "sha256:e6f1ecfcc9901592d4f7b2b86bd5a2a512c52e047f89556dbba4772667a4da6c" -> "sha256:8881c3a27e28e6dbf773fe6f843da3fdad43be9c6d89d5e48057c9121837d877" [label=""];
  "sha256:8881c3a27e28e6dbf773fe6f843da3fdad43be9c6d89d5e48057c9121837d877" -> "sha256:94a5e72bffd269e24fd45d515d5cfc639fca3c1ac05035eca452057d0066c75e" [label=""];
  "sha256:94a5e72bffd269e24fd45d515d5cfc639fca3c1ac05035eca452057d0066c75e" -> "sha256:eba8fb5f9a20494ad6926dbed7fe9e44fe08568325ae99405f78d1b5b58a91f2" [label=""];
  "sha256:e6f1ecfcc9901592d4f7b2b86bd5a2a512c52e047f89556dbba4772667a4da6c" -> "sha256:eba8fb5f9a20494ad6926dbed7fe9e44fe08568325ae99405f78d1b5b58a91f2" [label=""];
  "sha256:eba8fb5f9a20494ad6926dbed7fe9e44fe08568325ae99405f78d1b5b58a91f2" -> "sha256:a732546967a0372f3fb476512dbed0ac6087af5dda8c5736cd21ce1c675f6858" [label=""];
  "sha256:a732546967a0372f3fb476512dbed0ac6087af5dda8c5736cd21ce1c675f6858" -> "sha256:e96eda8dbee97f8c98426e865ee8d5682fb49b92486e40f315db8152584eea93" [label=""];
  "sha256:e96eda8dbee97f8c98426e865ee8d5682fb49b92486e40f315db8152584eea93" -> "sha256:e0f9e0337a17a39dfba2f7f3dae1f19090d34aa3cca9969e33057608e5182cd4" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:76b5008e1daa56557661dedefed4bc8d57af05525b10f6243e26424d1db2ac4c" [label=""];
  "sha256:e0f9e0337a17a39dfba2f7f3dae1f19090d34aa3cca9969e33057608e5182cd4" -> "sha256:76b5008e1daa56557661dedefed4bc8d57af05525b10f6243e26424d1db2ac4c" [label=""];
  "sha256:76b5008e1daa56557661dedefed4bc8d57af05525b10f6243e26424d1db2ac4c" -> "sha256:977d12fa780ae1d5c8d13fca51b078bda10aaf162d35d21d983541702b986069" [label=""];
}

