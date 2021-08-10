[app/sources/218262969.Dockerfile]
digraph {
  "sha256:f0f1cd4e3293b0852d7ea8bd7f479e466a51faae1efcb27203a16f70fe797721" [label="docker-image://docker.io/microsoft/windowsservercore:10.0.14393.2312" shape="ellipse"];
  "sha256:324e0d1dde1a4ed7d4f1b1bf43e98ac1a8df890350d2db431171291b51e02b42" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Install-WindowsFeature Web-WHC;     Invoke-WebRequest -UseBasicParsing https://download.microsoft.com/download/C/E/8/CE8D18F5-D4C0-45B5-B531-ADECD637A1AA/iisexpress_amd64_en-US.msi -OutFile iisexpress_amd64_en-US.msi;     Start-Process -FilePath msiexec.exe -ArgumentList /i, \"C:\\iisexpress_amd64_en-US.msi\", /qn, /L, iisexpress_amd64_en-US.install.log -PassThru -Wait;     Remove-Item iisexpress_amd64_en-US.msi;     Start-Process -FilePath 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\Aspnet_regiis.exe' -ArgumentList '-ga', \\\"${Env:UserName}\\\" -NoNewWindow -Wait;" shape="box"];
  "sha256:8c21f9f4f62b2e029031372aee82e3388153ebee03d99762017b0e18973fb032" [label="sha256:8c21f9f4f62b2e029031372aee82e3388153ebee03d99762017b0e18973fb032" shape="plaintext"];
  "sha256:f0f1cd4e3293b0852d7ea8bd7f479e466a51faae1efcb27203a16f70fe797721" -> "sha256:324e0d1dde1a4ed7d4f1b1bf43e98ac1a8df890350d2db431171291b51e02b42" [label=""];
  "sha256:324e0d1dde1a4ed7d4f1b1bf43e98ac1a8df890350d2db431171291b51e02b42" -> "sha256:8c21f9f4f62b2e029031372aee82e3388153ebee03d99762017b0e18973fb032" [label=""];
}

