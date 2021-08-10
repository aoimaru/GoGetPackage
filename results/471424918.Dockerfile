[app/sources/471424918.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:458f22e7238026fce8b545b370a1be3fa2fc7b36468aff7b237f60152d5f5396" [label="local://context" shape="ellipse"];
  "sha256:9ee14cf8df7397a4a957ca507e6da64c6f74472539b4e4f3d19a8cf8e4f7f273" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:3ce42a489c9a2a0d14a944007e3b3fb99bf7f35146df8d3e83fdbc0931aeaf3c" [label="mkdir{path=/src}" shape="note"];
  "sha256:959e19b93163d9b0dc0fae155094ea100d0b6902cd4c0db5016880bfd2c2a267" [label="/bin/sh -c ./gradlew build" shape="box"];
  "sha256:a7e76cff1af4be999e9fdd61cdba5ef87e400ddff54e9d70350642d904830246" [label="copy{src=/src/build/libs/hello-spring-boot-*.jar, dest=/usr/run/hello-app.jar}" shape="note"];
  "sha256:9f0fd5dd3c44216d63c58d71815da1e2fc9e4048f72f3eb1f914b3c1d3a6a024" [label="mkdir{path=/usr/run}" shape="note"];
  "sha256:c9a6208d7dd87626a1e7c5aae5fabb81be75374dacfbe3cfebc09e4897aa7a07" [label="sha256:c9a6208d7dd87626a1e7c5aae5fabb81be75374dacfbe3cfebc09e4897aa7a07" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:9ee14cf8df7397a4a957ca507e6da64c6f74472539b4e4f3d19a8cf8e4f7f273" [label=""];
  "sha256:458f22e7238026fce8b545b370a1be3fa2fc7b36468aff7b237f60152d5f5396" -> "sha256:9ee14cf8df7397a4a957ca507e6da64c6f74472539b4e4f3d19a8cf8e4f7f273" [label=""];
  "sha256:9ee14cf8df7397a4a957ca507e6da64c6f74472539b4e4f3d19a8cf8e4f7f273" -> "sha256:3ce42a489c9a2a0d14a944007e3b3fb99bf7f35146df8d3e83fdbc0931aeaf3c" [label=""];
  "sha256:3ce42a489c9a2a0d14a944007e3b3fb99bf7f35146df8d3e83fdbc0931aeaf3c" -> "sha256:959e19b93163d9b0dc0fae155094ea100d0b6902cd4c0db5016880bfd2c2a267" [label=""];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:a7e76cff1af4be999e9fdd61cdba5ef87e400ddff54e9d70350642d904830246" [label=""];
  "sha256:959e19b93163d9b0dc0fae155094ea100d0b6902cd4c0db5016880bfd2c2a267" -> "sha256:a7e76cff1af4be999e9fdd61cdba5ef87e400ddff54e9d70350642d904830246" [label=""];
  "sha256:a7e76cff1af4be999e9fdd61cdba5ef87e400ddff54e9d70350642d904830246" -> "sha256:9f0fd5dd3c44216d63c58d71815da1e2fc9e4048f72f3eb1f914b3c1d3a6a024" [label=""];
  "sha256:9f0fd5dd3c44216d63c58d71815da1e2fc9e4048f72f3eb1f914b3c1d3a6a024" -> "sha256:c9a6208d7dd87626a1e7c5aae5fabb81be75374dacfbe3cfebc09e4897aa7a07" [label=""];
}

