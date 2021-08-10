[app/sources/342485837.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:be5e1976d291e8f3c382aee63373480c75066120567186bdd29bf8cbde6e5b63" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:77691b44d7800c763d2f3d1b7c482a45ad34d5f94fc7b733be6e00ed621a1d83" [label="local://context" shape="ellipse"];
  "sha256:73821287089997f0bad25b193a8f5d4262ad4d73b874908e35cef7201df34aab" [label="copy{src=/target/eureka-server-0.0.1-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:9017cb5d90ab404e9e57b3d1c4cd1b1d6739c0441d1d50df32c635c874509306" [label="sha256:9017cb5d90ab404e9e57b3d1c4cd1b1d6739c0441d1d50df32c635c874509306" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:be5e1976d291e8f3c382aee63373480c75066120567186bdd29bf8cbde6e5b63" [label=""];
  "sha256:be5e1976d291e8f3c382aee63373480c75066120567186bdd29bf8cbde6e5b63" -> "sha256:73821287089997f0bad25b193a8f5d4262ad4d73b874908e35cef7201df34aab" [label=""];
  "sha256:77691b44d7800c763d2f3d1b7c482a45ad34d5f94fc7b733be6e00ed621a1d83" -> "sha256:73821287089997f0bad25b193a8f5d4262ad4d73b874908e35cef7201df34aab" [label=""];
  "sha256:73821287089997f0bad25b193a8f5d4262ad4d73b874908e35cef7201df34aab" -> "sha256:9017cb5d90ab404e9e57b3d1c4cd1b1d6739c0441d1d50df32c635c874509306" [label=""];
}

