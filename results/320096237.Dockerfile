[app/sources/320096237.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:8d938e5f543798527eaa9707ce777a206e113852e260798c1cf0c79e4e1f749a" [label="/bin/sh -c apk add --no-cache bash &&     apk add --no-cache -t build-dependencies wget &&     cd /usr/lib &&     wget https://github.com/JetBrains/kotlin/releases/download/v1.2.50-eap-62/kotlin-compiler-1.2.50-eap-62.zip &&     unzip kotlin-compiler-*.zip &&     rm kotlin-compiler-*.zip &&     rm kotlinc/bin/*.bat &&     apk del --no-cache build-dependencies" shape="box"];
  "sha256:184676198864b9071fa94362564d2cbce4f6790c44d4bbcd81332b88bedb7a38" [label="sha256:184676198864b9071fa94362564d2cbce4f6790c44d4bbcd81332b88bedb7a38" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:8d938e5f543798527eaa9707ce777a206e113852e260798c1cf0c79e4e1f749a" [label=""];
  "sha256:8d938e5f543798527eaa9707ce777a206e113852e260798c1cf0c79e4e1f749a" -> "sha256:184676198864b9071fa94362564d2cbce4f6790c44d4bbcd81332b88bedb7a38" [label=""];
}

