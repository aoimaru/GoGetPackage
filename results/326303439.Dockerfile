[app/sources/326303439.Dockerfile]
digraph {
  "sha256:15836a2b9988a3b0cb1c039fdc020ab9481cc48043b0693dd8165a08f2deb1d8" [label="docker-image://docker.io/myplooploops/aspnet:4.7.2-windowsservercore-insider-10.0.17666.1000" shape="ellipse"];
  "sha256:30428289228d0e6581fa78e5724083d0c4104e70c0a2620fca9c9b3cd434fb99" [label="/bin/sh -c powershell.exe Add-WindowsFeature Web-Windows-Auth" shape="box"];
  "sha256:fd7917a79ac0177cec4aa6f563a18febd6ca8fb38f7275493314c89cb30b4014" [label="/bin/sh -c powershell.exe -NoProfile -Command   Set-WebConfigurationProperty -filter /system.WebServer/security/authentication/AnonymousAuthentication -name enabled -value false -PSPath IIS:\\ ;   Set-WebConfigurationProperty -filter /system.webServer/security/authentication/windowsAuthentication -name enabled -value true -PSPath IIS:\\" shape="box"];
  "sha256:e07090b8703d025129fedcb629bf9b3372b99d8e3eb3d5af41196c50d9afafa0" [label="mkdir{path=/inetpub/wwwroot}" shape="note"];
  "sha256:46e552bced36216e44c111a409295395c1952cbd38d6c8d438a3111e636100c1" [label="local://context" shape="ellipse"];
  "sha256:7bad63e89996b506c328d1e0e199685b598a7ae7a95a9868129d7fb841a86cac" [label="docker-image://docker.io/myplooploops/web-builder:4.7.2-windowsservercore-insider-10.0.17666.1000" shape="ellipse"];
  "sha256:8ef27eeb190d3d4a73d47486e6a42a65746bd0a49b86d4b0c602379c9691df0d" [label="mkdir{path=/C:\\src}" shape="note"];
  "sha256:91020a0a4d5638cd9b757f257fe4852e93932faa4cc386f7be0c6a60415f877b" [label="copy{src=/windows-auth-impersonate-globalasax-backend\\packages.config, dest=/C:\\src/}" shape="note"];
  "sha256:52f549ede5f23e25614466249714a6f67b1013040cb2f300767f645b4a4c3fd8" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; nuget restore packages.config -PackagesDirectory ..\\packages" shape="box"];
  "sha256:704ab650551f8dfff8e6e2b38618c40782fe4268c84da9754b1599f1c732df30" [label="copy{src=/, dest=/C:\\src/C:\\src}" shape="note"];
  "sha256:fa20a4fc3b7cbc6fd394a6501ba9339b35b51313e75a52ee1426527e4947dcf2" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; msbuild windows-auth-impersonate-globalasax-backend\\windows-auth-impersonate-globalasax-backend.csproj /p:OutputPath=C:\\out /p:DeployOnBuild=true" shape="box"];
  "sha256:6f0022c938753d0b7383faba02361aef82c91fa97c5d27227ae7a1e1b9e208ee" [label="copy{src=/C:\\src/C:\\out\\_PublishedWebsites\\windows-auth-impersonate-globalasax-backend, dest=/inetpub/wwwroot/}" shape="note"];
  "sha256:96986b7524bd17076f7e2ed3febfa7ff0b4683ec010afbd282d59bf387df6d00" [label="/bin/sh -c Install-WindowsFeature Web-Mgmt-Service;      NET USER admin 'pass@word1234' /ADD;      NET LOCALGROUP 'Administrators' 'admin' /add;      sc.exe config WMSVC start=auto;      Set-ItemProperty -Path HKLM:\\SOFTWARE\\Microsoft\\WebManagement\\Server -Name EnableRemoteManagement -Value 1" shape="box"];
  "sha256:b9011ba4c77ef71aef8216fd5fbd083f7e3f68acd8a9d7b90a335b5b56adbfe8" [label="/bin/sh -c Invoke-WebRequest -OutFile c:\\rtools_setup_x64.exe -Uri https://aka.ms/vs/15/release/RemoteTools.amd64ret.enu.exe;     c:\\rtools_setup_x64.exe /install /quiet" shape="box"];
  "sha256:5610bf823df7d2deacab5a5b4d0eab9237eeb8a9ce66b76465484d36e3e172eb" [label="sha256:5610bf823df7d2deacab5a5b4d0eab9237eeb8a9ce66b76465484d36e3e172eb" shape="plaintext"];
  "sha256:15836a2b9988a3b0cb1c039fdc020ab9481cc48043b0693dd8165a08f2deb1d8" -> "sha256:30428289228d0e6581fa78e5724083d0c4104e70c0a2620fca9c9b3cd434fb99" [label=""];
  "sha256:30428289228d0e6581fa78e5724083d0c4104e70c0a2620fca9c9b3cd434fb99" -> "sha256:fd7917a79ac0177cec4aa6f563a18febd6ca8fb38f7275493314c89cb30b4014" [label=""];
  "sha256:fd7917a79ac0177cec4aa6f563a18febd6ca8fb38f7275493314c89cb30b4014" -> "sha256:e07090b8703d025129fedcb629bf9b3372b99d8e3eb3d5af41196c50d9afafa0" [label=""];
  "sha256:7bad63e89996b506c328d1e0e199685b598a7ae7a95a9868129d7fb841a86cac" -> "sha256:8ef27eeb190d3d4a73d47486e6a42a65746bd0a49b86d4b0c602379c9691df0d" [label=""];
  "sha256:8ef27eeb190d3d4a73d47486e6a42a65746bd0a49b86d4b0c602379c9691df0d" -> "sha256:91020a0a4d5638cd9b757f257fe4852e93932faa4cc386f7be0c6a60415f877b" [label=""];
  "sha256:46e552bced36216e44c111a409295395c1952cbd38d6c8d438a3111e636100c1" -> "sha256:91020a0a4d5638cd9b757f257fe4852e93932faa4cc386f7be0c6a60415f877b" [label=""];
  "sha256:91020a0a4d5638cd9b757f257fe4852e93932faa4cc386f7be0c6a60415f877b" -> "sha256:52f549ede5f23e25614466249714a6f67b1013040cb2f300767f645b4a4c3fd8" [label=""];
  "sha256:52f549ede5f23e25614466249714a6f67b1013040cb2f300767f645b4a4c3fd8" -> "sha256:704ab650551f8dfff8e6e2b38618c40782fe4268c84da9754b1599f1c732df30" [label=""];
  "sha256:46e552bced36216e44c111a409295395c1952cbd38d6c8d438a3111e636100c1" -> "sha256:704ab650551f8dfff8e6e2b38618c40782fe4268c84da9754b1599f1c732df30" [label=""];
  "sha256:704ab650551f8dfff8e6e2b38618c40782fe4268c84da9754b1599f1c732df30" -> "sha256:fa20a4fc3b7cbc6fd394a6501ba9339b35b51313e75a52ee1426527e4947dcf2" [label=""];
  "sha256:e07090b8703d025129fedcb629bf9b3372b99d8e3eb3d5af41196c50d9afafa0" -> "sha256:6f0022c938753d0b7383faba02361aef82c91fa97c5d27227ae7a1e1b9e208ee" [label=""];
  "sha256:fa20a4fc3b7cbc6fd394a6501ba9339b35b51313e75a52ee1426527e4947dcf2" -> "sha256:6f0022c938753d0b7383faba02361aef82c91fa97c5d27227ae7a1e1b9e208ee" [label=""];
  "sha256:6f0022c938753d0b7383faba02361aef82c91fa97c5d27227ae7a1e1b9e208ee" -> "sha256:96986b7524bd17076f7e2ed3febfa7ff0b4683ec010afbd282d59bf387df6d00" [label=""];
  "sha256:96986b7524bd17076f7e2ed3febfa7ff0b4683ec010afbd282d59bf387df6d00" -> "sha256:b9011ba4c77ef71aef8216fd5fbd083f7e3f68acd8a9d7b90a335b5b56adbfe8" [label=""];
  "sha256:b9011ba4c77ef71aef8216fd5fbd083f7e3f68acd8a9d7b90a335b5b56adbfe8" -> "sha256:5610bf823df7d2deacab5a5b4d0eab9237eeb8a9ce66b76465484d36e3e172eb" [label=""];
}

