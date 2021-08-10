[app/sources/376521458.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:7dbbacec19cd4b23043a9b00af706c35b5ffcb5fff0455b462fbeaf491f0510a" [label="local://context" shape="ellipse"];
  "sha256:668382992bf8478e5264d741583776a206c84a5df950f070f93b8c5670e3a735" [label="copy{src=/target/monitor.jar, dest=/app.jar}" shape="note"];
  "sha256:07b1c42a5fbd7b7f49af54c58c0705fe8ad4bea3119875d58c6c5867ea5023a9" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:210badbfa2328c6aed2dca727eef1e0a5308508f1bb83af401c2d1c81a3940e1" [label="sha256:210badbfa2328c6aed2dca727eef1e0a5308508f1bb83af401c2d1c81a3940e1" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:668382992bf8478e5264d741583776a206c84a5df950f070f93b8c5670e3a735" [label=""];
  "sha256:7dbbacec19cd4b23043a9b00af706c35b5ffcb5fff0455b462fbeaf491f0510a" -> "sha256:668382992bf8478e5264d741583776a206c84a5df950f070f93b8c5670e3a735" [label=""];
  "sha256:668382992bf8478e5264d741583776a206c84a5df950f070f93b8c5670e3a735" -> "sha256:07b1c42a5fbd7b7f49af54c58c0705fe8ad4bea3119875d58c6c5867ea5023a9" [label=""];
  "sha256:07b1c42a5fbd7b7f49af54c58c0705fe8ad4bea3119875d58c6c5867ea5023a9" -> "sha256:210badbfa2328c6aed2dca727eef1e0a5308508f1bb83af401c2d1c81a3940e1" [label=""];
}

