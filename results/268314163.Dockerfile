[app/sources/268314163.Dockerfile]
digraph {
  "sha256:c64a9aeee0f89eaef7a4e4965fbc897769e985c885bdb5727ae3469c4b5da59c" [label="local://context" shape="ellipse"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:cd19d84047f54746ee84be40073ec935a3d113a988b8968c5d28169e6b20e282" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:e2e2abf084eba6c7fcd6881a4638b6a2dfa662fbeae1f8e323911eab132ff01c" [label="sha256:e2e2abf084eba6c7fcd6881a4638b6a2dfa662fbeae1f8e323911eab132ff01c" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:cd19d84047f54746ee84be40073ec935a3d113a988b8968c5d28169e6b20e282" [label=""];
  "sha256:c64a9aeee0f89eaef7a4e4965fbc897769e985c885bdb5727ae3469c4b5da59c" -> "sha256:cd19d84047f54746ee84be40073ec935a3d113a988b8968c5d28169e6b20e282" [label=""];
  "sha256:cd19d84047f54746ee84be40073ec935a3d113a988b8968c5d28169e6b20e282" -> "sha256:e2e2abf084eba6c7fcd6881a4638b6a2dfa662fbeae1f8e323911eab132ff01c" [label=""];
}

