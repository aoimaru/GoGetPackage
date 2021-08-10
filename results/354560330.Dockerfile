[app/sources/354560330.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:3f11b7172b544ce115659007ea854e278ee3d6f4dbd0f333bd55a286776a562d" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; (New-Object System.Net.WebClient).DownloadFile('https://msdnshared.blob.core.windows.net/media/2016/04/NanoServerApiScan.zip', 'NanoServerApiScan.zip') ;     Expand-Archive NanoServerApiScan.zip -DestinationPath C:\\tool ;     Remove-Item NanoServerApiScan.zip" shape="box"];
  "sha256:a7d4e34653e75a4ef473790c700bd9885354507a736b1fbdd2a99123f5bac231" [label="local://context" shape="ellipse"];
  "sha256:4b0dd8684cf672f10d1fa1d247e11f39e023cc51bb1ed89f8faedd12c84ef637" [label="copy{src=/tmp/Forwarders, dest=/tool}" shape="note"];
  "sha256:f7742383f240497daed9b83a4dc56086bb4331b69bfc44cb874611d2f4c4831c" [label="copy{src=/tmp/kit, dest=/kit/10/Lib/10.0.14393.0}" shape="note"];
  "sha256:f5034f590db5d3d80f81b778c9ddac8136ab0b09510f53dcf37ca21eee18e86e" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; mkdir C:\\scan" shape="box"];
  "sha256:21374c6986d352580b2a7781e335c2ee7471043396f6a9ef1fd20ccb72bb61a8" [label="mkdir{path=/scan}" shape="note"];
  "sha256:e01fc4664d843a1238b41736a62a4739710ad2bc30cd78c1c45b7dab5dc7eec1" [label="sha256:e01fc4664d843a1238b41736a62a4739710ad2bc30cd78c1c45b7dab5dc7eec1" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:3f11b7172b544ce115659007ea854e278ee3d6f4dbd0f333bd55a286776a562d" [label=""];
  "sha256:3f11b7172b544ce115659007ea854e278ee3d6f4dbd0f333bd55a286776a562d" -> "sha256:4b0dd8684cf672f10d1fa1d247e11f39e023cc51bb1ed89f8faedd12c84ef637" [label=""];
  "sha256:a7d4e34653e75a4ef473790c700bd9885354507a736b1fbdd2a99123f5bac231" -> "sha256:4b0dd8684cf672f10d1fa1d247e11f39e023cc51bb1ed89f8faedd12c84ef637" [label=""];
  "sha256:4b0dd8684cf672f10d1fa1d247e11f39e023cc51bb1ed89f8faedd12c84ef637" -> "sha256:f7742383f240497daed9b83a4dc56086bb4331b69bfc44cb874611d2f4c4831c" [label=""];
  "sha256:a7d4e34653e75a4ef473790c700bd9885354507a736b1fbdd2a99123f5bac231" -> "sha256:f7742383f240497daed9b83a4dc56086bb4331b69bfc44cb874611d2f4c4831c" [label=""];
  "sha256:f7742383f240497daed9b83a4dc56086bb4331b69bfc44cb874611d2f4c4831c" -> "sha256:f5034f590db5d3d80f81b778c9ddac8136ab0b09510f53dcf37ca21eee18e86e" [label=""];
  "sha256:f5034f590db5d3d80f81b778c9ddac8136ab0b09510f53dcf37ca21eee18e86e" -> "sha256:21374c6986d352580b2a7781e335c2ee7471043396f6a9ef1fd20ccb72bb61a8" [label=""];
  "sha256:21374c6986d352580b2a7781e335c2ee7471043396f6a9ef1fd20ccb72bb61a8" -> "sha256:e01fc4664d843a1238b41736a62a4739710ad2bc30cd78c1c45b7dab5dc7eec1" [label=""];
}

