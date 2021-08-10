[app/sources/456246708.Dockerfile]
digraph {
  "sha256:1f5c9b84e348c576a6f85d97989dd29d09a43c77f81f4c36973e5d64f77e1980" [label="docker-image://docker.io/microsoft/dotnet:1.1-runtime-nanoserver" shape="ellipse"];
  "sha256:97742d0ab0c223bda9f99ac636976565736b83937225c144acd23df9de336091" [label="mkdir{path=/app}" shape="note"];
  "sha256:2e79d131e236824e3c81fb6811b917d3567442ba5e1c45abe1db35fba0539274" [label="powershell set-itemproperty -path 'HKLM:\\SYSTEM\\CurrentControlSet\\Services\\Dnscache\\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord" shape="box"];
  "sha256:0c8b39e449d516b2f99cf3ca0299492ce5bdf16014633836b949924b0e175140" [label="local://context" shape="ellipse"];
  "sha256:f69b65009e7dea05b7cd71427b96088c209e616eab1f7b51f2e3f0a913632fa7" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:a534ff1cf07aee5d81f1c3dd4a2c352d37e27d54fb20eb3881bc27d8481f3feb" [label="sha256:a534ff1cf07aee5d81f1c3dd4a2c352d37e27d54fb20eb3881bc27d8481f3feb" shape="plaintext"];
  "sha256:1f5c9b84e348c576a6f85d97989dd29d09a43c77f81f4c36973e5d64f77e1980" -> "sha256:97742d0ab0c223bda9f99ac636976565736b83937225c144acd23df9de336091" [label=""];
  "sha256:97742d0ab0c223bda9f99ac636976565736b83937225c144acd23df9de336091" -> "sha256:2e79d131e236824e3c81fb6811b917d3567442ba5e1c45abe1db35fba0539274" [label=""];
  "sha256:2e79d131e236824e3c81fb6811b917d3567442ba5e1c45abe1db35fba0539274" -> "sha256:f69b65009e7dea05b7cd71427b96088c209e616eab1f7b51f2e3f0a913632fa7" [label=""];
  "sha256:0c8b39e449d516b2f99cf3ca0299492ce5bdf16014633836b949924b0e175140" -> "sha256:f69b65009e7dea05b7cd71427b96088c209e616eab1f7b51f2e3f0a913632fa7" [label=""];
  "sha256:f69b65009e7dea05b7cd71427b96088c209e616eab1f7b51f2e3f0a913632fa7" -> "sha256:a534ff1cf07aee5d81f1c3dd4a2c352d37e27d54fb20eb3881bc27d8481f3feb" [label=""];
}

