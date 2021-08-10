[app/sources/289271930.Dockerfile]
digraph {
  "sha256:24ff75264d2f837835abd3dd36179d5ac7ad4afe4e711225c97393463c4aaa06" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime-stretch-slim@sha256:ae9a94a778b4c4656f036e1dd858d6c972f6ad4423bdf9c5022e16f28fee5cf9" shape="ellipse"];
  "sha256:f496bfcf75681ea51cf9fe3e95f15a0b6818adb4a8be2c59fae8dd9b83d05165" [label="mkdir{path=/app}" shape="note"];
  "sha256:302e787fddb7671ba020d1902fead365d49a3c5c399dc7480aa98cf67a67ca98" [label="/bin/sh -c apt-get update && apt-get install libav-tools python2.7-minimal -y && cp /usr/bin/python2.7 /usr/bin/python" shape="box"];
  "sha256:b39fc677caab53157bf839e95b103bc03d89ca917ddb6d8a40602c0dcbffca97" [label="/bin/sh -c curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && chmod a+rx /usr/local/bin/youtube-dl" shape="box"];
  "sha256:79aae03d188d9f5b99c9e95a1a54c3c4636d9ea4f0ee87a3e411943b84e7a9c7" [label="mkdir{path=/app}" shape="note"];
  "sha256:4cebe6f9336067bc5a6655e3f78cf8dcfa8132fc51b37fa7b139d50ccd6854d1" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk-stretch" shape="ellipse"];
  "sha256:96dbe24ed473c18fa5b4bea5e995ffa9722cf2b15c45b6423661c55af03efe79" [label="mkdir{path=/src}" shape="note"];
  "sha256:2516ef413180a8200136b299dfe29478fe7551dd3b254c8ba66e07c85710972d" [label="local://context" shape="ellipse"];
  "sha256:a6bec966c272f5e7fc5d681cc7ae5ce360ae516ce1f9339854bd4eba39f0dcea" [label="copy{src=/*.sln, dest=/src/}" shape="note"];
  "sha256:f1b40fb0fc0153dd5010494c6fc2c95715832b2e2250f4b1ffbe2afc0d3a30f2" [label="copy{src=/DevWeek.Worker/DevWeek.Worker.csproj, dest=/src/DevWeek.Worker/}" shape="note"];
  "sha256:b3645d0bd09123beed1beb94d8ac8ac883b5519df9a2bc159924d9b357591408" [label="/bin/sh -c dotnet restore ./src-ci.sln" shape="box"];
  "sha256:298fd12d29216f7836f020a636abab7e21f7495629db4f206c4bfcf9d8f9eed2" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:26db5082cec26321fd74789f46cda3dd2c4e607c8dd80b2eea42244c7c8e884f" [label="mkdir{path=/src/DevWeek.Worker}" shape="note"];
  "sha256:8cc3915a56b8da0c88fb9a93a3d0cccd0cb2909bd80eed6ebf78f3274dec4b27" [label="/bin/sh -c dotnet build -c Release -o /app" shape="box"];
  "sha256:62256c7f55eeec07b8acbf935b167a5e14a286135aed460f43d7c931f8a5ef58" [label="/bin/sh -c dotnet publish -c Release -o /app" shape="box"];
  "sha256:d1152e50b601bccf200abb9d2b7f0214b52efb05c5f2922d4e6e1f5685a49548" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:08ddda983fab620d2ebb8fdd4825c5be7767544c64f66fc9ffa33c9d4592f85d" [label="sha256:08ddda983fab620d2ebb8fdd4825c5be7767544c64f66fc9ffa33c9d4592f85d" shape="plaintext"];
  "sha256:24ff75264d2f837835abd3dd36179d5ac7ad4afe4e711225c97393463c4aaa06" -> "sha256:f496bfcf75681ea51cf9fe3e95f15a0b6818adb4a8be2c59fae8dd9b83d05165" [label=""];
  "sha256:f496bfcf75681ea51cf9fe3e95f15a0b6818adb4a8be2c59fae8dd9b83d05165" -> "sha256:302e787fddb7671ba020d1902fead365d49a3c5c399dc7480aa98cf67a67ca98" [label=""];
  "sha256:302e787fddb7671ba020d1902fead365d49a3c5c399dc7480aa98cf67a67ca98" -> "sha256:b39fc677caab53157bf839e95b103bc03d89ca917ddb6d8a40602c0dcbffca97" [label=""];
  "sha256:b39fc677caab53157bf839e95b103bc03d89ca917ddb6d8a40602c0dcbffca97" -> "sha256:79aae03d188d9f5b99c9e95a1a54c3c4636d9ea4f0ee87a3e411943b84e7a9c7" [label=""];
  "sha256:4cebe6f9336067bc5a6655e3f78cf8dcfa8132fc51b37fa7b139d50ccd6854d1" -> "sha256:96dbe24ed473c18fa5b4bea5e995ffa9722cf2b15c45b6423661c55af03efe79" [label=""];
  "sha256:96dbe24ed473c18fa5b4bea5e995ffa9722cf2b15c45b6423661c55af03efe79" -> "sha256:a6bec966c272f5e7fc5d681cc7ae5ce360ae516ce1f9339854bd4eba39f0dcea" [label=""];
  "sha256:2516ef413180a8200136b299dfe29478fe7551dd3b254c8ba66e07c85710972d" -> "sha256:a6bec966c272f5e7fc5d681cc7ae5ce360ae516ce1f9339854bd4eba39f0dcea" [label=""];
  "sha256:a6bec966c272f5e7fc5d681cc7ae5ce360ae516ce1f9339854bd4eba39f0dcea" -> "sha256:f1b40fb0fc0153dd5010494c6fc2c95715832b2e2250f4b1ffbe2afc0d3a30f2" [label=""];
  "sha256:2516ef413180a8200136b299dfe29478fe7551dd3b254c8ba66e07c85710972d" -> "sha256:f1b40fb0fc0153dd5010494c6fc2c95715832b2e2250f4b1ffbe2afc0d3a30f2" [label=""];
  "sha256:f1b40fb0fc0153dd5010494c6fc2c95715832b2e2250f4b1ffbe2afc0d3a30f2" -> "sha256:b3645d0bd09123beed1beb94d8ac8ac883b5519df9a2bc159924d9b357591408" [label=""];
  "sha256:b3645d0bd09123beed1beb94d8ac8ac883b5519df9a2bc159924d9b357591408" -> "sha256:298fd12d29216f7836f020a636abab7e21f7495629db4f206c4bfcf9d8f9eed2" [label=""];
  "sha256:2516ef413180a8200136b299dfe29478fe7551dd3b254c8ba66e07c85710972d" -> "sha256:298fd12d29216f7836f020a636abab7e21f7495629db4f206c4bfcf9d8f9eed2" [label=""];
  "sha256:298fd12d29216f7836f020a636abab7e21f7495629db4f206c4bfcf9d8f9eed2" -> "sha256:26db5082cec26321fd74789f46cda3dd2c4e607c8dd80b2eea42244c7c8e884f" [label=""];
  "sha256:26db5082cec26321fd74789f46cda3dd2c4e607c8dd80b2eea42244c7c8e884f" -> "sha256:8cc3915a56b8da0c88fb9a93a3d0cccd0cb2909bd80eed6ebf78f3274dec4b27" [label=""];
  "sha256:8cc3915a56b8da0c88fb9a93a3d0cccd0cb2909bd80eed6ebf78f3274dec4b27" -> "sha256:62256c7f55eeec07b8acbf935b167a5e14a286135aed460f43d7c931f8a5ef58" [label=""];
  "sha256:79aae03d188d9f5b99c9e95a1a54c3c4636d9ea4f0ee87a3e411943b84e7a9c7" -> "sha256:d1152e50b601bccf200abb9d2b7f0214b52efb05c5f2922d4e6e1f5685a49548" [label=""];
  "sha256:62256c7f55eeec07b8acbf935b167a5e14a286135aed460f43d7c931f8a5ef58" -> "sha256:d1152e50b601bccf200abb9d2b7f0214b52efb05c5f2922d4e6e1f5685a49548" [label=""];
  "sha256:d1152e50b601bccf200abb9d2b7f0214b52efb05c5f2922d4e6e1f5685a49548" -> "sha256:08ddda983fab620d2ebb8fdd4825c5be7767544c64f66fc9ffa33c9d4592f85d" [label=""];
}

