[app/sources/355001134.Dockerfile]
digraph {
  "sha256:e0799b8a9fc172c93af730920ffa845cf717a5f4e42fa9106d1fd95538a56dd5" [label="docker-image://docker.io/library/python:3.3" shape="ellipse"];
  "sha256:7a2d53a98aed286d08140967ac9d3353fbb67f9aec87e70c068897c9765b5281" [label="/bin/sh -c mkdir -p /opt/app/" shape="box"];
  "sha256:ee49b4c9a889f025bec21d25cc6054f9a3a992a08b227a743d317b6ddac0a9f3" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:c9aeb91b873cf9447f8a7224997f88248816610050dc04d74e9db7aeaaa44c45" [label="local://context" shape="ellipse"];
  "sha256:262be6eb938342e821bb34b6e8862cb5fe80aad483b21b7d232ccfcd670bf895" [label="copy{src=/requirements-dev.txt, dest=/opt/app/requirements-dev.txt}" shape="note"];
  "sha256:5b2e75e881620919181ed996430bfcc3fa7e9fadf8953dcee1661a103bc25cfe" [label="/bin/sh -c pip install -r $APP/requirements-dev.txt" shape="box"];
  "sha256:ed9b4b650f769068331cd3b55499062e4feabfd0594ddb370ff8410127e8b45e" [label="/bin/sh -c pip install httpie==$HTTPie_VERSION" shape="box"];
  "sha256:c99ba796abda2444c3732f347424191b2d6b84324414bef77fc26e271967da83" [label="sha256:c99ba796abda2444c3732f347424191b2d6b84324414bef77fc26e271967da83" shape="plaintext"];
  "sha256:e0799b8a9fc172c93af730920ffa845cf717a5f4e42fa9106d1fd95538a56dd5" -> "sha256:7a2d53a98aed286d08140967ac9d3353fbb67f9aec87e70c068897c9765b5281" [label=""];
  "sha256:7a2d53a98aed286d08140967ac9d3353fbb67f9aec87e70c068897c9765b5281" -> "sha256:ee49b4c9a889f025bec21d25cc6054f9a3a992a08b227a743d317b6ddac0a9f3" [label=""];
  "sha256:ee49b4c9a889f025bec21d25cc6054f9a3a992a08b227a743d317b6ddac0a9f3" -> "sha256:262be6eb938342e821bb34b6e8862cb5fe80aad483b21b7d232ccfcd670bf895" [label=""];
  "sha256:c9aeb91b873cf9447f8a7224997f88248816610050dc04d74e9db7aeaaa44c45" -> "sha256:262be6eb938342e821bb34b6e8862cb5fe80aad483b21b7d232ccfcd670bf895" [label=""];
  "sha256:262be6eb938342e821bb34b6e8862cb5fe80aad483b21b7d232ccfcd670bf895" -> "sha256:5b2e75e881620919181ed996430bfcc3fa7e9fadf8953dcee1661a103bc25cfe" [label=""];
  "sha256:5b2e75e881620919181ed996430bfcc3fa7e9fadf8953dcee1661a103bc25cfe" -> "sha256:ed9b4b650f769068331cd3b55499062e4feabfd0594ddb370ff8410127e8b45e" [label=""];
  "sha256:ed9b4b650f769068331cd3b55499062e4feabfd0594ddb370ff8410127e8b45e" -> "sha256:c99ba796abda2444c3732f347424191b2d6b84324414bef77fc26e271967da83" [label=""];
}

