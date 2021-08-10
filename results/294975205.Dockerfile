[app/sources/294975205.Dockerfile]
digraph {
  "sha256:70fb648a87ba583acac3d299aa2f497efd7f3289e590a7123eed3e01f36b8310" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime-alpine" shape="ellipse"];
  "sha256:2cd22a6a189d8af123b121b271232bb4f82d0dcc6c1d037292c3fec8e1f8d411" [label="mkdir{path=/publish}" shape="note"];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" [label="local://context" shape="ellipse"];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-alpine" shape="ellipse"];
  "sha256:c779222ce24b80d77a9b865c92f3673c38e92dc748a5398debd4e39d30629b1c" [label="copy{src=/*.csproj, dest=/}" shape="note"];
  "sha256:5576d6b979ff6f0fd790935eb403165e2694fa7984e6a00d51644b5d2234fbd6" [label="copy{src=/*.csproj, dest=/}" shape="note"];
  "sha256:126bec64454c1e32ee534419097b1ce87926be72c35529a83502ac512e3f0712" [label="copy{src=/*.csproj, dest=/}" shape="note"];
  "sha256:ff07d0b83b8a891df6d78d190c1bae9d33a78b9531a3fe49e2a23b47656d42df" [label="/bin/sh -c dotnet restore ${api}" shape="box"];
  "sha256:d93160764f47e8f3dc7756573af27b945f6a7badc12b82291a083b99bff79b1f" [label="/bin/sh -c dotnet restore ${unitTests}" shape="box"];
  "sha256:a78b8dc51ae55e3dd3d908481eb4399360f7ea7b88b799b2bb853f1c2c92b4e1" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:49b2b14980799d86e4ce2a8b22677a84d0824be4b71d5a85bb074ecbb317fdbc" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:bd50b69126c3fcf46e48909c8bf4854e17bcb89107b0b432c8ca4ac6db83f042" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:a9cf0eaf905ff1f3de12ea71e0a8bce7428a1cb84a28a4be39f01c150b900436" [label="/bin/sh -c dotnet test ${unitTests}" shape="box"];
  "sha256:342c661c67ef4045ba4c07a4c30000888a5dc2d32d76ace89f1e35abf3b8daab" [label="/bin/sh -c dotnet publish ${api} --output /publish --configuration Release" shape="box"];
  "sha256:67125b987992be25a933604ccce54dd3c089e2ecfd2547ae28f4a13b80e125e9" [label="copy{src=/publish, dest=/publish/}" shape="note"];
  "sha256:2b6e60316cfcfaa00c376145cc21609a0a2d5e71e44b34c779f167f9cd429c58" [label="sha256:2b6e60316cfcfaa00c376145cc21609a0a2d5e71e44b34c779f167f9cd429c58" shape="plaintext"];
  "sha256:70fb648a87ba583acac3d299aa2f497efd7f3289e590a7123eed3e01f36b8310" -> "sha256:2cd22a6a189d8af123b121b271232bb4f82d0dcc6c1d037292c3fec8e1f8d411" [label=""];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" -> "sha256:c779222ce24b80d77a9b865c92f3673c38e92dc748a5398debd4e39d30629b1c" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:c779222ce24b80d77a9b865c92f3673c38e92dc748a5398debd4e39d30629b1c" [label=""];
  "sha256:c779222ce24b80d77a9b865c92f3673c38e92dc748a5398debd4e39d30629b1c" -> "sha256:5576d6b979ff6f0fd790935eb403165e2694fa7984e6a00d51644b5d2234fbd6" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:5576d6b979ff6f0fd790935eb403165e2694fa7984e6a00d51644b5d2234fbd6" [label=""];
  "sha256:5576d6b979ff6f0fd790935eb403165e2694fa7984e6a00d51644b5d2234fbd6" -> "sha256:126bec64454c1e32ee534419097b1ce87926be72c35529a83502ac512e3f0712" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:126bec64454c1e32ee534419097b1ce87926be72c35529a83502ac512e3f0712" [label=""];
  "sha256:126bec64454c1e32ee534419097b1ce87926be72c35529a83502ac512e3f0712" -> "sha256:ff07d0b83b8a891df6d78d190c1bae9d33a78b9531a3fe49e2a23b47656d42df" [label=""];
  "sha256:ff07d0b83b8a891df6d78d190c1bae9d33a78b9531a3fe49e2a23b47656d42df" -> "sha256:d93160764f47e8f3dc7756573af27b945f6a7badc12b82291a083b99bff79b1f" [label=""];
  "sha256:d93160764f47e8f3dc7756573af27b945f6a7badc12b82291a083b99bff79b1f" -> "sha256:a78b8dc51ae55e3dd3d908481eb4399360f7ea7b88b799b2bb853f1c2c92b4e1" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:a78b8dc51ae55e3dd3d908481eb4399360f7ea7b88b799b2bb853f1c2c92b4e1" [label=""];
  "sha256:a78b8dc51ae55e3dd3d908481eb4399360f7ea7b88b799b2bb853f1c2c92b4e1" -> "sha256:49b2b14980799d86e4ce2a8b22677a84d0824be4b71d5a85bb074ecbb317fdbc" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:49b2b14980799d86e4ce2a8b22677a84d0824be4b71d5a85bb074ecbb317fdbc" [label=""];
  "sha256:49b2b14980799d86e4ce2a8b22677a84d0824be4b71d5a85bb074ecbb317fdbc" -> "sha256:bd50b69126c3fcf46e48909c8bf4854e17bcb89107b0b432c8ca4ac6db83f042" [label=""];
  "sha256:d9c804017351f1c50d1718903fc5a8cc9c0f34633c6a15d42aed8538d324890d" -> "sha256:bd50b69126c3fcf46e48909c8bf4854e17bcb89107b0b432c8ca4ac6db83f042" [label=""];
  "sha256:bd50b69126c3fcf46e48909c8bf4854e17bcb89107b0b432c8ca4ac6db83f042" -> "sha256:a9cf0eaf905ff1f3de12ea71e0a8bce7428a1cb84a28a4be39f01c150b900436" [label=""];
  "sha256:a9cf0eaf905ff1f3de12ea71e0a8bce7428a1cb84a28a4be39f01c150b900436" -> "sha256:342c661c67ef4045ba4c07a4c30000888a5dc2d32d76ace89f1e35abf3b8daab" [label=""];
  "sha256:2cd22a6a189d8af123b121b271232bb4f82d0dcc6c1d037292c3fec8e1f8d411" -> "sha256:67125b987992be25a933604ccce54dd3c089e2ecfd2547ae28f4a13b80e125e9" [label=""];
  "sha256:342c661c67ef4045ba4c07a4c30000888a5dc2d32d76ace89f1e35abf3b8daab" -> "sha256:67125b987992be25a933604ccce54dd3c089e2ecfd2547ae28f4a13b80e125e9" [label=""];
  "sha256:67125b987992be25a933604ccce54dd3c089e2ecfd2547ae28f4a13b80e125e9" -> "sha256:2b6e60316cfcfaa00c376145cc21609a0a2d5e71e44b34c779f167f9cd429c58" [label=""];
}

