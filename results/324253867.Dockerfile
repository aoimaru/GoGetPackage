[app/sources/324253867.Dockerfile]
digraph {
  "sha256:32b7940a8c0d57ccd8c1a27e45ef9278659cd71f72e4f3761ee5e671bdd6ac32" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.1@sha256:cd098ef956b9d6ff66d7c67f45e51c14b9e6789d586645492b1e9f0395442f4f" shape="ellipse"];
  "sha256:9ec2a682ce1ef7ee075c9f2f568d34dccd28450865942a823480cb178816da21" [label="mkdir{path=/app}" shape="note"];
  "sha256:ce82316e623bfbd6f0c0656809ab1ef4957c29aed973e75d44563e7f33273ecd" [label="mkdir{path=/app}" shape="note"];
  "sha256:f3eeae5c33843a4943d000d29508f6a32ef642190344c94de57b2a04fb273cda" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.1@sha256:a485e2b51b3a6e79935c95b8ea1a341f8f028333984d4bfd8e83170b38c5f304" shape="ellipse"];
  "sha256:053c4f05573016c3c4ee6e81125255eaff0d252b9659d61257f1c7f5e0b6c5a6" [label="mkdir{path=/src}" shape="note"];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" [label="local://context" shape="ellipse"];
  "sha256:2de3f6887d61619a88de98503c4e11444ae9037141e977e58021e9b0522ac7c9" [label="copy{src=/Ametista.Api/Ametista.Api.csproj, dest=/src/Ametista.Api/}" shape="note"];
  "sha256:be9bbe751c00b1e13f093bd1ac8f42f56204fe0fbbe5b3e67b873d01e91cd060" [label="copy{src=/Ametista.Command/Ametista.Command.csproj, dest=/src/Ametista.Command/}" shape="note"];
  "sha256:95e0a59b971e04a1ae6eef4ffe31124ce3bf0b16a9d20fe57096d36a4a3c816f" [label="copy{src=/Ametista.Core/Ametista.Core.csproj, dest=/src/Ametista.Core/}" shape="note"];
  "sha256:bad74c5522c2a4ab031921115dd3b1093f7c9debe5008cc8581c389a0f25a8e3" [label="copy{src=/Ametista.Infrastructure/Ametista.Infrastructure.csproj, dest=/src/Ametista.Infrastructure/}" shape="note"];
  "sha256:6c9d1f38a74ed3cc07a676a663e62ac71dbc07b326984441b557cb671f4486d7" [label="copy{src=/Ametista.Query/Ametista.Query.csproj, dest=/src/Ametista.Query/}" shape="note"];
  "sha256:ba52067198e2519a332cc01e13bbf769103633eaeae28272ff930dfd7976e0e5" [label="/bin/sh -c dotnet restore \"Ametista.Api/Ametista.Api.csproj\"" shape="box"];
  "sha256:0ceffce987449cd9cac767fe4f08b11aa4685848fe71cf19fcd92c9af032ade0" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:b12de7c281a40ecfd7da85073115dc27ecabea4ed5ecb142c13cd4f26dd5725b" [label="mkdir{path=/src/Ametista.Api}" shape="note"];
  "sha256:a1eadf3bc955de9d94d034d77a99ba679f779fd53942764c1694f1b267b1757d" [label="/bin/sh -c dotnet build \"Ametista.Api.csproj\" -c Release -o /app" shape="box"];
  "sha256:c15d4b7f3a45a23e2228c80f5f7f34317344f5d9e917566283687b26b1f39a54" [label="/bin/sh -c dotnet publish \"Ametista.Api.csproj\" -c Release -o /app" shape="box"];
  "sha256:0bec8d96a4b0a02edcfc56bb2214a4e796b4c5e5f0fcfd05b5aa6b63beae524a" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:e054af060372ac6a66a2c81bd7908bd9d137dab0a3f1b4e915f2acf7a5a87d93" [label="sha256:e054af060372ac6a66a2c81bd7908bd9d137dab0a3f1b4e915f2acf7a5a87d93" shape="plaintext"];
  "sha256:32b7940a8c0d57ccd8c1a27e45ef9278659cd71f72e4f3761ee5e671bdd6ac32" -> "sha256:9ec2a682ce1ef7ee075c9f2f568d34dccd28450865942a823480cb178816da21" [label=""];
  "sha256:9ec2a682ce1ef7ee075c9f2f568d34dccd28450865942a823480cb178816da21" -> "sha256:ce82316e623bfbd6f0c0656809ab1ef4957c29aed973e75d44563e7f33273ecd" [label=""];
  "sha256:f3eeae5c33843a4943d000d29508f6a32ef642190344c94de57b2a04fb273cda" -> "sha256:053c4f05573016c3c4ee6e81125255eaff0d252b9659d61257f1c7f5e0b6c5a6" [label=""];
  "sha256:053c4f05573016c3c4ee6e81125255eaff0d252b9659d61257f1c7f5e0b6c5a6" -> "sha256:2de3f6887d61619a88de98503c4e11444ae9037141e977e58021e9b0522ac7c9" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:2de3f6887d61619a88de98503c4e11444ae9037141e977e58021e9b0522ac7c9" [label=""];
  "sha256:2de3f6887d61619a88de98503c4e11444ae9037141e977e58021e9b0522ac7c9" -> "sha256:be9bbe751c00b1e13f093bd1ac8f42f56204fe0fbbe5b3e67b873d01e91cd060" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:be9bbe751c00b1e13f093bd1ac8f42f56204fe0fbbe5b3e67b873d01e91cd060" [label=""];
  "sha256:be9bbe751c00b1e13f093bd1ac8f42f56204fe0fbbe5b3e67b873d01e91cd060" -> "sha256:95e0a59b971e04a1ae6eef4ffe31124ce3bf0b16a9d20fe57096d36a4a3c816f" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:95e0a59b971e04a1ae6eef4ffe31124ce3bf0b16a9d20fe57096d36a4a3c816f" [label=""];
  "sha256:95e0a59b971e04a1ae6eef4ffe31124ce3bf0b16a9d20fe57096d36a4a3c816f" -> "sha256:bad74c5522c2a4ab031921115dd3b1093f7c9debe5008cc8581c389a0f25a8e3" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:bad74c5522c2a4ab031921115dd3b1093f7c9debe5008cc8581c389a0f25a8e3" [label=""];
  "sha256:bad74c5522c2a4ab031921115dd3b1093f7c9debe5008cc8581c389a0f25a8e3" -> "sha256:6c9d1f38a74ed3cc07a676a663e62ac71dbc07b326984441b557cb671f4486d7" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:6c9d1f38a74ed3cc07a676a663e62ac71dbc07b326984441b557cb671f4486d7" [label=""];
  "sha256:6c9d1f38a74ed3cc07a676a663e62ac71dbc07b326984441b557cb671f4486d7" -> "sha256:ba52067198e2519a332cc01e13bbf769103633eaeae28272ff930dfd7976e0e5" [label=""];
  "sha256:ba52067198e2519a332cc01e13bbf769103633eaeae28272ff930dfd7976e0e5" -> "sha256:0ceffce987449cd9cac767fe4f08b11aa4685848fe71cf19fcd92c9af032ade0" [label=""];
  "sha256:f530047e7d7dd48011a4ffbf6b250e2c6ff6fbb9fb80dfd3b306edc172688c82" -> "sha256:0ceffce987449cd9cac767fe4f08b11aa4685848fe71cf19fcd92c9af032ade0" [label=""];
  "sha256:0ceffce987449cd9cac767fe4f08b11aa4685848fe71cf19fcd92c9af032ade0" -> "sha256:b12de7c281a40ecfd7da85073115dc27ecabea4ed5ecb142c13cd4f26dd5725b" [label=""];
  "sha256:b12de7c281a40ecfd7da85073115dc27ecabea4ed5ecb142c13cd4f26dd5725b" -> "sha256:a1eadf3bc955de9d94d034d77a99ba679f779fd53942764c1694f1b267b1757d" [label=""];
  "sha256:a1eadf3bc955de9d94d034d77a99ba679f779fd53942764c1694f1b267b1757d" -> "sha256:c15d4b7f3a45a23e2228c80f5f7f34317344f5d9e917566283687b26b1f39a54" [label=""];
  "sha256:ce82316e623bfbd6f0c0656809ab1ef4957c29aed973e75d44563e7f33273ecd" -> "sha256:0bec8d96a4b0a02edcfc56bb2214a4e796b4c5e5f0fcfd05b5aa6b63beae524a" [label=""];
  "sha256:c15d4b7f3a45a23e2228c80f5f7f34317344f5d9e917566283687b26b1f39a54" -> "sha256:0bec8d96a4b0a02edcfc56bb2214a4e796b4c5e5f0fcfd05b5aa6b63beae524a" [label=""];
  "sha256:0bec8d96a4b0a02edcfc56bb2214a4e796b4c5e5f0fcfd05b5aa6b63beae524a" -> "sha256:e054af060372ac6a66a2c81bd7908bd9d137dab0a3f1b4e915f2acf7a5a87d93" [label=""];
}

