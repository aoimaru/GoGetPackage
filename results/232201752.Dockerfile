[app/sources/232201752.Dockerfile]
digraph {
  "sha256:d357de1d0d3048cea1e1b9b6582a8a16d901cf467acfa08e23f6adde0ecc8a6c" [label="local://context" shape="ellipse"];
  "sha256:ea76ca224d2089efedbfca6493fa2ed354064ebf33a4b89fb05e3866c069be93" [label="docker-image://docker.io/sixeyed/aspnet:4.7.2-windowsservercore-1809" shape="ellipse"];
  "sha256:00cd518e89f818be9f4cd78c366c1c35274b18853e4620a1de9ab0b462889c77" [label="powershell -Command $ErrorActionPreference = 'Stop'; New-WebApplication -Name Bonobo.Git.Server -Site 'Default Web Site' -PhysicalPath $env:BONOBO_PATH -Force" shape="box"];
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" [label="docker-image://mcr.microsoft.com/windows/servercore:1809" shape="ellipse"];
  "sha256:3a526169b27194ddcdb7d0d7d7c1324812a23b3ea39f96da4241907f40baae45" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Write-Host \"Downloading Bonobo version: $env:BONOBO_VERSION\";     Invoke-WebRequest \"https://bonobogitserver.com/resources/releases/$($env:BONOBO_VERSION.Replace('.', '_')).zip\" -OutFile 'bonobo.zip' -UseBasicParsing;     Expand-Archive bonobo.zip C:\\bonobo;     Remove-Item bonobo.zip -Force" shape="box"];
  "sha256:a3215f4e56f72118f80427a0fb119f63ac27769478617ca2e0763a045c7d01c6" [label="copy{src=/C:\\bonobo\\Bonobo.Git.Server, dest=/C:\\bonobo\\Bonobo.Git.Server}" shape="note"];
  "sha256:d3dc686557033cb34cacf8203581e58befc7913187d6f8ed197d3e4ec4afcfb2" [label="powershell -Command $ErrorActionPreference = 'Stop'; $file = $env:BONOBO_PATH + '\\Web.config';     [xml]$config = Get-Content $file;     $repoNode = $config.configuration.appSettings.add | where {$_.key -eq 'DefaultRepositoriesDirectory'};     $repoNode.value = 'C:\\data\\repositories';     $dbNode = $config.configuration.connectionStrings.add | where {$_.name -eq 'BonoboGitServerContext'};     $dbNode.connectionString = 'Data Source=C:\\data\\Bonobo.Git.Server.db;BinaryGUID=False;';     $config.Save($file)" shape="box"];
  "sha256:89a263132efde1d13ec59dc44f22adb64fa5f1be81bb8c478ac96b32e304d54b" [label="copy{src=/Set-OwnerAcl.ps1, dest=/}" shape="note"];
  "sha256:73a283416254dba086e4afe26017be4f53276202bd96d1cc21afd3655f22688f" [label="powershell -Command $ErrorActionPreference = 'Stop'; $path = $env:BONOBO_PATH + '\\App_Data';     .\\Set-OwnerAcl.ps1 -Path $path -Owner 'BUILTIN\\IIS_IUSRS';     .\\Set-OwnerAcl.ps1 -Path $env:DATA_PATH -Owner 'BUILTIN\\IIS_IUSRS'" shape="box"];
  "sha256:7d1b3db465bbb53d85eba0e68867d91edbed6290469fd1be816a9e6c28098353" [label="sha256:7d1b3db465bbb53d85eba0e68867d91edbed6290469fd1be816a9e6c28098353" shape="plaintext"];
  "sha256:ea76ca224d2089efedbfca6493fa2ed354064ebf33a4b89fb05e3866c069be93" -> "sha256:00cd518e89f818be9f4cd78c366c1c35274b18853e4620a1de9ab0b462889c77" [label=""];
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" -> "sha256:3a526169b27194ddcdb7d0d7d7c1324812a23b3ea39f96da4241907f40baae45" [label=""];
  "sha256:00cd518e89f818be9f4cd78c366c1c35274b18853e4620a1de9ab0b462889c77" -> "sha256:a3215f4e56f72118f80427a0fb119f63ac27769478617ca2e0763a045c7d01c6" [label=""];
  "sha256:3a526169b27194ddcdb7d0d7d7c1324812a23b3ea39f96da4241907f40baae45" -> "sha256:a3215f4e56f72118f80427a0fb119f63ac27769478617ca2e0763a045c7d01c6" [label=""];
  "sha256:a3215f4e56f72118f80427a0fb119f63ac27769478617ca2e0763a045c7d01c6" -> "sha256:d3dc686557033cb34cacf8203581e58befc7913187d6f8ed197d3e4ec4afcfb2" [label=""];
  "sha256:d3dc686557033cb34cacf8203581e58befc7913187d6f8ed197d3e4ec4afcfb2" -> "sha256:89a263132efde1d13ec59dc44f22adb64fa5f1be81bb8c478ac96b32e304d54b" [label=""];
  "sha256:d357de1d0d3048cea1e1b9b6582a8a16d901cf467acfa08e23f6adde0ecc8a6c" -> "sha256:89a263132efde1d13ec59dc44f22adb64fa5f1be81bb8c478ac96b32e304d54b" [label=""];
  "sha256:89a263132efde1d13ec59dc44f22adb64fa5f1be81bb8c478ac96b32e304d54b" -> "sha256:73a283416254dba086e4afe26017be4f53276202bd96d1cc21afd3655f22688f" [label=""];
  "sha256:73a283416254dba086e4afe26017be4f53276202bd96d1cc21afd3655f22688f" -> "sha256:7d1b3db465bbb53d85eba0e68867d91edbed6290469fd1be816a9e6c28098353" [label=""];
}

