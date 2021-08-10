[app/sources/322541411.Dockerfile]
digraph {
  "sha256:728d63f79d8dace1bd40796778986f461eabf98f564b77fae3954c04cec611dd" [label="docker-image://mcr.microsoft.com/windows/servercore:latest" shape="ellipse"];
  "sha256:dae9c839c226b197544047ada5f3ab60a8ae72304b9aeba13078ebdd102aa3b3" [label="C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -command Write-host \"Verifying valid Version...\";     if (!($env:PS_VERSION -match '^\\d+\\.\\d+\\.\\d+(-\\w+(\\.\\d+)?)?$' )) {         throw ('PS_Version ({0}) must match the regex \"^\\d+\\.\\d+\\.\\d+(-\\w+(\\.\\d+)?)?$\"' -f $env:PS_VERSION)     }     $ProgressPreference = 'SilentlyContinue';     if($env:PS_PACKAGE_URL_BASE64){         Write-host \"decoding: $env:PS_PACKAGE_URL_BASE64\" ;        $url = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($env:PS_PACKAGE_URL_BASE64))     } else {         Write-host \"using url: $env:PS_PACKAGE_URL\" ;        $url = $env:PS_PACKAGE_URL     }     Write-host \"downloading: $url\";     [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12;     Invoke-WebRequest -Uri $url -outfile /powershell.zip -verbose;     Expand-Archive powershell.zip -DestinationPath  \\PowerShell" shape="box"];
  "sha256:ef040125793ba1c49e39f37eced1ae663d59980799d56848497341ed418b68b3" [label="copy{src=/\\PowerShell\\, dest=/C:\\Program Files\\PowerShell\\latest}" shape="note"];
  "sha256:4e885b98354d60bf4177ca09db07ccd3755a1aae6c1d98dd7deb8f89b10d13e9" [label="/bin/sh -c setx /M PATH \"%ProgramFiles%\\PowerShell\\latest;%PATH%;\"" shape="box"];
  "sha256:2549db779fffeede71648d5368e2f8a59ca94be7d8905ce837290ba67e1e10b3" [label="/bin/sh -c pwsh         -NoLogo         -NoProfile         -Command \"           $stopTime = (get-date).AddMinutes(15);           $ErrorActionPreference = 'Stop' ;           $ProgressPreference = 'SilentlyContinue' ;           while(!(Test-Path -Path $env:PSModuleAnalysisCachePath)) {              Write-Host \"'Waiting for $env:PSModuleAnalysisCachePath'\" ;             if((get-date) -gt $stopTime) { throw 'timout expired'}             Start-Sleep -Seconds 6 ;           }\"" shape="box"];
  "sha256:feec31d5094b24de82c8037ef77c9ba609bea6794c167242ee10dd174920fd88" [label="sha256:feec31d5094b24de82c8037ef77c9ba609bea6794c167242ee10dd174920fd88" shape="plaintext"];
  "sha256:728d63f79d8dace1bd40796778986f461eabf98f564b77fae3954c04cec611dd" -> "sha256:dae9c839c226b197544047ada5f3ab60a8ae72304b9aeba13078ebdd102aa3b3" [label=""];
  "sha256:728d63f79d8dace1bd40796778986f461eabf98f564b77fae3954c04cec611dd" -> "sha256:ef040125793ba1c49e39f37eced1ae663d59980799d56848497341ed418b68b3" [label=""];
  "sha256:dae9c839c226b197544047ada5f3ab60a8ae72304b9aeba13078ebdd102aa3b3" -> "sha256:ef040125793ba1c49e39f37eced1ae663d59980799d56848497341ed418b68b3" [label=""];
  "sha256:ef040125793ba1c49e39f37eced1ae663d59980799d56848497341ed418b68b3" -> "sha256:4e885b98354d60bf4177ca09db07ccd3755a1aae6c1d98dd7deb8f89b10d13e9" [label=""];
  "sha256:4e885b98354d60bf4177ca09db07ccd3755a1aae6c1d98dd7deb8f89b10d13e9" -> "sha256:2549db779fffeede71648d5368e2f8a59ca94be7d8905ce837290ba67e1e10b3" [label=""];
  "sha256:2549db779fffeede71648d5368e2f8a59ca94be7d8905ce837290ba67e1e10b3" -> "sha256:feec31d5094b24de82c8037ef77c9ba609bea6794c167242ee10dd174920fd88" [label=""];
}
