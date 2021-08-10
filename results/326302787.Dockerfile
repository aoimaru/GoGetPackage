[app/sources/326302787.Dockerfile]
digraph {
  "sha256:cb999552c8578054bb08c91b302d48914f40c9abb702b415dc833b1013d9f783" [label="docker-image://docker.io/myplooploops/windows-ad:msmq-base-1809" shape="ellipse"];
  "sha256:0eb51d9dd1c4b6e0351a0431c0d4c07a0b36283e88a34610f2e40e364cc10d43" [label="mkdir{path=/Sender}" shape="note"];
  "sha256:11e9f67df785feec2eaae2dd77e60495e4fd249dc87116ce81fabd6b9554e9be" [label="docker-image://docker.io/microsoft/dotnet-framework:4.7.2-sdk" shape="ellipse"];
  "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" [label="mkdir{path=/C:\\src}" shape="note"];
  "sha256:138edcf9dbcde4f528f7808cf46c14bd9a7b84fb956f0fbb380c74c1a4e889e1" [label="local://context" shape="ellipse"];
  "sha256:28cb8a3ffd8d6b87ce94fdcaec9b395a0755f3097166dcf603604efaf2073f26" [label="copy{src=/, dest=/C:\\src/C:\\src}" shape="note"];
  "sha256:caec78e4c458721bc6fd16ec1f4f7bae04b5322ce1b219ed551ace7152cbd842" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; msbuild MSMQSenderTest\\MSMQSenderTest.csproj /p:OutputPath=C:\\out /p:DeployOnBuild=true" shape="box"];
  "sha256:ff9871180cf86adb9a96ff7a35c5f2fd5989237c4c71b6b84477de7e624c4f42" [label="copy{src=/C:\\src/C:\\out\\, dest=/Sender/}" shape="note"];
  "sha256:7a244b50b0beb616c4823fb18faa3c6b909b64775941b5ff276bb8478bc731d4" [label="sha256:7a244b50b0beb616c4823fb18faa3c6b909b64775941b5ff276bb8478bc731d4" shape="plaintext"];
  "sha256:cb999552c8578054bb08c91b302d48914f40c9abb702b415dc833b1013d9f783" -> "sha256:0eb51d9dd1c4b6e0351a0431c0d4c07a0b36283e88a34610f2e40e364cc10d43" [label=""];
  "sha256:11e9f67df785feec2eaae2dd77e60495e4fd249dc87116ce81fabd6b9554e9be" -> "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" [label=""];
  "sha256:98f7d65c5f15dc2928e602bda85b92f50af392e7ec73782d7c916cc3ac49629b" -> "sha256:28cb8a3ffd8d6b87ce94fdcaec9b395a0755f3097166dcf603604efaf2073f26" [label=""];
  "sha256:138edcf9dbcde4f528f7808cf46c14bd9a7b84fb956f0fbb380c74c1a4e889e1" -> "sha256:28cb8a3ffd8d6b87ce94fdcaec9b395a0755f3097166dcf603604efaf2073f26" [label=""];
  "sha256:28cb8a3ffd8d6b87ce94fdcaec9b395a0755f3097166dcf603604efaf2073f26" -> "sha256:caec78e4c458721bc6fd16ec1f4f7bae04b5322ce1b219ed551ace7152cbd842" [label=""];
  "sha256:0eb51d9dd1c4b6e0351a0431c0d4c07a0b36283e88a34610f2e40e364cc10d43" -> "sha256:ff9871180cf86adb9a96ff7a35c5f2fd5989237c4c71b6b84477de7e624c4f42" [label=""];
  "sha256:caec78e4c458721bc6fd16ec1f4f7bae04b5322ce1b219ed551ace7152cbd842" -> "sha256:ff9871180cf86adb9a96ff7a35c5f2fd5989237c4c71b6b84477de7e624c4f42" [label=""];
  "sha256:ff9871180cf86adb9a96ff7a35c5f2fd5989237c4c71b6b84477de7e624c4f42" -> "sha256:7a244b50b0beb616c4823fb18faa3c6b909b64775941b5ff276bb8478bc731d4" [label=""];
}

