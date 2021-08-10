[app/sources/281264031.Dockerfile]
digraph {
  "sha256:056ff14c1452a0444f32296bc202ef2e95ca663ca9530c6c50cfcedbba9af711" [label="docker-image://docker.io/projectriff/java-function-invoker:0.0.7" shape="ellipse"];
  "sha256:08486dd095a717add63ed1d6c7ff98e7c69371137f3d427a76ff753eeec29d70" [label="local://context" shape="ellipse"];
  "sha256:b3e1318e484f1889b51976ba0bd5a203bcae7c048fc2ea48c8e576ff9a05260d" [label="copy{src=/target/emailer-0.0.1-SNAPSHOT.jar, dest=/functions/emailer-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:fecf22a1309b8d97b8590383fd9f03f37d765bc001c57e5c8deb61c64a26322d" [label="sha256:fecf22a1309b8d97b8590383fd9f03f37d765bc001c57e5c8deb61c64a26322d" shape="plaintext"];
  "sha256:056ff14c1452a0444f32296bc202ef2e95ca663ca9530c6c50cfcedbba9af711" -> "sha256:b3e1318e484f1889b51976ba0bd5a203bcae7c048fc2ea48c8e576ff9a05260d" [label=""];
  "sha256:08486dd095a717add63ed1d6c7ff98e7c69371137f3d427a76ff753eeec29d70" -> "sha256:b3e1318e484f1889b51976ba0bd5a203bcae7c048fc2ea48c8e576ff9a05260d" [label=""];
  "sha256:b3e1318e484f1889b51976ba0bd5a203bcae7c048fc2ea48c8e576ff9a05260d" -> "sha256:fecf22a1309b8d97b8590383fd9f03f37d765bc001c57e5c8deb61c64a26322d" [label=""];
}

