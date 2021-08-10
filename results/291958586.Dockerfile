[app/sources/291958586.Dockerfile]
digraph {
  "sha256:3dc38204177b74d33ec83266ebf96ceae32e49df857adccf3e1be9577256e9cb" [label="local://context" shape="ellipse"];
  "sha256:21635d0b9552d797491c032a3736fc19a48392c8c0f3f25ba14e417f9e32f6f8" [label="docker-image://docker.io/library/windowsservercore:latest" shape="ellipse"];
  "sha256:a81c7fc0ece0c8e240893e67bad1635d5fc9d0b71bf548d98863a39ea098c874" [label="mkdir{path=/c:}" shape="note"];
  "sha256:3527504a94ac4ea86cc6ba3a92f3fb975421b026d046b6398617d1d5dcc6b9fa" [label="/bin/sh -c setx /M Path \"c:\\git\\cmd;c:\\git\\bin;c:\\git\\usr\\bin;%Path%;c:\\gcc\\bin;c:\\go\\bin\" &&  setx GOROOT \"c:\\go\" &&  powershell -command   $ErrorActionPreference = 'Stop';   Function Download-File([string] $source, [string] $target) {    $wc = New-Object net.webclient; $wc.Downloadfile($source, $target)   }     Write-Host INFO: Downloading git...;   Download-File %GIT_LOCATION% gitsetup.exe;     Write-Host INFO: Downloading go...;   Download-File https://storage.googleapis.com/golang/go%GO_VERSION%.windows-amd64.msi go.msi;     Write-Host INFO: Downloading compiler 1 of 3...;   Download-File https://raw.githubusercontent.com/jhowardmsft/docker-tdmgcc/master/gcc.zip gcc.zip;     Write-Host INFO: Downloading compiler 2 of 3...;   Download-File https://raw.githubusercontent.com/jhowardmsft/docker-tdmgcc/master/runtime.zip runtime.zip;     Write-Host INFO: Downloading compiler 3 of 3...;   Download-File https://raw.githubusercontent.com/jhowardmsft/docker-tdmgcc/master/binutils.zip binutils.zip;     Write-Host INFO: Installing git...;   Start-Process gitsetup.exe -ArgumentList '/VERYSILENT /SUPPRESSMSGBOXES /CLOSEAPPLICATIONS /DIR=c:\\git\\' -Wait;     Write-Host INFO: Installing go...\";   Start-Process msiexec -ArgumentList '-i go.msi -quiet' -Wait;     Write-Host INFO: Unzipping compiler...;   c:\\git\\usr\\bin\\unzip.exe -q -o gcc.zip -d /c/gcc;   c:\\git\\usr\\bin\\unzip.exe -q -o runtime.zip -d /c/gcc;   c:\\git\\usr\\bin\\unzip.exe -q -o binutils.zip -d /c/gcc\";     Write-Host INFO: Removing interim files;   Remove-Item *.zip;   Remove-Item go.msi;   Remove-Item gitsetup.exe;     Write-Host INFO: Completed" shape="box"];
  "sha256:d396eac15a4bf96495d3df78d2cf36d7a4ab717d4912d60a70fbb8de3d22bf87" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:60ce01a1cfb5dad5d2443fd6e3d0ace5317f28ec474fb12f6d70520dcafbffd0" [label="sha256:60ce01a1cfb5dad5d2443fd6e3d0ace5317f28ec474fb12f6d70520dcafbffd0" shape="plaintext"];
  "sha256:21635d0b9552d797491c032a3736fc19a48392c8c0f3f25ba14e417f9e32f6f8" -> "sha256:a81c7fc0ece0c8e240893e67bad1635d5fc9d0b71bf548d98863a39ea098c874" [label=""];
  "sha256:a81c7fc0ece0c8e240893e67bad1635d5fc9d0b71bf548d98863a39ea098c874" -> "sha256:3527504a94ac4ea86cc6ba3a92f3fb975421b026d046b6398617d1d5dcc6b9fa" [label=""];
  "sha256:3527504a94ac4ea86cc6ba3a92f3fb975421b026d046b6398617d1d5dcc6b9fa" -> "sha256:d396eac15a4bf96495d3df78d2cf36d7a4ab717d4912d60a70fbb8de3d22bf87" [label=""];
  "sha256:3dc38204177b74d33ec83266ebf96ceae32e49df857adccf3e1be9577256e9cb" -> "sha256:d396eac15a4bf96495d3df78d2cf36d7a4ab717d4912d60a70fbb8de3d22bf87" [label=""];
  "sha256:d396eac15a4bf96495d3df78d2cf36d7a4ab717d4912d60a70fbb8de3d22bf87" -> "sha256:60ce01a1cfb5dad5d2443fd6e3d0ace5317f28ec474fb12f6d70520dcafbffd0" [label=""];
}
