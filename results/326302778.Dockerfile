[app/sources/326302778.Dockerfile]
digraph {
  "sha256:fb7d19b7cf88e4ced033b86b20d348396ca375134eed6d0770ff6cd4286953a5" [label="docker-image://wincontainerhackfest.azurecr.io/windows-ad:msmq-base-1809" shape="ellipse"];
  "sha256:a52ba3ba3d181138e12f84e5f9188d6f7e725a232d7ec38f3edff9c1af9008b7" [label="mkdir{path=/MonolithTest}" shape="note"];
  "sha256:11e9f67df785feec2eaae2dd77e60495e4fd249dc87116ce81fabd6b9554e9be" [label="docker-image://docker.io/microsoft/dotnet-framework:4.7.2-sdk" shape="ellipse"];
  "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" [label="mkdir{path=/C:\\src}" shape="note"];
  "sha256:48fca1fb0bee3fdf8b79d54d78823a48901f447a35a2b4fba74e249b5ff9cc06" [label="local://context" shape="ellipse"];
  "sha256:a7b9fb280ab77d5520024d4131bf8df4b64cb8964a3457fe663ccc3172ffbf44" [label="copy{src=/, dest=/C:\\src/C:\\src}" shape="note"];
  "sha256:97b931a4318b212ad0a4178691633e1b935be1b9039609b6d497ec30a945a31e" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; msbuild MSMQReceiverTest\\MSMQReceiverTest.csproj /p:OutputPath=C:\\out /p:DeployOnBuild=true" shape="box"];
  "sha256:6f3618609bab3ec028b72335e5792f3bed8182005239673be9c973541d5bf704" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; msbuild MSMQSenderTest\\MSMQSenderTest.csproj /p:OutputPath=C:\\out /p:DeployOnBuild=true" shape="box"];
  "sha256:3be89f15d941b40820c6a8c41c1e4ed2ed2b15d566a67803e1b19db6731e63d0" [label="copy{src=/C:\\src/C:\\out\\, dest=/MonolithTest/}" shape="note"];
  "sha256:38c8a03319b8e1e46b3300daafee25fe93093eb5eb279a593693b703f95af285" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $msmqsend = Start-Process .\\MSMQSenderTest.exe -RedirectStandardOutput msmqsend.out -PassThru;     Start-Sleep -Seconds 15;     $msmqreceive = Start-Process .\\MSMQReceiverTest.exe -RedirectStandardOutput msmqreceive.out -PassThru;     Start-Sleep -Seconds 15;     Stop-Process -InputObject $msmqsend;     Stop-Process -InputObject $msmqreceive;     cat msmqsend.out;     cat msmqreceive.out;" shape="box"];
  "sha256:cc6608b89310a1abbbdce8bff81ebdefff63abbe837b1eee9b4fd48df24ac469" [label="sha256:cc6608b89310a1abbbdce8bff81ebdefff63abbe837b1eee9b4fd48df24ac469" shape="plaintext"];
  "sha256:fb7d19b7cf88e4ced033b86b20d348396ca375134eed6d0770ff6cd4286953a5" -> "sha256:a52ba3ba3d181138e12f84e5f9188d6f7e725a232d7ec38f3edff9c1af9008b7" [label=""];
  "sha256:11e9f67df785feec2eaae2dd77e60495e4fd249dc87116ce81fabd6b9554e9be" -> "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" [label=""];
  "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" -> "sha256:a7b9fb280ab77d5520024d4131bf8df4b64cb8964a3457fe663ccc3172ffbf44" [label=""];
  "sha256:48fca1fb0bee3fdf8b79d54d78823a48901f447a35a2b4fba74e249b5ff9cc06" -> "sha256:a7b9fb280ab77d5520024d4131bf8df4b64cb8964a3457fe663ccc3172ffbf44" [label=""];
  "sha256:a7b9fb280ab77d5520024d4131bf8df4b64cb8964a3457fe663ccc3172ffbf44" -> "sha256:97b931a4318b212ad0a4178691633e1b935be1b9039609b6d497ec30a945a31e" [label=""];
  "sha256:97b931a4318b212ad0a4178691633e1b935be1b9039609b6d497ec30a945a31e" -> "sha256:6f3618609bab3ec028b72335e5792f3bed8182005239673be9c973541d5bf704" [label=""];
  "sha256:a52ba3ba3d181138e12f84e5f9188d6f7e725a232d7ec38f3edff9c1af9008b7" -> "sha256:3be89f15d941b40820c6a8c41c1e4ed2ed2b15d566a67803e1b19db6731e63d0" [label=""];
  "sha256:6f3618609bab3ec028b72335e5792f3bed8182005239673be9c973541d5bf704" -> "sha256:3be89f15d941b40820c6a8c41c1e4ed2ed2b15d566a67803e1b19db6731e63d0" [label=""];
  "sha256:3be89f15d941b40820c6a8c41c1e4ed2ed2b15d566a67803e1b19db6731e63d0" -> "sha256:38c8a03319b8e1e46b3300daafee25fe93093eb5eb279a593693b703f95af285" [label=""];
  "sha256:38c8a03319b8e1e46b3300daafee25fe93093eb5eb279a593693b703f95af285" -> "sha256:cc6608b89310a1abbbdce8bff81ebdefff63abbe837b1eee9b4fd48df24ac469" [label=""];
}

