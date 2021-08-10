[app/sources/203947630.Dockerfile]
digraph {
  "sha256:3919d71dd6c8716511f921fe583d8c14bca7a7e6ff25918dd1376dba9930dfca" [label="docker-image://docker.io/anapsix/alpine-java:8" shape="ellipse"];
  "sha256:17725ae5adf5d66ef8e5f927d4b12a1a70b7339576f8781334c46152436f563c" [label="local://context" shape="ellipse"];
  "sha256:4e4a8be9cf13ff746a59402f3db7ce509e4fe126a7b538de3ae377b5c121b870" [label="copy{src=/edge-service-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:78e0ed5bf0fd03fa706d2fb00b0e7c276e06f51a194dc510da1a8e188c2b1464" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:afb13d8739edef4e42897611108280edc44a811558f934661e3eb14cd3ae9eae" [label="sha256:afb13d8739edef4e42897611108280edc44a811558f934661e3eb14cd3ae9eae" shape="plaintext"];
  "sha256:3919d71dd6c8716511f921fe583d8c14bca7a7e6ff25918dd1376dba9930dfca" -> "sha256:4e4a8be9cf13ff746a59402f3db7ce509e4fe126a7b538de3ae377b5c121b870" [label=""];
  "sha256:17725ae5adf5d66ef8e5f927d4b12a1a70b7339576f8781334c46152436f563c" -> "sha256:4e4a8be9cf13ff746a59402f3db7ce509e4fe126a7b538de3ae377b5c121b870" [label=""];
  "sha256:4e4a8be9cf13ff746a59402f3db7ce509e4fe126a7b538de3ae377b5c121b870" -> "sha256:78e0ed5bf0fd03fa706d2fb00b0e7c276e06f51a194dc510da1a8e188c2b1464" [label=""];
  "sha256:78e0ed5bf0fd03fa706d2fb00b0e7c276e06f51a194dc510da1a8e188c2b1464" -> "sha256:afb13d8739edef4e42897611108280edc44a811558f934661e3eb14cd3ae9eae" [label=""];
}

