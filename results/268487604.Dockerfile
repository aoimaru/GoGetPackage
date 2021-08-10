[app/sources/268487604.Dockerfile]
digraph {
  "sha256:6b7f6b3494cf7cb32b3bb6e21310ce8b3f925fc0b86d429c56a77ebdfdb7263e" [label="docker-image://docker.io/microsoft/aspnet:windowsservercore" shape="ellipse"];
  "sha256:4deffc596e4896209430e284b986e1f04fdcf2fe6e32695d80591fe177e3d0ea" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-WebConfigurationProperty -p 'MACHINE/WEBROOT/APPHOST' -fi 'system.applicationHost/log' -n 'centralLogFileMode' -v 'CentralW3C';     Set-WebConfigurationProperty -p 'MACHINE/WEBROOT/APPHOST' -fi 'system.applicationHost/log/centralW3CLogFile' -n 'truncateSize' -v 4294967295;     Set-WebConfigurationProperty -p 'MACHINE/WEBROOT/APPHOST' -fi 'system.applicationHost/log/centralW3CLogFile' -n 'period' -v 'MaxSize';     Set-WebConfigurationProperty -p 'MACHINE/WEBROOT/APPHOST' -fi 'system.applicationHost/log/centralW3CLogFile' -n 'directory' -v 'c:\\iislog'" shape="box"];
  "sha256:da2a332b9c3da7a1b7ef21546b670b9d6d91bfb4535b7229ddefb7d7facf334b" [label="mkdir{path=/C:\\iis-env}" shape="note"];
  "sha256:7609cf80e6d6438e6b3452a815f04683b378c5bcb60eef56a127371e46cf025f" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Remove-Website -Name 'Default Web Site';    New-Website -Name 'iis-env' -Port 80 -PhysicalPath 'C:\\iis-env'" shape="box"];
  "sha256:dfb64d1fbae06613fe9a1fa5322b939440be55a420a6b4741aada04c1805b144" [label="local://context" shape="ellipse"];
  "sha256:ec79c8f946542213351ac360d217117183f6a7fc722b4d5a54ce620b42189923" [label="copy{src=/bootstrap.ps1, dest=/C:\\iis-env/C:\\}" shape="note"];
  "sha256:1717e20560cf27e73e2a4620858cea5f1446e0fc7ddd5c1ea4e8143cd9f3fd06" [label="copy{src=/default.aspx, dest=/C:\\iis-env/}" shape="note"];
  "sha256:8f4ffcfe6bf7cfec7a7e1a85bbc6b5a187e961e0953603af739dbd2b40dc9faa" [label="sha256:8f4ffcfe6bf7cfec7a7e1a85bbc6b5a187e961e0953603af739dbd2b40dc9faa" shape="plaintext"];
  "sha256:6b7f6b3494cf7cb32b3bb6e21310ce8b3f925fc0b86d429c56a77ebdfdb7263e" -> "sha256:4deffc596e4896209430e284b986e1f04fdcf2fe6e32695d80591fe177e3d0ea" [label=""];
  "sha256:4deffc596e4896209430e284b986e1f04fdcf2fe6e32695d80591fe177e3d0ea" -> "sha256:da2a332b9c3da7a1b7ef21546b670b9d6d91bfb4535b7229ddefb7d7facf334b" [label=""];
  "sha256:da2a332b9c3da7a1b7ef21546b670b9d6d91bfb4535b7229ddefb7d7facf334b" -> "sha256:7609cf80e6d6438e6b3452a815f04683b378c5bcb60eef56a127371e46cf025f" [label=""];
  "sha256:7609cf80e6d6438e6b3452a815f04683b378c5bcb60eef56a127371e46cf025f" -> "sha256:ec79c8f946542213351ac360d217117183f6a7fc722b4d5a54ce620b42189923" [label=""];
  "sha256:dfb64d1fbae06613fe9a1fa5322b939440be55a420a6b4741aada04c1805b144" -> "sha256:ec79c8f946542213351ac360d217117183f6a7fc722b4d5a54ce620b42189923" [label=""];
  "sha256:ec79c8f946542213351ac360d217117183f6a7fc722b4d5a54ce620b42189923" -> "sha256:1717e20560cf27e73e2a4620858cea5f1446e0fc7ddd5c1ea4e8143cd9f3fd06" [label=""];
  "sha256:dfb64d1fbae06613fe9a1fa5322b939440be55a420a6b4741aada04c1805b144" -> "sha256:1717e20560cf27e73e2a4620858cea5f1446e0fc7ddd5c1ea4e8143cd9f3fd06" [label=""];
  "sha256:1717e20560cf27e73e2a4620858cea5f1446e0fc7ddd5c1ea4e8143cd9f3fd06" -> "sha256:8f4ffcfe6bf7cfec7a7e1a85bbc6b5a187e961e0953603af739dbd2b40dc9faa" [label=""];
}

