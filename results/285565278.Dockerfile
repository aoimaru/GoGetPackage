[app/sources/285565278.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label="mkdir{path=/app}" shape="note"];
  "sha256:8c3314d4999e56c5eab9f277cda5cb0b185c1d825f343afc446309eff6532b6b" [label="local://context" shape="ellipse"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:76460ea899d82896dea683ad4879dd7c9e312bfad5c86f15fed1691e9dc2cdad" [label="copy{src=/samples/WebApplication/WebApplication.csproj, dest=/src/samples/WebApplication/}" shape="note"];
  "sha256:cca00e1c2c22ebd784cb5b5bdbabfc76d25c9afd50af8e558fbe9d476265a672" [label="copy{src=/src/AspNetCore.Rendertron/AspNetCore.Rendertron.csproj, dest=/src/src/AspNetCore.Rendertron/}" shape="note"];
  "sha256:78b9eb8edb8eb8fd34d3b97ae78ac73864fb18b6f25e19bbd8a123dd1c1717ef" [label="/bin/sh -c dotnet restore samples/WebApplication/WebApplication.csproj" shape="box"];
  "sha256:8c183b232d7a43af2a64a7bc543df6026896e3bdc4bb93fdf6abeb595d2b6d88" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:21421c4a04116b1e1dda96c6b1cc02958dd45224d298bd3454d8aaa12126e6c0" [label="mkdir{path=/src/samples/WebApplication}" shape="note"];
  "sha256:8fb36f57c0a5f8bf5be9ef69f8712c704cad421c57a5151fb4649237ae839e9f" [label="/bin/sh -c dotnet build WebApplication.csproj -c Release -o /app" shape="box"];
  "sha256:18468924b94e78dc533196ab4c3254aab4feac80bf0e2ff470ea29fbbb74e4d2" [label="/bin/sh -c dotnet publish WebApplication.csproj -c Release -o /app" shape="box"];
  "sha256:ade4d30a0d763c9475a3b3aa687849a5346658717917173b26cb5e56285ab0c9" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:7cf8b9aaf49f4d1630925ab9d959286e84430d1aa9ea27a4b33061a28c9cdb14" [label="sha256:7cf8b9aaf49f4d1630925ab9d959286e84430d1aa9ea27a4b33061a28c9cdb14" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:76460ea899d82896dea683ad4879dd7c9e312bfad5c86f15fed1691e9dc2cdad" [label=""];
  "sha256:8c3314d4999e56c5eab9f277cda5cb0b185c1d825f343afc446309eff6532b6b" -> "sha256:76460ea899d82896dea683ad4879dd7c9e312bfad5c86f15fed1691e9dc2cdad" [label=""];
  "sha256:76460ea899d82896dea683ad4879dd7c9e312bfad5c86f15fed1691e9dc2cdad" -> "sha256:cca00e1c2c22ebd784cb5b5bdbabfc76d25c9afd50af8e558fbe9d476265a672" [label=""];
  "sha256:8c3314d4999e56c5eab9f277cda5cb0b185c1d825f343afc446309eff6532b6b" -> "sha256:cca00e1c2c22ebd784cb5b5bdbabfc76d25c9afd50af8e558fbe9d476265a672" [label=""];
  "sha256:cca00e1c2c22ebd784cb5b5bdbabfc76d25c9afd50af8e558fbe9d476265a672" -> "sha256:78b9eb8edb8eb8fd34d3b97ae78ac73864fb18b6f25e19bbd8a123dd1c1717ef" [label=""];
  "sha256:78b9eb8edb8eb8fd34d3b97ae78ac73864fb18b6f25e19bbd8a123dd1c1717ef" -> "sha256:8c183b232d7a43af2a64a7bc543df6026896e3bdc4bb93fdf6abeb595d2b6d88" [label=""];
  "sha256:8c3314d4999e56c5eab9f277cda5cb0b185c1d825f343afc446309eff6532b6b" -> "sha256:8c183b232d7a43af2a64a7bc543df6026896e3bdc4bb93fdf6abeb595d2b6d88" [label=""];
  "sha256:8c183b232d7a43af2a64a7bc543df6026896e3bdc4bb93fdf6abeb595d2b6d88" -> "sha256:21421c4a04116b1e1dda96c6b1cc02958dd45224d298bd3454d8aaa12126e6c0" [label=""];
  "sha256:21421c4a04116b1e1dda96c6b1cc02958dd45224d298bd3454d8aaa12126e6c0" -> "sha256:8fb36f57c0a5f8bf5be9ef69f8712c704cad421c57a5151fb4649237ae839e9f" [label=""];
  "sha256:8fb36f57c0a5f8bf5be9ef69f8712c704cad421c57a5151fb4649237ae839e9f" -> "sha256:18468924b94e78dc533196ab4c3254aab4feac80bf0e2ff470ea29fbbb74e4d2" [label=""];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" -> "sha256:ade4d30a0d763c9475a3b3aa687849a5346658717917173b26cb5e56285ab0c9" [label=""];
  "sha256:18468924b94e78dc533196ab4c3254aab4feac80bf0e2ff470ea29fbbb74e4d2" -> "sha256:ade4d30a0d763c9475a3b3aa687849a5346658717917173b26cb5e56285ab0c9" [label=""];
  "sha256:ade4d30a0d763c9475a3b3aa687849a5346658717917173b26cb5e56285ab0c9" -> "sha256:7cf8b9aaf49f4d1630925ab9d959286e84430d1aa9ea27a4b33061a28c9cdb14" [label=""];
}

