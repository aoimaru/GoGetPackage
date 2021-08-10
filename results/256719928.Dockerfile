[app/sources/256719928.Dockerfile]
digraph {
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2@sha256:08277d629af9d5324b63420a650cd96f86e73c4cfdcef6ea3c45912e7578956d" shape="ellipse"];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label="mkdir{path=/app}" shape="note"];
  "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" [label="mkdir{path=/app}" shape="note"];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2@sha256:42699bba2fe4545dd753694499e6db08478ba5b3bcc34b929e7e324d4c115449" shape="ellipse"];
  "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" [label="mkdir{path=/src}" shape="note"];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" [label="local://context" shape="ellipse"];
  "sha256:83d04fadb0c5e8109cab93d7d7e05ec4f90007656fcf9be568ac3221530161ef" [label="copy{src=/scripts, dest=/src/scripts/}" shape="note"];
  "sha256:9808f526854397d5024ba78d917a599127eefe651784fa0245720f7fd0ffbb03" [label="copy{src=/src/ApiGateways/*/*.csproj, dest=/src/csproj-files/}" shape="note"];
  "sha256:433f2d7a056e3e6293a84253314d254aff7fd2adc0d858428df8cadbe191a891" [label="copy{src=/src/ApiGateways/*/*/*.csproj, dest=/src/csproj-files/}" shape="note"];
  "sha256:7cbed782c03fcd57591743f28422b066866cc425e3a517071bc0d68ea2425f8d" [label="copy{src=/src/BuildingBlocks/*/*/*.csproj, dest=/src/csproj-files/}" shape="note"];
  "sha256:e9f9dcccac56a38636aa6584bfb5d22aef8dac496f280cfcd58852b03822b9fe" [label="copy{src=/src/Services/*/*/*.csproj, dest=/src/csproj-files/}" shape="note"];
  "sha256:4b06f673c8358fa6d3f8bc8f6438e0341fa7a08e6fd0dfaa92eccddf69ccf552" [label="copy{src=/src/Web/*/*.csproj, dest=/src/csproj-files/}" shape="note"];
  "sha256:328c90ed7313e05b4dae39cac604bf286bd87cacd26d19abf6f2ec5ced4ad6b8" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:2eb9021aa45d91af0c8c39f7ea68f5699f637f439475821b3da1294b11d8e598" [label="mkdir{path=/src/src/Services/Marketing/Marketing.API}" shape="note"];
  "sha256:88b1821d1953ea1f54165a522289c3862cdf747d9815851879927c92effb2816" [label="/bin/sh -c dotnet publish -c Release -o /app" shape="box"];
  "sha256:42d3b83aaea2d4599388bcb7674ca08cbf14a64720b71900448d96519bc6cba6" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:49bff74215de938a75edd20c3fcd0aa53ab5ca165c38a46a1785b22f7bf3f2fa" [label="sha256:49bff74215de938a75edd20c3fcd0aa53ab5ca165c38a46a1785b22f7bf3f2fa" shape="plaintext"];
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" -> "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label=""];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" -> "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" [label=""];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" -> "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" [label=""];
  "sha256:b20133729c8f1fdba21e5c7844de32fb91db2c8d0dc4235692cd55fe6a17eed9" -> "sha256:83d04fadb0c5e8109cab93d7d7e05ec4f90007656fcf9be568ac3221530161ef" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:83d04fadb0c5e8109cab93d7d7e05ec4f90007656fcf9be568ac3221530161ef" [label=""];
  "sha256:83d04fadb0c5e8109cab93d7d7e05ec4f90007656fcf9be568ac3221530161ef" -> "sha256:9808f526854397d5024ba78d917a599127eefe651784fa0245720f7fd0ffbb03" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:9808f526854397d5024ba78d917a599127eefe651784fa0245720f7fd0ffbb03" [label=""];
  "sha256:9808f526854397d5024ba78d917a599127eefe651784fa0245720f7fd0ffbb03" -> "sha256:433f2d7a056e3e6293a84253314d254aff7fd2adc0d858428df8cadbe191a891" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:433f2d7a056e3e6293a84253314d254aff7fd2adc0d858428df8cadbe191a891" [label=""];
  "sha256:433f2d7a056e3e6293a84253314d254aff7fd2adc0d858428df8cadbe191a891" -> "sha256:7cbed782c03fcd57591743f28422b066866cc425e3a517071bc0d68ea2425f8d" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:7cbed782c03fcd57591743f28422b066866cc425e3a517071bc0d68ea2425f8d" [label=""];
  "sha256:7cbed782c03fcd57591743f28422b066866cc425e3a517071bc0d68ea2425f8d" -> "sha256:e9f9dcccac56a38636aa6584bfb5d22aef8dac496f280cfcd58852b03822b9fe" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:e9f9dcccac56a38636aa6584bfb5d22aef8dac496f280cfcd58852b03822b9fe" [label=""];
  "sha256:e9f9dcccac56a38636aa6584bfb5d22aef8dac496f280cfcd58852b03822b9fe" -> "sha256:4b06f673c8358fa6d3f8bc8f6438e0341fa7a08e6fd0dfaa92eccddf69ccf552" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:4b06f673c8358fa6d3f8bc8f6438e0341fa7a08e6fd0dfaa92eccddf69ccf552" [label=""];
  "sha256:4b06f673c8358fa6d3f8bc8f6438e0341fa7a08e6fd0dfaa92eccddf69ccf552" -> "sha256:328c90ed7313e05b4dae39cac604bf286bd87cacd26d19abf6f2ec5ced4ad6b8" [label=""];
  "sha256:cc00a3b63eb80dfa58384b70df27a2e6ed059e3eb2b0c2f65b6c9e50b848d311" -> "sha256:328c90ed7313e05b4dae39cac604bf286bd87cacd26d19abf6f2ec5ced4ad6b8" [label=""];
  "sha256:328c90ed7313e05b4dae39cac604bf286bd87cacd26d19abf6f2ec5ced4ad6b8" -> "sha256:2eb9021aa45d91af0c8c39f7ea68f5699f637f439475821b3da1294b11d8e598" [label=""];
  "sha256:2eb9021aa45d91af0c8c39f7ea68f5699f637f439475821b3da1294b11d8e598" -> "sha256:88b1821d1953ea1f54165a522289c3862cdf747d9815851879927c92effb2816" [label=""];
  "sha256:312f1732d7ca411fd4459471a44e8f8b6feb1800d081fcfc419df4ed46ed5b0e" -> "sha256:42d3b83aaea2d4599388bcb7674ca08cbf14a64720b71900448d96519bc6cba6" [label=""];
  "sha256:88b1821d1953ea1f54165a522289c3862cdf747d9815851879927c92effb2816" -> "sha256:42d3b83aaea2d4599388bcb7674ca08cbf14a64720b71900448d96519bc6cba6" [label=""];
  "sha256:42d3b83aaea2d4599388bcb7674ca08cbf14a64720b71900448d96519bc6cba6" -> "sha256:49bff74215de938a75edd20c3fcd0aa53ab5ca165c38a46a1785b22f7bf3f2fa" [label=""];
}

