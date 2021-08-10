[app/sources/216041908.Dockerfile]
digraph {
  "sha256:8a72db55642a273e64154478b9a4786bc135ef2133df3973a0b97bea3987a24a" [label="docker-image://docker.io/microsoft/aspnet:4.7.1-windowsservercore-10.0.14393.1884" shape="ellipse"];
  "sha256:85ff6a7a705e61a17e9403962e4d51cde8ae77fb222eb590c1740909a0caa48e" [label="powershell Remove-Website -Name 'Default Web Site';    New-Website -Name 'web-app' -Port 80 -PhysicalPath 'C:\\web-app' -Force;     New-WebApplication -Name 'ProductLaunch' -Site 'web-app' -PhysicalPath 'C:\\web-app' -Force" shape="box"];
  "sha256:bf4b8154f28aa1542ad06477fc78c07c5f156811a375ced385d7b5ac74b54a55" [label="local://context" shape="ellipse"];
  "sha256:ac19cb3a872f5ee39432fced2adb83f46f6853b3954aa569777a0bb67060d0cb" [label="copy{src=/.\\docker\\web\\bootstrap.ps1, dest=/C:\\}" shape="note"];
  "sha256:d743df1a3280957970f64188a42dbcb0c4277e23da1923b6ab0d1d3c600db205" [label="docker-image://docker.io/sixeyed/msbuild:netfx-4.5.2-webdeploy" shape="ellipse"];
  "sha256:18ba1b3e8b5b79d91bbc327aa87dc3f233c5c7d62895dd049ce5ede5fd963481" [label="mkdir{path=/C:\\src\\SignUp.Web}" shape="note"];
  "sha256:3f575e4b04d14ef80ae0a4d41942ecfc085a147c83d4b78df5f3ceb3110f843d" [label="copy{src=/src\\SignUp.Web\\packages.config, dest=/C:\\src\\SignUp.Web/}" shape="note"];
  "sha256:0d1db3003424e0684b419ad1c1620e145426fa44beb4a7807cce17e221cc8b75" [label="/bin/sh -c nuget restore packages.config -PackagesDirectory ..\\packages" shape="box"];
  "sha256:b789c838159aa921200012fcff50266b602f53c32ab8188a1c44b2fdf6907d6f" [label="copy{src=/src, dest=/C:\\src\\SignUp.Web/C:\\src}" shape="note"];
  "sha256:e81843578e74efbf1a300af64b9ae69289622ebc78cef675945fbd94b69b1d92" [label="/bin/sh -c msbuild SignUp.Web.csproj /p:OutputPath=c:\\out\\web\\SignUpWeb         /p:DeployOnBuild=true /p:VSToolsPath=C:\\MSBuild.Microsoft.VisualStudio.Web.targets.14.0.0.3\\tools\\VSToolsPath" shape="box"];
  "sha256:b6152117b6fb2eb11194f97b53cfe7a7a527c9331a12fc434789b803e812dba8" [label="copy{src=/C:\\src\\SignUp.Web/C:\\out\\web\\SignUpWeb\\_PublishedWebsites\\SignUp.Web, dest=/C:\\web-app}" shape="note"];
  "sha256:2fef1d97de2caa892f1fe9a47f8db3e42088d09f802ab8c6bdf4d80724fb49f3" [label="sha256:2fef1d97de2caa892f1fe9a47f8db3e42088d09f802ab8c6bdf4d80724fb49f3" shape="plaintext"];
  "sha256:8a72db55642a273e64154478b9a4786bc135ef2133df3973a0b97bea3987a24a" -> "sha256:85ff6a7a705e61a17e9403962e4d51cde8ae77fb222eb590c1740909a0caa48e" [label=""];
  "sha256:85ff6a7a705e61a17e9403962e4d51cde8ae77fb222eb590c1740909a0caa48e" -> "sha256:ac19cb3a872f5ee39432fced2adb83f46f6853b3954aa569777a0bb67060d0cb" [label=""];
  "sha256:bf4b8154f28aa1542ad06477fc78c07c5f156811a375ced385d7b5ac74b54a55" -> "sha256:ac19cb3a872f5ee39432fced2adb83f46f6853b3954aa569777a0bb67060d0cb" [label=""];
  "sha256:d743df1a3280957970f64188a42dbcb0c4277e23da1923b6ab0d1d3c600db205" -> "sha256:18ba1b3e8b5b79d91bbc327aa87dc3f233c5c7d62895dd049ce5ede5fd963481" [label=""];
  "sha256:18ba1b3e8b5b79d91bbc327aa87dc3f233c5c7d62895dd049ce5ede5fd963481" -> "sha256:3f575e4b04d14ef80ae0a4d41942ecfc085a147c83d4b78df5f3ceb3110f843d" [label=""];
  "sha256:bf4b8154f28aa1542ad06477fc78c07c5f156811a375ced385d7b5ac74b54a55" -> "sha256:3f575e4b04d14ef80ae0a4d41942ecfc085a147c83d4b78df5f3ceb3110f843d" [label=""];
  "sha256:3f575e4b04d14ef80ae0a4d41942ecfc085a147c83d4b78df5f3ceb3110f843d" -> "sha256:0d1db3003424e0684b419ad1c1620e145426fa44beb4a7807cce17e221cc8b75" [label=""];
  "sha256:0d1db3003424e0684b419ad1c1620e145426fa44beb4a7807cce17e221cc8b75" -> "sha256:b789c838159aa921200012fcff50266b602f53c32ab8188a1c44b2fdf6907d6f" [label=""];
  "sha256:bf4b8154f28aa1542ad06477fc78c07c5f156811a375ced385d7b5ac74b54a55" -> "sha256:b789c838159aa921200012fcff50266b602f53c32ab8188a1c44b2fdf6907d6f" [label=""];
  "sha256:b789c838159aa921200012fcff50266b602f53c32ab8188a1c44b2fdf6907d6f" -> "sha256:e81843578e74efbf1a300af64b9ae69289622ebc78cef675945fbd94b69b1d92" [label=""];
  "sha256:ac19cb3a872f5ee39432fced2adb83f46f6853b3954aa569777a0bb67060d0cb" -> "sha256:b6152117b6fb2eb11194f97b53cfe7a7a527c9331a12fc434789b803e812dba8" [label=""];
  "sha256:e81843578e74efbf1a300af64b9ae69289622ebc78cef675945fbd94b69b1d92" -> "sha256:b6152117b6fb2eb11194f97b53cfe7a7a527c9331a12fc434789b803e812dba8" [label=""];
  "sha256:b6152117b6fb2eb11194f97b53cfe7a7a527c9331a12fc434789b803e812dba8" -> "sha256:2fef1d97de2caa892f1fe9a47f8db3e42088d09f802ab8c6bdf4d80724fb49f3" [label=""];
}

