[app/sources/222495940.Dockerfile]
digraph {
  "sha256:7340d9a8550b94f3a599e077b9a3c389e723147e1f14f7568f338b9aa255a2f2" [label="docker-image://docker.io/microsoft/dotnet-framework:3.5" shape="ellipse"];
  "sha256:e11be6a7902d5c975819cff2248157639da3d26b132d836f38ad389d02f34d6a" [label="local://context" shape="ellipse"];
  "sha256:4d698379ecd40db81007c487399ccdad4df76ed4f6da24fb0a48cf8630e846ec" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:47ad83605fd217b68acb630e731064a798aeb2a88eaf7b2e187d9f0a723d9524" [label="/bin/sh -c powershell -Command (New-Object System.Net.WebClient).DownloadFile('%sql_express_download_url%', 'sqlexpress.exe') && /sqlexpress.exe /qs /x:setup && /setup/setup.exe /q /ACTION=Install /INSTANCENAME=SQLEXPRESS /FEATURES=SQLEngine /UPDATEENABLED=0 /SQLSVCACCOUNT=\"NT AUTHORITY\\System\" /SQLSYSADMINACCOUNTS=\"BUILTIN\\ADMINISTRATORS\" /TCPENABLED=1 /NPENABLED=0 /IACCEPTSQLSERVERLICENSETERMS && del /F /Q sqlexpress.exe && rd /q /s setup" shape="box"];
  "sha256:ff320c1cfeef48df87ab4273b75008e857dd78b3190aea0b528adae4b9c60b83" [label="/bin/sh -c powershell -Command         set-strictmode -version latest ;         stop-service MSSQL`$SQLEXPRESS ;         set-itemproperty -path 'HKLM:\\software\\microsoft\\microsoft sql server\\mssql12.SQLEXPRESS\\mssqlserver\\supersocketnetlib\\tcp\\ipall' -name tcpdynamicports -value '' ;         set-itemproperty -path 'HKLM:\\software\\microsoft\\microsoft sql server\\mssql12.SQLEXPRESS\\mssqlserver\\supersocketnetlib\\tcp\\ipall' -name tcpport -value 1433 ;         set-itemproperty -path 'HKLM:\\software\\microsoft\\microsoft sql server\\mssql12.SQLEXPRESS\\mssqlserver\\' -name LoginMode -value 2 ;" shape="box"];
  "sha256:1a161e26d4c669a59cd7cef0709e55d049b2cc9c6f7cd8c64ffd1ad9286de1c5" [label="sha256:1a161e26d4c669a59cd7cef0709e55d049b2cc9c6f7cd8c64ffd1ad9286de1c5" shape="plaintext"];
  "sha256:7340d9a8550b94f3a599e077b9a3c389e723147e1f14f7568f338b9aa255a2f2" -> "sha256:4d698379ecd40db81007c487399ccdad4df76ed4f6da24fb0a48cf8630e846ec" [label=""];
  "sha256:e11be6a7902d5c975819cff2248157639da3d26b132d836f38ad389d02f34d6a" -> "sha256:4d698379ecd40db81007c487399ccdad4df76ed4f6da24fb0a48cf8630e846ec" [label=""];
  "sha256:4d698379ecd40db81007c487399ccdad4df76ed4f6da24fb0a48cf8630e846ec" -> "sha256:47ad83605fd217b68acb630e731064a798aeb2a88eaf7b2e187d9f0a723d9524" [label=""];
  "sha256:47ad83605fd217b68acb630e731064a798aeb2a88eaf7b2e187d9f0a723d9524" -> "sha256:ff320c1cfeef48df87ab4273b75008e857dd78b3190aea0b528adae4b9c60b83" [label=""];
  "sha256:ff320c1cfeef48df87ab4273b75008e857dd78b3190aea0b528adae4b9c60b83" -> "sha256:1a161e26d4c669a59cd7cef0709e55d049b2cc9c6f7cd8c64ffd1ad9286de1c5" [label=""];
}

