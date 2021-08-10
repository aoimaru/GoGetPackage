[app/sources/294701059.Dockerfile]
digraph {
  "sha256:c2e404c2a8fca6fe9ab35c51ca5b37ae6321d4592671c21d1978db174915f07b" [label="docker-image://mcr.microsoft.com/dotnet/framework/aspnet:4.7.2-windowsservercore-ltsc2016@sha256:fe831ee18f2c01c595310282b0665bf3e1d9dc4145595ccb4aaa6b089184e11a" shape="ellipse"];
  "sha256:b75ca8576787df092b4be95039d549a6c7e34f734ad15795670518929d3d99a1" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Add-WindowsFeature NET-WCF-TCP-Activation45; Add-WindowsFeature NET-WCF-HTTP-Activation45; Add-WindowsFeature Web-WebSockets" shape="box"];
  "sha256:fcd6ec1de1d78c344b86c196ebbd7e926df40e6feced4065773b1037a6556e6c" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; windows\\system32\\inetsrv\\appcmd.exe set app 'Default Web Site/' /enabledProtocols:\"http,net.tcp\"" shape="box"];
  "sha256:5eff1eee8116100b62264106f984736f683365a7c747a4b061a759ff38a0dfb2" [label="sha256:5eff1eee8116100b62264106f984736f683365a7c747a4b061a759ff38a0dfb2" shape="plaintext"];
  "sha256:c2e404c2a8fca6fe9ab35c51ca5b37ae6321d4592671c21d1978db174915f07b" -> "sha256:b75ca8576787df092b4be95039d549a6c7e34f734ad15795670518929d3d99a1" [label=""];
  "sha256:b75ca8576787df092b4be95039d549a6c7e34f734ad15795670518929d3d99a1" -> "sha256:fcd6ec1de1d78c344b86c196ebbd7e926df40e6feced4065773b1037a6556e6c" [label=""];
  "sha256:fcd6ec1de1d78c344b86c196ebbd7e926df40e6feced4065773b1037a6556e6c" -> "sha256:5eff1eee8116100b62264106f984736f683365a7c747a4b061a759ff38a0dfb2" [label=""];
}

