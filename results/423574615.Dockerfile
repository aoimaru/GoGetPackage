[app/sources/423574615.Dockerfile]
digraph {
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2@sha256:08277d629af9d5324b63420a650cd96f86e73c4cfdcef6ea3c45912e7578956d" shape="ellipse"];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label="mkdir{path=/app}" shape="note"];
  "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" [label="mkdir{path=/app}" shape="note"];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2@sha256:42699bba2fe4545dd753694499e6db08478ba5b3bcc34b929e7e324d4c115449" shape="ellipse"];
  "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" [label="mkdir{path=/src}" shape="note"];
  "sha256:91a96558bd35c84184f6b7afbb9ead055b47746ea5c0c6598ba25baaf848cc52" [label="local://context" shape="ellipse"];
  "sha256:2ee86e607801822be7abf5eae04564c339ca456727be1a1802650414fb5a3fff" [label="copy{src=/src/Services/Webhooks/Webhooks.API/Webhooks.API.csproj, dest=/src/src/Services/Webhooks/Webhooks.API/}" shape="note"];
  "sha256:03ea91a929401d78236497da52acecbd5600b9e0be359e06e005a8d14547993b" [label="/bin/sh -c dotnet restore \"src/Services/Webhooks/Webhooks.API/Webhooks.API.csproj\"" shape="box"];
  "sha256:4a95ee35d6aad42e73f79bc2b88245fc01f914c1cb29e8b099585030a14a1d13" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:0cdf769ad5ef661428135f35b1de667b93c522a60eedc7d8fabea0dc60f80baa" [label="mkdir{path=/src/src/Services/Webhooks/Webhooks.API}" shape="note"];
  "sha256:3e085592d148142fe9e41111ecf0a780f531f64a257d5046b67667b1746a1ad6" [label="/bin/sh -c dotnet build \"Webhooks.API.csproj\" -c Release -o /app" shape="box"];
  "sha256:c025949e6903c698aeea58e1efc9463f6f39dcb2f9c11aee45aef658607aca11" [label="/bin/sh -c dotnet publish \"Webhooks.API.csproj\" -c Release -o /app" shape="box"];
  "sha256:eb33bfadf6562d2ced80cc60548fa0c5b403097ab181f8bd604c4ba0247ff666" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:74d1ee0e4ab6b5d5e353bb15d99ef6a5e98aca08dd799adc8c913ff7a2f3525f" [label="sha256:74d1ee0e4ab6b5d5e353bb15d99ef6a5e98aca08dd799adc8c913ff7a2f3525f" shape="plaintext"];
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" -> "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label=""];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" -> "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" [label=""];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" -> "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" [label=""];
  "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" -> "sha256:2ee86e607801822be7abf5eae04564c339ca456727be1a1802650414fb5a3fff" [label=""];
  "sha256:91a96558bd35c84184f6b7afbb9ead055b47746ea5c0c6598ba25baaf848cc52" -> "sha256:2ee86e607801822be7abf5eae04564c339ca456727be1a1802650414fb5a3fff" [label=""];
  "sha256:2ee86e607801822be7abf5eae04564c339ca456727be1a1802650414fb5a3fff" -> "sha256:03ea91a929401d78236497da52acecbd5600b9e0be359e06e005a8d14547993b" [label=""];
  "sha256:03ea91a929401d78236497da52acecbd5600b9e0be359e06e005a8d14547993b" -> "sha256:4a95ee35d6aad42e73f79bc2b88245fc01f914c1cb29e8b099585030a14a1d13" [label=""];
  "sha256:91a96558bd35c84184f6b7afbb9ead055b47746ea5c0c6598ba25baaf848cc52" -> "sha256:4a95ee35d6aad42e73f79bc2b88245fc01f914c1cb29e8b099585030a14a1d13" [label=""];
  "sha256:4a95ee35d6aad42e73f79bc2b88245fc01f914c1cb29e8b099585030a14a1d13" -> "sha256:0cdf769ad5ef661428135f35b1de667b93c522a60eedc7d8fabea0dc60f80baa" [label=""];
  "sha256:0cdf769ad5ef661428135f35b1de667b93c522a60eedc7d8fabea0dc60f80baa" -> "sha256:3e085592d148142fe9e41111ecf0a780f531f64a257d5046b67667b1746a1ad6" [label=""];
  "sha256:3e085592d148142fe9e41111ecf0a780f531f64a257d5046b67667b1746a1ad6" -> "sha256:c025949e6903c698aeea58e1efc9463f6f39dcb2f9c11aee45aef658607aca11" [label=""];
  "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" -> "sha256:eb33bfadf6562d2ced80cc60548fa0c5b403097ab181f8bd604c4ba0247ff666" [label=""];
  "sha256:c025949e6903c698aeea58e1efc9463f6f39dcb2f9c11aee45aef658607aca11" -> "sha256:eb33bfadf6562d2ced80cc60548fa0c5b403097ab181f8bd604c4ba0247ff666" [label=""];
  "sha256:eb33bfadf6562d2ced80cc60548fa0c5b403097ab181f8bd604c4ba0247ff666" -> "sha256:74d1ee0e4ab6b5d5e353bb15d99ef6a5e98aca08dd799adc8c913ff7a2f3525f" [label=""];
}

