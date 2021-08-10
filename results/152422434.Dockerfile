[app/sources/152422434.Dockerfile]
digraph {
  "sha256:49c2fd06c48a540c04157edef4ea8ca4c5998446989268b3f1d6a3dfba1096b2" [label="docker-image://docker.io/microsoft/windowsservercore:ltsc2016" shape="ellipse"];
  "sha256:329c44fe664e484bddbd58c7ea03e29d4885155d01c0bbf5b767ce655708d489" [label="powershell -Command $ErrorActionPreference = 'Stop'; $output = netsh interface ipv4 show subinterfaces;     for ($i = 0; $i -le ($output.length - 1); $i += 1) {         if($output[$i] -like '*vEthernet*') {             $interfaces = $output[$i]         }     };     $interfaces = $interfaces -replace '\\d+\\s+', '';     $interface = $interfaces.Trim().TrimEnd().TrimStart();     netsh interface ipv4 set subinterface interface=$interface mtu=1460 store=persistent" shape="box"];
  "sha256:c73e818a270056539700ac633f5592f95725d8cf2d12806edfed195d5b9e0ca5" [label="powershell -Command $ErrorActionPreference = 'Stop'; iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));     choco feature disable --name showDownloadProgress" shape="box"];
  "sha256:f61be3740d709256c04f3dfbbf3c2cdb27c199295a852fc45125bcb280040eef" [label="powershell -Command $ErrorActionPreference = 'Stop'; choco feature enable -n=allowGlobalConfirmation;     choco install git" shape="box"];
  "sha256:177e18f91bfcebe70a3a2d501aa503961502fe1e354f8b311664340fc60941cc" [label="powershell -Command $ErrorActionPreference = 'Stop'; git config --global core.autocrlf true" shape="box"];
  "sha256:b4b25582812b28630fd6c5b0ec07799031ce5cd844d7ed1995cd2ab6ad3d3be4" [label="powershell -Command $ErrorActionPreference = 'Stop'; [Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls';     Invoke-WebRequest -Method Get -Uri https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.3-1/rubyinstaller-devkit-2.5.3-1-x64.exe -OutFile C:\\rubyinstaller.exe ; \tStart-Process C:\\rubyinstaller.exe -ArgumentList '/silent' -Wait ; \tRemove-Item C:\\rubyinstaller.exe -Force" shape="box"];
  "sha256:71d81412c7175736392bc655adba4f01bb1d5586105279dc049d1725dde11c31" [label="powershell -Command $ErrorActionPreference = 'Stop'; C:\\Ruby25-x64\\bin\\ridk install 1 2 3" shape="box"];
  "sha256:c0957ad73a9997bad61d7afbdbca28ee8fe0dec421920b11b19fe40f932a5c2e" [label="powershell -Command $ErrorActionPreference = 'Stop'; gem install bundler:1.17.3" shape="box"];
  "sha256:dec8db2040766ed27ad5318ea4f074a4475b832348cb543567d3d4c34fc8e7d9" [label="powershell -Command $ErrorActionPreference = 'Stop'; gem update --system" shape="box"];
  "sha256:73ed3d7a40f4567097c2b8f79ccf0dffb19a7aafb18660a25cc190365cf411dc" [label="sha256:73ed3d7a40f4567097c2b8f79ccf0dffb19a7aafb18660a25cc190365cf411dc" shape="plaintext"];
  "sha256:49c2fd06c48a540c04157edef4ea8ca4c5998446989268b3f1d6a3dfba1096b2" -> "sha256:329c44fe664e484bddbd58c7ea03e29d4885155d01c0bbf5b767ce655708d489" [label=""];
  "sha256:329c44fe664e484bddbd58c7ea03e29d4885155d01c0bbf5b767ce655708d489" -> "sha256:c73e818a270056539700ac633f5592f95725d8cf2d12806edfed195d5b9e0ca5" [label=""];
  "sha256:c73e818a270056539700ac633f5592f95725d8cf2d12806edfed195d5b9e0ca5" -> "sha256:f61be3740d709256c04f3dfbbf3c2cdb27c199295a852fc45125bcb280040eef" [label=""];
  "sha256:f61be3740d709256c04f3dfbbf3c2cdb27c199295a852fc45125bcb280040eef" -> "sha256:177e18f91bfcebe70a3a2d501aa503961502fe1e354f8b311664340fc60941cc" [label=""];
  "sha256:177e18f91bfcebe70a3a2d501aa503961502fe1e354f8b311664340fc60941cc" -> "sha256:b4b25582812b28630fd6c5b0ec07799031ce5cd844d7ed1995cd2ab6ad3d3be4" [label=""];
  "sha256:b4b25582812b28630fd6c5b0ec07799031ce5cd844d7ed1995cd2ab6ad3d3be4" -> "sha256:71d81412c7175736392bc655adba4f01bb1d5586105279dc049d1725dde11c31" [label=""];
  "sha256:71d81412c7175736392bc655adba4f01bb1d5586105279dc049d1725dde11c31" -> "sha256:c0957ad73a9997bad61d7afbdbca28ee8fe0dec421920b11b19fe40f932a5c2e" [label=""];
  "sha256:c0957ad73a9997bad61d7afbdbca28ee8fe0dec421920b11b19fe40f932a5c2e" -> "sha256:dec8db2040766ed27ad5318ea4f074a4475b832348cb543567d3d4c34fc8e7d9" [label=""];
  "sha256:dec8db2040766ed27ad5318ea4f074a4475b832348cb543567d3d4c34fc8e7d9" -> "sha256:73ed3d7a40f4567097c2b8f79ccf0dffb19a7aafb18660a25cc190365cf411dc" [label=""];
}

