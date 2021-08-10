[app/sources/217798042.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label="mkdir{path=/app}" shape="note"];
  "sha256:ac34b9487a16b2285b407d2c2a69446910c36e9ae48be19c2a4dd57dad08c42f" [label="local://context" shape="ellipse"];
  "sha256:81bffccdc075fc87f8d66246dfd585b7b1b2cff55330da713a2b83396b8f6994" [label="copy{src=/src, dest=/app/}" shape="note"];
  "sha256:1a76f6d5f19dec38867396f636c2594b4ed39572f24431599d0af0dc6340e9ff" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:85195e491615c4571eb0d76db8cac45833a62872f2320efe1d5fe102827a542f" [label="/bin/sh -c dotnet publish -c Release -o ./out" shape="box"];
  "sha256:8e14457227a968e8b3e02282f4e965c58365b72588a9bc38c3a256491e104f5d" [label="copy{src=/app/api/VotingIrregularities.Api/out, dest=/}" shape="note"];
  "sha256:af7d185471060a6acca2615bd1429581dc962ae12a558c38a7f4c8b6a5294068" [label="sha256:af7d185471060a6acca2615bd1429581dc962ae12a558c38a7f4c8b6a5294068" shape="plaintext"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label=""];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" -> "sha256:81bffccdc075fc87f8d66246dfd585b7b1b2cff55330da713a2b83396b8f6994" [label=""];
  "sha256:ac34b9487a16b2285b407d2c2a69446910c36e9ae48be19c2a4dd57dad08c42f" -> "sha256:81bffccdc075fc87f8d66246dfd585b7b1b2cff55330da713a2b83396b8f6994" [label=""];
  "sha256:81bffccdc075fc87f8d66246dfd585b7b1b2cff55330da713a2b83396b8f6994" -> "sha256:1a76f6d5f19dec38867396f636c2594b4ed39572f24431599d0af0dc6340e9ff" [label=""];
  "sha256:1a76f6d5f19dec38867396f636c2594b4ed39572f24431599d0af0dc6340e9ff" -> "sha256:85195e491615c4571eb0d76db8cac45833a62872f2320efe1d5fe102827a542f" [label=""];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:8e14457227a968e8b3e02282f4e965c58365b72588a9bc38c3a256491e104f5d" [label=""];
  "sha256:85195e491615c4571eb0d76db8cac45833a62872f2320efe1d5fe102827a542f" -> "sha256:8e14457227a968e8b3e02282f4e965c58365b72588a9bc38c3a256491e104f5d" [label=""];
  "sha256:8e14457227a968e8b3e02282f4e965c58365b72588a9bc38c3a256491e104f5d" -> "sha256:af7d185471060a6acca2615bd1429581dc962ae12a558c38a7f4c8b6a5294068" [label=""];
}

