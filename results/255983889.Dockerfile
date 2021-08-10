[app/sources/255983889.Dockerfile]
digraph {
  "sha256:f99cebe0d0a2e6bcbf3d36a61ea702814410ff1f8eccbcf74139b33af531a6c6" [label="docker-image://mcr.microsoft.com/powershell:nanoserver-1803@sha256:60fc1023c2aa4ae07a4fb11c10e9478c332074fe76cab8c7cd6d146e94da5ea0" shape="ellipse"];
  "sha256:b223b0a2bd5eecb43fab1c7e32ee5a00fe8f5beb638002af01c03ec203659b5a" [label="docker-image://docker.io/library/teamcity-agent:latest-windowsservercore-1803" shape="ellipse"];
  "sha256:729f619f63c22e04e5ac2f88ddc08977abeb0679e99285ab7833609776960833" [label="copy{src=/C:/Program Files/Java/OpenJDK, dest=/C:/Program Files/Java/OpenJDK}" shape="note"];
  "sha256:a27ee5610afefe8a6a2edc83e95a54e0be395d0bb3159dd4b734b535a1e7a802" [label="copy{src=/C:/Program Files/Git, dest=/C:/Program Files/Git}" shape="note"];
  "sha256:0d81c4f0826d3535bb86f9bfb6d0a1fe35b4a4f96614986a4b4478db93694619" [label="pwsh -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -OutFile dotnet.zip https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$Env:DOTNET_SDK_VERSION/dotnet-sdk-$Env:DOTNET_SDK_VERSION-win-x64.zip;     Expand-Archive dotnet.zip -DestinationPath $Env:ProgramFiles\\dotnet;     Remove-Item -Force dotnet.zip;     Get-ChildItem -Path $Env:ProgramFiles\\dotnet -Include *.lzma -File -Recurse | foreach { $_.Delete()}" shape="box"];
  "sha256:17582eb546d3a58a0ae2cb75c681aa6f1c3fb6adac0718ea7af1e124ab3176b6" [label="copy{src=/C:/Program Files/dotnet, dest=/C:/Program Files/dotnet}" shape="note"];
  "sha256:6f51b29635b7089bb678f969b5c1e375a0dbcf3b422fb74b0953365d8e04e22e" [label="copy{src=/BuildAgent, dest=/BuildAgent}" shape="note"];
  "sha256:844c1cfb8b25ddf0cc3e627ca2745c3086c63aa3c814145051a9928b40d9ab24" [label="/bin/sh -c setx /M PATH \"%PATH%;%JAVA_HOME%\\bin;C:\\Program Files\\Git\\cmd;C:\\Program Files\\dotnet\"" shape="box"];
  "sha256:54195de031599295191452b3f12a842fefbf0f26e82e5a33638f66975e33eb4f" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:b3074c28c1af723924a1a2b9044ed55adb1417eb8e126d5a585df4074a0acfe2" [label="sha256:b3074c28c1af723924a1a2b9044ed55adb1417eb8e126d5a585df4074a0acfe2" shape="plaintext"];
  "sha256:f99cebe0d0a2e6bcbf3d36a61ea702814410ff1f8eccbcf74139b33af531a6c6" -> "sha256:729f619f63c22e04e5ac2f88ddc08977abeb0679e99285ab7833609776960833" [label=""];
  "sha256:b223b0a2bd5eecb43fab1c7e32ee5a00fe8f5beb638002af01c03ec203659b5a" -> "sha256:729f619f63c22e04e5ac2f88ddc08977abeb0679e99285ab7833609776960833" [label=""];
  "sha256:729f619f63c22e04e5ac2f88ddc08977abeb0679e99285ab7833609776960833" -> "sha256:a27ee5610afefe8a6a2edc83e95a54e0be395d0bb3159dd4b734b535a1e7a802" [label=""];
  "sha256:b223b0a2bd5eecb43fab1c7e32ee5a00fe8f5beb638002af01c03ec203659b5a" -> "sha256:a27ee5610afefe8a6a2edc83e95a54e0be395d0bb3159dd4b734b535a1e7a802" [label=""];
  "sha256:f99cebe0d0a2e6bcbf3d36a61ea702814410ff1f8eccbcf74139b33af531a6c6" -> "sha256:0d81c4f0826d3535bb86f9bfb6d0a1fe35b4a4f96614986a4b4478db93694619" [label=""];
  "sha256:a27ee5610afefe8a6a2edc83e95a54e0be395d0bb3159dd4b734b535a1e7a802" -> "sha256:17582eb546d3a58a0ae2cb75c681aa6f1c3fb6adac0718ea7af1e124ab3176b6" [label=""];
  "sha256:0d81c4f0826d3535bb86f9bfb6d0a1fe35b4a4f96614986a4b4478db93694619" -> "sha256:17582eb546d3a58a0ae2cb75c681aa6f1c3fb6adac0718ea7af1e124ab3176b6" [label=""];
  "sha256:17582eb546d3a58a0ae2cb75c681aa6f1c3fb6adac0718ea7af1e124ab3176b6" -> "sha256:6f51b29635b7089bb678f969b5c1e375a0dbcf3b422fb74b0953365d8e04e22e" [label=""];
  "sha256:b223b0a2bd5eecb43fab1c7e32ee5a00fe8f5beb638002af01c03ec203659b5a" -> "sha256:6f51b29635b7089bb678f969b5c1e375a0dbcf3b422fb74b0953365d8e04e22e" [label=""];
  "sha256:6f51b29635b7089bb678f969b5c1e375a0dbcf3b422fb74b0953365d8e04e22e" -> "sha256:844c1cfb8b25ddf0cc3e627ca2745c3086c63aa3c814145051a9928b40d9ab24" [label=""];
  "sha256:844c1cfb8b25ddf0cc3e627ca2745c3086c63aa3c814145051a9928b40d9ab24" -> "sha256:54195de031599295191452b3f12a842fefbf0f26e82e5a33638f66975e33eb4f" [label=""];
  "sha256:54195de031599295191452b3f12a842fefbf0f26e82e5a33638f66975e33eb4f" -> "sha256:b3074c28c1af723924a1a2b9044ed55adb1417eb8e126d5a585df4074a0acfe2" [label=""];
}

