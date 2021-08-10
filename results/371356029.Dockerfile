[app/sources/371356029.Dockerfile]
digraph {
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" [label="docker-image://docker.io/library/java:8-alpine" shape="ellipse"];
  "sha256:a179f5156db0b287cd571139b32ada600b6e3dbe89b1d4a4de2aae52126b04fe" [label="local://context" shape="ellipse"];
  "sha256:a176818793f40d51dfff8cbadefa228787a8b782aa8c35c19d2423c04296dfd3" [label="copy{src=/target/{{name}}-0.0.1-SNAPSHOT-standalone.jar, dest=/{{name}}/app.jar}" shape="note"];
  "sha256:b060e8ce88385d0780f273dbbdc28938b550f5ac909066f78fd1a918da37eba0" [label="sha256:b060e8ce88385d0780f273dbbdc28938b550f5ac909066f78fd1a918da37eba0" shape="plaintext"];
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" -> "sha256:a176818793f40d51dfff8cbadefa228787a8b782aa8c35c19d2423c04296dfd3" [label=""];
  "sha256:a179f5156db0b287cd571139b32ada600b6e3dbe89b1d4a4de2aae52126b04fe" -> "sha256:a176818793f40d51dfff8cbadefa228787a8b782aa8c35c19d2423c04296dfd3" [label=""];
  "sha256:a176818793f40d51dfff8cbadefa228787a8b782aa8c35c19d2423c04296dfd3" -> "sha256:b060e8ce88385d0780f273dbbdc28938b550f5ac909066f78fd1a918da37eba0" [label=""];
}

