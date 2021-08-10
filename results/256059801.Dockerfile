[app/sources/256059801.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:7136f8ce04e2803e8ed37ce15aac4a9401f875a1d8a3a8ed68bf8a23ce5ade3d" [label="/bin/sh -c powershell -Command         $ProgressPreference = 'SilentlyContinue';         Invoke-WebRequest             -UseBasicParsing             -Uri \"https://download.microsoft.com/download/6/E/4/6E48E8AB-DC00-419E-9704-06DD46E5F81D/NDP472-KB4054530-x86-x64-AllOS-ENU.exe\"             -OutFile dotnet-framework-installer.exe     && start /w .\\dotnet-framework-installer.exe /q     && del .\\dotnet-framework-installer.exe     && powershell Remove-Item -Force -Recurse ${Env:TEMP}\\*" shape="box"];
  "sha256:07b76fceb6418a2bc0be457ebf5a162bf54c14334b5d941cd6ae6a2b5f0dfe9c" [label="/bin/sh -c powershell -Command         $ProgressPreference = 'SilentlyContinue';         Invoke-WebRequest             -UseBasicParsing             -Uri \"http://download.windowsupdate.com/c/msdownload/update/software/secu/2019/06/windows10.0-kb4503267-x64_51ff317097c854ffc5d9ee5badab6fcf7462d324.msu\"             -OutFile patch.msu;     && mkdir patch     && expand patch.msu patch -F:*     && del patch.msu     && dism /Online /Quiet /Add-Package /PackagePath:C:\\patch\\Windows10.0-kb4503267-x64.cab     && rmdir /S /Q patch" shape="box"];
  "sha256:49be37d339716249ece5a8486a7264a29cee84cc8d7d2f1a60e9586ac974e94b" [label="/bin/sh -c \\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\ngen update     && \\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen update" shape="box"];
  "sha256:489572e8ec5f2c2cd8b91a01ba580c193e8179ff2b3fa95178b20a8dc16fc1a8" [label="sha256:489572e8ec5f2c2cd8b91a01ba580c193e8179ff2b3fa95178b20a8dc16fc1a8" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:7136f8ce04e2803e8ed37ce15aac4a9401f875a1d8a3a8ed68bf8a23ce5ade3d" [label=""];
  "sha256:7136f8ce04e2803e8ed37ce15aac4a9401f875a1d8a3a8ed68bf8a23ce5ade3d" -> "sha256:07b76fceb6418a2bc0be457ebf5a162bf54c14334b5d941cd6ae6a2b5f0dfe9c" [label=""];
  "sha256:07b76fceb6418a2bc0be457ebf5a162bf54c14334b5d941cd6ae6a2b5f0dfe9c" -> "sha256:49be37d339716249ece5a8486a7264a29cee84cc8d7d2f1a60e9586ac974e94b" [label=""];
  "sha256:49be37d339716249ece5a8486a7264a29cee84cc8d7d2f1a60e9586ac974e94b" -> "sha256:489572e8ec5f2c2cd8b91a01ba580c193e8179ff2b3fa95178b20a8dc16fc1a8" [label=""];
}

