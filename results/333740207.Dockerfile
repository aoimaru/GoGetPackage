[app/sources/333740207.Dockerfile]
digraph {
  "sha256:a9208aefa2f4096dbe0190c3f1230b66ba52154515483db2859d8f490a16e9f0" [label="local://context" shape="ellipse"];
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" [label="docker-image://docker.io/microsoft/aspnet:windowsservercore-10.0.14393.693" shape="ellipse"];
  "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ItemProperty -path 'HKLM:\\SYSTEM\\CurrentControlSet\\Services\\Dnscache\\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord" shape="box"];
  "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Remove-Website -Name 'Default Web Site';     New-Item -Path 'C:\\web-app' -Type Directory;     New-Website -Name 'web-app' -PhysicalPath 'C:\\web-app' -Port 80 -Force" shape="box"];
  "sha256:b8058cf0f7789a010b4abad7538985d4c39e007abc1d9dd7eaa2294f0d2bd790" [label="copy{src=/ProductLaunchWeb/_PublishedWebsites/ProductLaunch.Web, dest=/web-app}" shape="note"];
  "sha256:a63c75c14511ba7739a957348f03ad146b01b4bc91485176a1e691728cda799b" [label="copy{src=/Web.config, dest=/web-app/Web.config}" shape="note"];
  "sha256:76d3d6fddccffd0641d2651f22e505e85f17e05a74709edf651db58e2420d750" [label="sha256:76d3d6fddccffd0641d2651f22e505e85f17e05a74709edf651db58e2420d750" shape="plaintext"];
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" -> "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" [label=""];
  "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" -> "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" [label=""];
  "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" -> "sha256:b8058cf0f7789a010b4abad7538985d4c39e007abc1d9dd7eaa2294f0d2bd790" [label=""];
  "sha256:a9208aefa2f4096dbe0190c3f1230b66ba52154515483db2859d8f490a16e9f0" -> "sha256:b8058cf0f7789a010b4abad7538985d4c39e007abc1d9dd7eaa2294f0d2bd790" [label=""];
  "sha256:b8058cf0f7789a010b4abad7538985d4c39e007abc1d9dd7eaa2294f0d2bd790" -> "sha256:a63c75c14511ba7739a957348f03ad146b01b4bc91485176a1e691728cda799b" [label=""];
  "sha256:a9208aefa2f4096dbe0190c3f1230b66ba52154515483db2859d8f490a16e9f0" -> "sha256:a63c75c14511ba7739a957348f03ad146b01b4bc91485176a1e691728cda799b" [label=""];
  "sha256:a63c75c14511ba7739a957348f03ad146b01b4bc91485176a1e691728cda799b" -> "sha256:76d3d6fddccffd0641d2651f22e505e85f17e05a74709edf651db58e2420d750" [label=""];
}

