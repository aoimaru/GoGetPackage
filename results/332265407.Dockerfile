[app/sources/332265407.Dockerfile]
digraph {
  "sha256:e084120acdd15b8b4f0d8c3afa52c5b346ed7b8898db92955662d98b46c273a0" [label="docker-image://docker.io/microsoft/windowsservercore-insider:latest" shape="ellipse"];
  "sha256:2e999491abffc5c641cc9d9a0bcc3dc575a823269d9291157a9c32a60c9de6fa" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest https://github.com/infragravity/sonar-docker/releases/download/v0.1.9/sonar-0190-win10-x64.zip -OutFile Sonar.zip" shape="box"];
  "sha256:2565b646541163c9f4cd00046703577c1c15cd749d958c6260a110b2f8b097c4" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Expand-Archive Sonar.zip -DestinationPath \\sonar" shape="box"];
  "sha256:2e590ec4eb5e809de4be7c6691cec3e5663b681e74fa6a6c5164753763c0d6e6" [label="mkdir{path=/out}" shape="note"];
  "sha256:8d6ee08bbde058e2178545d9b99aa11a2667d2cd5c94dfd543346a63059739f8" [label="local://context" shape="ellipse"];
  "sha256:862505cdadd944f623f1469acc26f55122b719d01cd3c60d0724575ef7a8bfa4" [label="copy{src=/out, dest=/out/}" shape="note"];
  "sha256:d8403251f892b3866ada7e9292186b81de7a21fde4dff9786a496882e0eef3c9" [label="copy{src=/out/Sonard.config, dest=/out/c:/sonar}" shape="note"];
  "sha256:f5d0cc35a9bbaef8936803e905dd75b9fb6c6b991d10a811866282da1cf52778" [label="copy{src=/out/Sonard.dll.config, dest=/out/c:/sonar/out}" shape="note"];
  "sha256:142f0c77d4e7ac7cf642b0db5f777c8f872a009051f10e102e003aefc64013fc" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Install-WindowsFeature Web-Server" shape="box"];
  "sha256:e8d1af960c62d97956f184a34bd39173817d6eeac11bc80500a4f77e47b3a634" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; New-IISSite -Name \"AspNetCore\" -PhysicalPath c:\\out\\ -BindingInformation \"*:8000:\"" shape="box"];
  "sha256:aaf1bd7c96cbb7548d6842780fe79d11662e68453588283f6e2bab38761131cf" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-WSManInstance WinRM/Config/Service -ValueSet @{AllowUnencrypted=\\\"true\\\"}" shape="box"];
  "sha256:4b7f05135db777f6fcca716c91ff60e44e4ada28de8293073e631ebe185e3916" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; sc.exe create sonard binpath= c:\\sonar\\out\\Sonard.exe start= auto obj= LocalSystem depend= \\\"WinRM\\\"" shape="box"];
  "sha256:19f784517c0b9dcbab140d7b4025007d69b29915d4725e12ebb0e1c21cbf6109" [label="sha256:19f784517c0b9dcbab140d7b4025007d69b29915d4725e12ebb0e1c21cbf6109" shape="plaintext"];
  "sha256:e084120acdd15b8b4f0d8c3afa52c5b346ed7b8898db92955662d98b46c273a0" -> "sha256:2e999491abffc5c641cc9d9a0bcc3dc575a823269d9291157a9c32a60c9de6fa" [label=""];
  "sha256:2e999491abffc5c641cc9d9a0bcc3dc575a823269d9291157a9c32a60c9de6fa" -> "sha256:2565b646541163c9f4cd00046703577c1c15cd749d958c6260a110b2f8b097c4" [label=""];
  "sha256:2565b646541163c9f4cd00046703577c1c15cd749d958c6260a110b2f8b097c4" -> "sha256:2e590ec4eb5e809de4be7c6691cec3e5663b681e74fa6a6c5164753763c0d6e6" [label=""];
  "sha256:2e590ec4eb5e809de4be7c6691cec3e5663b681e74fa6a6c5164753763c0d6e6" -> "sha256:862505cdadd944f623f1469acc26f55122b719d01cd3c60d0724575ef7a8bfa4" [label=""];
  "sha256:8d6ee08bbde058e2178545d9b99aa11a2667d2cd5c94dfd543346a63059739f8" -> "sha256:862505cdadd944f623f1469acc26f55122b719d01cd3c60d0724575ef7a8bfa4" [label=""];
  "sha256:862505cdadd944f623f1469acc26f55122b719d01cd3c60d0724575ef7a8bfa4" -> "sha256:d8403251f892b3866ada7e9292186b81de7a21fde4dff9786a496882e0eef3c9" [label=""];
  "sha256:8d6ee08bbde058e2178545d9b99aa11a2667d2cd5c94dfd543346a63059739f8" -> "sha256:d8403251f892b3866ada7e9292186b81de7a21fde4dff9786a496882e0eef3c9" [label=""];
  "sha256:d8403251f892b3866ada7e9292186b81de7a21fde4dff9786a496882e0eef3c9" -> "sha256:f5d0cc35a9bbaef8936803e905dd75b9fb6c6b991d10a811866282da1cf52778" [label=""];
  "sha256:8d6ee08bbde058e2178545d9b99aa11a2667d2cd5c94dfd543346a63059739f8" -> "sha256:f5d0cc35a9bbaef8936803e905dd75b9fb6c6b991d10a811866282da1cf52778" [label=""];
  "sha256:f5d0cc35a9bbaef8936803e905dd75b9fb6c6b991d10a811866282da1cf52778" -> "sha256:142f0c77d4e7ac7cf642b0db5f777c8f872a009051f10e102e003aefc64013fc" [label=""];
  "sha256:142f0c77d4e7ac7cf642b0db5f777c8f872a009051f10e102e003aefc64013fc" -> "sha256:e8d1af960c62d97956f184a34bd39173817d6eeac11bc80500a4f77e47b3a634" [label=""];
  "sha256:e8d1af960c62d97956f184a34bd39173817d6eeac11bc80500a4f77e47b3a634" -> "sha256:aaf1bd7c96cbb7548d6842780fe79d11662e68453588283f6e2bab38761131cf" [label=""];
  "sha256:aaf1bd7c96cbb7548d6842780fe79d11662e68453588283f6e2bab38761131cf" -> "sha256:4b7f05135db777f6fcca716c91ff60e44e4ada28de8293073e631ebe185e3916" [label=""];
  "sha256:4b7f05135db777f6fcca716c91ff60e44e4ada28de8293073e631ebe185e3916" -> "sha256:19f784517c0b9dcbab140d7b4025007d69b29915d4725e12ebb0e1c21cbf6109" [label=""];
}

