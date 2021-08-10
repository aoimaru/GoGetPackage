[app/sources/291058267.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:0ead2868dcd08790edf0620215ccc7ad0acba189df1b08bee9b501d90b4202b3" [label="local://context" shape="ellipse"];
  "sha256:72e0fa43a486cd8f597d2ab3719ffb4e7a95ac4574e069b69b5a028cfb298469" [label="copy{src=/startup.sh, dest=/usr/local/skywalking-rabbitmq-scenario/}" shape="note"];
  "sha256:153b74d5f3d5b095050ee405e8faf2c45fb5304c8407786c05a214fb7857110d" [label="copy{src=/rabbitmq-scenario.jar, dest=/usr/local/skywalking-rabbitmq-scenario/}" shape="note"];
  "sha256:5dfdaa093c3cf50b93182ecba46db20025652a6a18ada1161b8f659690f9d3b1" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:b4afdc31d919df58f8539c55b086c54e7bb7f4e755c675a417de8ff6c9db8b12" [label="/bin/sh -c chmod +x /usr/local/skywalking-rabbitmq-scenario/startup.sh && chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:4b120b2301800b5a27dc63c857d7a60ec154ac37c037218ffef766f3b5bf07ef" [label="sha256:4b120b2301800b5a27dc63c857d7a60ec154ac37c037218ffef766f3b5bf07ef" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:72e0fa43a486cd8f597d2ab3719ffb4e7a95ac4574e069b69b5a028cfb298469" [label=""];
  "sha256:0ead2868dcd08790edf0620215ccc7ad0acba189df1b08bee9b501d90b4202b3" -> "sha256:72e0fa43a486cd8f597d2ab3719ffb4e7a95ac4574e069b69b5a028cfb298469" [label=""];
  "sha256:72e0fa43a486cd8f597d2ab3719ffb4e7a95ac4574e069b69b5a028cfb298469" -> "sha256:153b74d5f3d5b095050ee405e8faf2c45fb5304c8407786c05a214fb7857110d" [label=""];
  "sha256:0ead2868dcd08790edf0620215ccc7ad0acba189df1b08bee9b501d90b4202b3" -> "sha256:153b74d5f3d5b095050ee405e8faf2c45fb5304c8407786c05a214fb7857110d" [label=""];
  "sha256:153b74d5f3d5b095050ee405e8faf2c45fb5304c8407786c05a214fb7857110d" -> "sha256:5dfdaa093c3cf50b93182ecba46db20025652a6a18ada1161b8f659690f9d3b1" [label=""];
  "sha256:0ead2868dcd08790edf0620215ccc7ad0acba189df1b08bee9b501d90b4202b3" -> "sha256:5dfdaa093c3cf50b93182ecba46db20025652a6a18ada1161b8f659690f9d3b1" [label=""];
  "sha256:5dfdaa093c3cf50b93182ecba46db20025652a6a18ada1161b8f659690f9d3b1" -> "sha256:b4afdc31d919df58f8539c55b086c54e7bb7f4e755c675a417de8ff6c9db8b12" [label=""];
  "sha256:b4afdc31d919df58f8539c55b086c54e7bb7f4e755c675a417de8ff6c9db8b12" -> "sha256:4b120b2301800b5a27dc63c857d7a60ec154ac37c037218ffef766f3b5bf07ef" [label=""];
}

