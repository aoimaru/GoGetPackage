[app/sources/354560271.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:ba8d39742c4061d32643e8b853f3ce9d5758ea6e702bfcf6bd95814b3add4806" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; (New-Object System.Net.WebClient).DownloadFile('https://cdn.azul.com/zulu/bin/zulu{0}-win_x64.zip' -f $env:JAVA_VERSION, 'openjdk.zip') ;     if ((Get-FileHash openjdk.zip -Algorithm md5).Hash -ne $env:JAVA_MD5) {exit 1} ;     Expand-Archive openjdk.zip -DestinationPath C:\\ ;     $env:PATH = '{0}\\bin;{1}' -f $env:JAVA_HOME, $env:PATH ;     [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine) ;     Remove-Item -Path openjdk.zip" shape="box"];
  "sha256:0b0f2576a74160c572100cd26bd050b218faed244b81819f45f5f928bd51f981" [label="sha256:0b0f2576a74160c572100cd26bd050b218faed244b81819f45f5f928bd51f981" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:ba8d39742c4061d32643e8b853f3ce9d5758ea6e702bfcf6bd95814b3add4806" [label=""];
  "sha256:ba8d39742c4061d32643e8b853f3ce9d5758ea6e702bfcf6bd95814b3add4806" -> "sha256:0b0f2576a74160c572100cd26bd050b218faed244b81819f45f5f928bd51f981" [label=""];
}

