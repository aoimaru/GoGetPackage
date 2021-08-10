[app/sources/367247410.Dockerfile]
digraph {
  "sha256:3edb9902cebd5ecb015f61f60603a2150eb3d47c7f0e702e488f18b10ad07f08" [label="docker-image://mcr.microsoft.com/windows/nanoserver:1903" shape="ellipse"];
  "sha256:9c1966ea775affa4828e965940070bf1a59f3464e85638b2b04ad85cc02c9c01" [label="docker-image://mcr.microsoft.com/windows/servercore:1903" shape="ellipse"];
  "sha256:162ff28cd5ba3584e249ff13e0710d45d0cb9005dfbe4bd27f659428987a056b" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -OutFile aspnetcore.zip https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$Env:ASPNETCORE_VERSION/aspnetcore-runtime-$Env:ASPNETCORE_VERSION-win-x64.zip;     $aspnetcore_sha512 = 'd7b67ba095a862635a27296f0abef664c19a3c9640e041e352b67a002b0ed98de65f97e57c777bcc5b0cc752020fd9afa2c74b8fbcd1d45458faaff344eaf7c2';     if ((Get-FileHash aspnetcore.zip -Algorithm sha512).Hash -ne $aspnetcore_sha512) {         Write-Host 'CHECKSUM VERIFICATION FAILED!';         exit 1;     };         Expand-Archive aspnetcore.zip -DestinationPath dotnet;     Remove-Item -Force aspnetcore.zip" shape="box"];
  "sha256:7b8e51fe35d1ba24edc9997676e52fc6de580de3e307a97868506333989ebf82" [label="copy{src=/dotnet, dest=/Program Files/dotnet}" shape="note"];
  "sha256:3a14c9635366c45341ff87d18aef01818daf1a357e743f46616c390d4feac049" [label="/bin/sh -c setx /M PATH \"%PATH%;C:\\Program Files\\dotnet\"" shape="box"];
  "sha256:d2dd333eb5dbc47297bd4929aa1a398b5aa15e3611a0039bcb05e9fa699dbd49" [label="sha256:d2dd333eb5dbc47297bd4929aa1a398b5aa15e3611a0039bcb05e9fa699dbd49" shape="plaintext"];
  "sha256:9c1966ea775affa4828e965940070bf1a59f3464e85638b2b04ad85cc02c9c01" -> "sha256:162ff28cd5ba3584e249ff13e0710d45d0cb9005dfbe4bd27f659428987a056b" [label=""];
  "sha256:3edb9902cebd5ecb015f61f60603a2150eb3d47c7f0e702e488f18b10ad07f08" -> "sha256:7b8e51fe35d1ba24edc9997676e52fc6de580de3e307a97868506333989ebf82" [label=""];
  "sha256:162ff28cd5ba3584e249ff13e0710d45d0cb9005dfbe4bd27f659428987a056b" -> "sha256:7b8e51fe35d1ba24edc9997676e52fc6de580de3e307a97868506333989ebf82" [label=""];
  "sha256:7b8e51fe35d1ba24edc9997676e52fc6de580de3e307a97868506333989ebf82" -> "sha256:3a14c9635366c45341ff87d18aef01818daf1a357e743f46616c390d4feac049" [label=""];
  "sha256:3a14c9635366c45341ff87d18aef01818daf1a357e743f46616c390d4feac049" -> "sha256:d2dd333eb5dbc47297bd4929aa1a398b5aa15e3611a0039bcb05e9fa699dbd49" [label=""];
}

