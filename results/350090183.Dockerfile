[app/sources/350090183.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:810098ae394e95d0f4f9f84a5f5cb6edcb1746a9aae04491c54bc0cce71f0a8e" [label="local://context" shape="ellipse"];
  "sha256:e76f854d7f8d384b958fb03f6b2b089a70b67206fbbaf4eb1b95adbff26caf93" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:12ef57553f798136893a6b5a929c3a891e59c235637c6f92833a69e6caed19f0" [label="sha256:12ef57553f798136893a6b5a929c3a891e59c235637c6f92833a69e6caed19f0" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:e76f854d7f8d384b958fb03f6b2b089a70b67206fbbaf4eb1b95adbff26caf93" [label=""];
  "sha256:810098ae394e95d0f4f9f84a5f5cb6edcb1746a9aae04491c54bc0cce71f0a8e" -> "sha256:e76f854d7f8d384b958fb03f6b2b089a70b67206fbbaf4eb1b95adbff26caf93" [label=""];
  "sha256:e76f854d7f8d384b958fb03f6b2b089a70b67206fbbaf4eb1b95adbff26caf93" -> "sha256:12ef57553f798136893a6b5a929c3a891e59c235637c6f92833a69e6caed19f0" [label=""];
}

