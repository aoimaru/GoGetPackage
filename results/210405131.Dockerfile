[app/sources/210405131.Dockerfile]
digraph {
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" [label="docker-image://docker.io/microsoft/aspnet:windowsservercore-10.0.14393.693" shape="ellipse"];
  "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ItemProperty -path 'HKLM:\\SYSTEM\\CurrentControlSet\\Services\\Dnscache\\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord" shape="box"];
  "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Remove-Website -Name 'Default Web Site';     New-Item -Path 'C:\\web-app' -Type Directory;     New-Website -Name 'web-app' -PhysicalPath 'C:\\web-app' -Port 80 -Force" shape="box"];
  "sha256:4cdfc7c9299ff95eea1340c0580d2248b37ca77d3b18c0d57dc65439bf338054" [label="local://context" shape="ellipse"];
  "sha256:963fa734469a3b036b139e6ceb782db5d3c2cd0879e8c98d7f55801b63027540" [label="copy{src=/ProductLaunchWeb/_PublishedWebsites/ProductLaunch.Web, dest=/web-app}" shape="note"];
  "sha256:245be2e00eb995f5cabdd70a5855ae5c2a2191c01cb461951d09c4af4fe6f0f0" [label="copy{src=/Web.config, dest=/web-app/Web.config}" shape="note"];
  "sha256:7b53699066c520ad7a74b1cb4ae3d8a665db9ed823d654e0355c1ce6ca2161aa" [label="sha256:7b53699066c520ad7a74b1cb4ae3d8a665db9ed823d654e0355c1ce6ca2161aa" shape="plaintext"];
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" -> "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" [label=""];
  "sha256:719af034aec84c41fce30a7afbeb833f7d21d8e54d687cf54ab98f249c639b7d" -> "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" [label=""];
  "sha256:b1534769442e7bb8b1e91573299c4666d4813d99f84ac509d93e14708bc074ed" -> "sha256:963fa734469a3b036b139e6ceb782db5d3c2cd0879e8c98d7f55801b63027540" [label=""];
  "sha256:4cdfc7c9299ff95eea1340c0580d2248b37ca77d3b18c0d57dc65439bf338054" -> "sha256:963fa734469a3b036b139e6ceb782db5d3c2cd0879e8c98d7f55801b63027540" [label=""];
  "sha256:963fa734469a3b036b139e6ceb782db5d3c2cd0879e8c98d7f55801b63027540" -> "sha256:245be2e00eb995f5cabdd70a5855ae5c2a2191c01cb461951d09c4af4fe6f0f0" [label=""];
  "sha256:4cdfc7c9299ff95eea1340c0580d2248b37ca77d3b18c0d57dc65439bf338054" -> "sha256:245be2e00eb995f5cabdd70a5855ae5c2a2191c01cb461951d09c4af4fe6f0f0" [label=""];
  "sha256:245be2e00eb995f5cabdd70a5855ae5c2a2191c01cb461951d09c4af4fe6f0f0" -> "sha256:7b53699066c520ad7a74b1cb4ae3d8a665db9ed823d654e0355c1ce6ca2161aa" [label=""];
}

