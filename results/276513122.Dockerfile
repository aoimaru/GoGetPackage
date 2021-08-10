[app/sources/276513122.Dockerfile]
digraph {
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" [label="docker-image://docker.io/library/java:latest" shape="ellipse"];
  "sha256:23b583b606bd0e3f194c0c5ff3f91109674b6036ae8d6a134bd2013775fb4684" [label="local://context" shape="ellipse"];
  "sha256:6d9bfbf73146696cb6bb0b988070eaaf48615bf19a274f3b88f89bc1323013e5" [label="copy{src=/todo-app-*.jar, dest=/opt/app.jar}" shape="note"];
  "sha256:0630a31db8af973232ef10f38025775f69a8efbcffccc0fc647bdc874b02b1e3" [label="sha256:0630a31db8af973232ef10f38025775f69a8efbcffccc0fc647bdc874b02b1e3" shape="plaintext"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" -> "sha256:6d9bfbf73146696cb6bb0b988070eaaf48615bf19a274f3b88f89bc1323013e5" [label=""];
  "sha256:23b583b606bd0e3f194c0c5ff3f91109674b6036ae8d6a134bd2013775fb4684" -> "sha256:6d9bfbf73146696cb6bb0b988070eaaf48615bf19a274f3b88f89bc1323013e5" [label=""];
  "sha256:6d9bfbf73146696cb6bb0b988070eaaf48615bf19a274f3b88f89bc1323013e5" -> "sha256:0630a31db8af973232ef10f38025775f69a8efbcffccc0fc647bdc874b02b1e3" [label=""];
}

