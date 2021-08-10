[app/sources/465209771.Dockerfile]
digraph {
  "sha256:7a2e362b96a8ac9f5cd040006e3e80c15ec04454a64eb585896a4d7ac8d26b0f" [label="docker-image://docker.io/microsoft/iis:latest" shape="ellipse"];
  "sha256:b320e463e2052946f35de092bffff72fda5c3f7a8bcba2445c960ad174ac704e" [label="https://download.visualstudio.microsoft.com/download/pr/48adfc75-bce7-4621-ae7a-5f3c4cf4fc1f/9a8e07173697581a6ada4bf04c845a05/dotnet-hosting-2.2.0-win.exe" shape="ellipse"];
  "sha256:6c408c7f884fad22c573851d2de35abe680da5e6bc2fcbb93fd58d4b3c95cc81" [label="copy{src=/dotnet-hosting-2.2.0-win.exe, dest=/C:/setup/dotnet-hosting-2.2.0-win.exe}" shape="note"];
  "sha256:83d89e1d1b3351cf9c796b81c08076a7bcae44307f72a287f687c425ae29a79c" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue'; start-process -Filepath \"C:/setup/dotnet-hosting-2.2.0-win.exe\" -ArgumentList @('/install', '/quiet', '/norestart') -Wait" shape="box"];
  "sha256:90869a9ed225c39fc380bae05bc792a975b1ff0c315718df098c0886f49cbae6" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue'; Remove-Item -Force \"C:/setup/dotnet-hosting-2.2.0-win.exe\"" shape="box"];
  "sha256:281d9affd50812f31743700d303ffa32faafb7c3367ac028e574b4a8c2107f09" [label="mkdir{path=/inetpub/wwwroot/samplewebapp}" shape="note"];
  "sha256:9406face7689296184b53d6e5fb2882788bdac607bca7b34ec1f230540514f88" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue'; Import-Module WebAdministration;     Remove-Website -Name 'Default Web Site';     New-WebAppPool -Name 'ap-samplewebapp';     Set-ItemProperty IIS:\\AppPools\\ap-samplewebapp -Name managedRuntimeVersion -Value '';     Set-ItemProperty IIS:\\AppPools\\ap-samplewebapp -Name enable32BitAppOnWin64 -Value 0;     Set-ItemProperty IIS:\\AppPools\\ap-samplewebapp -Name processModel.identityType -Value Service;     New-Website -Name 'samplewebapp'                 -Port 80 -PhysicalPath 'C:\\inetpub\\wwwroot\\samplewebapp'                 -ApplicationPool 'ap-samplewebapp' -force" shape="box"];
  "sha256:e5acd7f3d2b905ffda69c9f24a6c4bb994270c1fe3fa82a4eef5d8ffc894335a" [label="local://context" shape="ellipse"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:f3acc8ebd12b5b2c722c2b45a5d04399e2ee62577ce7f25dd4a4b028e7b0bece" [label="copy{src=/SampleWebAppForIIS/SampleWebAppForIIS.csproj, dest=/src/SampleWebAppForIIS/}" shape="note"];
  "sha256:266a4a51a0694f5bd2f04f9b54978f43b52c48d3c2eadfd0df206949712a6482" [label="/bin/sh -c dotnet restore \"SampleWebAppForIIS/SampleWebAppForIIS.csproj\"" shape="box"];
  "sha256:661bec2481e4a2f47ea061488fc37d71ec2e96a5968ebe4dd3be6af4d10a3ae2" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:7a268cc6c3d6179e3d6a217f828fb021196e37decf47345b696dfbc9fafafa72" [label="mkdir{path=/src/SampleWebAppForIIS}" shape="note"];
  "sha256:301e3565f7ffbec3082f4a302dc9494f4177e6d95e04dfb4584813268f277dd3" [label="/bin/sh -c dotnet build \"SampleWebAppForIIS.csproj\" --no-restore --no-dependencies -c Release -o /app" shape="box"];
  "sha256:5c87afe4d81c4356810b819205284444a98a9705b68aed83736c94a4213b10d1" [label="/bin/sh -c dotnet publish \"SampleWebAppForIIS.csproj\" -c Release -o /publish" shape="box"];
  "sha256:f299d7a222f83a1e521d1433d4d6748243e5a67b035396be5dd8a7acc2d574b7" [label="copy{src=/publish, dest=/inetpub/wwwroot/samplewebapp/}" shape="note"];
  "sha256:93fab0502ce03e4f6f88771cda8501ab2c2225ff7c2959a8f99e6e5e4d87a536" [label="sha256:93fab0502ce03e4f6f88771cda8501ab2c2225ff7c2959a8f99e6e5e4d87a536" shape="plaintext"];
  "sha256:7a2e362b96a8ac9f5cd040006e3e80c15ec04454a64eb585896a4d7ac8d26b0f" -> "sha256:6c408c7f884fad22c573851d2de35abe680da5e6bc2fcbb93fd58d4b3c95cc81" [label=""];
  "sha256:b320e463e2052946f35de092bffff72fda5c3f7a8bcba2445c960ad174ac704e" -> "sha256:6c408c7f884fad22c573851d2de35abe680da5e6bc2fcbb93fd58d4b3c95cc81" [label=""];
  "sha256:6c408c7f884fad22c573851d2de35abe680da5e6bc2fcbb93fd58d4b3c95cc81" -> "sha256:83d89e1d1b3351cf9c796b81c08076a7bcae44307f72a287f687c425ae29a79c" [label=""];
  "sha256:83d89e1d1b3351cf9c796b81c08076a7bcae44307f72a287f687c425ae29a79c" -> "sha256:90869a9ed225c39fc380bae05bc792a975b1ff0c315718df098c0886f49cbae6" [label=""];
  "sha256:90869a9ed225c39fc380bae05bc792a975b1ff0c315718df098c0886f49cbae6" -> "sha256:281d9affd50812f31743700d303ffa32faafb7c3367ac028e574b4a8c2107f09" [label=""];
  "sha256:281d9affd50812f31743700d303ffa32faafb7c3367ac028e574b4a8c2107f09" -> "sha256:9406face7689296184b53d6e5fb2882788bdac607bca7b34ec1f230540514f88" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:f3acc8ebd12b5b2c722c2b45a5d04399e2ee62577ce7f25dd4a4b028e7b0bece" [label=""];
  "sha256:e5acd7f3d2b905ffda69c9f24a6c4bb994270c1fe3fa82a4eef5d8ffc894335a" -> "sha256:f3acc8ebd12b5b2c722c2b45a5d04399e2ee62577ce7f25dd4a4b028e7b0bece" [label=""];
  "sha256:f3acc8ebd12b5b2c722c2b45a5d04399e2ee62577ce7f25dd4a4b028e7b0bece" -> "sha256:266a4a51a0694f5bd2f04f9b54978f43b52c48d3c2eadfd0df206949712a6482" [label=""];
  "sha256:266a4a51a0694f5bd2f04f9b54978f43b52c48d3c2eadfd0df206949712a6482" -> "sha256:661bec2481e4a2f47ea061488fc37d71ec2e96a5968ebe4dd3be6af4d10a3ae2" [label=""];
  "sha256:e5acd7f3d2b905ffda69c9f24a6c4bb994270c1fe3fa82a4eef5d8ffc894335a" -> "sha256:661bec2481e4a2f47ea061488fc37d71ec2e96a5968ebe4dd3be6af4d10a3ae2" [label=""];
  "sha256:661bec2481e4a2f47ea061488fc37d71ec2e96a5968ebe4dd3be6af4d10a3ae2" -> "sha256:7a268cc6c3d6179e3d6a217f828fb021196e37decf47345b696dfbc9fafafa72" [label=""];
  "sha256:7a268cc6c3d6179e3d6a217f828fb021196e37decf47345b696dfbc9fafafa72" -> "sha256:301e3565f7ffbec3082f4a302dc9494f4177e6d95e04dfb4584813268f277dd3" [label=""];
  "sha256:301e3565f7ffbec3082f4a302dc9494f4177e6d95e04dfb4584813268f277dd3" -> "sha256:5c87afe4d81c4356810b819205284444a98a9705b68aed83736c94a4213b10d1" [label=""];
  "sha256:9406face7689296184b53d6e5fb2882788bdac607bca7b34ec1f230540514f88" -> "sha256:f299d7a222f83a1e521d1433d4d6748243e5a67b035396be5dd8a7acc2d574b7" [label=""];
  "sha256:5c87afe4d81c4356810b819205284444a98a9705b68aed83736c94a4213b10d1" -> "sha256:f299d7a222f83a1e521d1433d4d6748243e5a67b035396be5dd8a7acc2d574b7" [label=""];
  "sha256:f299d7a222f83a1e521d1433d4d6748243e5a67b035396be5dd8a7acc2d574b7" -> "sha256:93fab0502ce03e4f6f88771cda8501ab2c2225ff7c2959a8f99e6e5e4d87a536" [label=""];
}

