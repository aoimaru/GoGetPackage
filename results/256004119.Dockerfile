[app/sources/256004119.Dockerfile]
digraph {
  "sha256:30b13e82b3204a12299460dca57c16767f1c4a2ac1ca560c85d123ea9ea36c2a" [label="docker-image://docker.io/cypress/browsers:chrome67" shape="ellipse"];
  "sha256:e1a6bef48ca80d080776b4591e67ad7bb48cd3f65132e332d37fd0bcb479f32d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7b0b702e5a804fdeff3c794bb3a5498ca0cf239dfb0b0986649a82a02907e962" [label="local://context" shape="ellipse"];
  "sha256:6da48e10ed06f4e2bbf23842112b10e97d23141a5280878a99a63a8eb9f6ae1c" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:f478399890293ac0a8691646ddb0856cffc2cd4994329f10adbf4a2e30f627a2" [label="/bin/sh -c npm run cypress:install > /dev/null" shape="box"];
  "sha256:54c3782c46656890aac19f1f2cd0426724bf046df711bbbee5c77466f8b18ecd" [label="copy{src=/client/cypress, dest=/usr/src/app/client/cypress}" shape="note"];
  "sha256:bdd443483edbb596c5a5b4220b9432fe5dfc73cee122aa768516a178bd139520" [label="copy{src=/cypress.json, dest=/usr/src/app/cypress.json}" shape="note"];
  "sha256:60560e3fc815b350328b47d8c2cd6f729efba82cc462054543ea90513876762a" [label="/bin/sh -c ./node_modules/.bin/cypress verify" shape="box"];
  "sha256:b7b2b26710a8c665512904a7039b1c2649c5bd619da65c0e5839ee91c4002670" [label="sha256:b7b2b26710a8c665512904a7039b1c2649c5bd619da65c0e5839ee91c4002670" shape="plaintext"];
  "sha256:30b13e82b3204a12299460dca57c16767f1c4a2ac1ca560c85d123ea9ea36c2a" -> "sha256:e1a6bef48ca80d080776b4591e67ad7bb48cd3f65132e332d37fd0bcb479f32d" [label=""];
  "sha256:e1a6bef48ca80d080776b4591e67ad7bb48cd3f65132e332d37fd0bcb479f32d" -> "sha256:6da48e10ed06f4e2bbf23842112b10e97d23141a5280878a99a63a8eb9f6ae1c" [label=""];
  "sha256:7b0b702e5a804fdeff3c794bb3a5498ca0cf239dfb0b0986649a82a02907e962" -> "sha256:6da48e10ed06f4e2bbf23842112b10e97d23141a5280878a99a63a8eb9f6ae1c" [label=""];
  "sha256:6da48e10ed06f4e2bbf23842112b10e97d23141a5280878a99a63a8eb9f6ae1c" -> "sha256:f478399890293ac0a8691646ddb0856cffc2cd4994329f10adbf4a2e30f627a2" [label=""];
  "sha256:f478399890293ac0a8691646ddb0856cffc2cd4994329f10adbf4a2e30f627a2" -> "sha256:54c3782c46656890aac19f1f2cd0426724bf046df711bbbee5c77466f8b18ecd" [label=""];
  "sha256:7b0b702e5a804fdeff3c794bb3a5498ca0cf239dfb0b0986649a82a02907e962" -> "sha256:54c3782c46656890aac19f1f2cd0426724bf046df711bbbee5c77466f8b18ecd" [label=""];
  "sha256:54c3782c46656890aac19f1f2cd0426724bf046df711bbbee5c77466f8b18ecd" -> "sha256:bdd443483edbb596c5a5b4220b9432fe5dfc73cee122aa768516a178bd139520" [label=""];
  "sha256:7b0b702e5a804fdeff3c794bb3a5498ca0cf239dfb0b0986649a82a02907e962" -> "sha256:bdd443483edbb596c5a5b4220b9432fe5dfc73cee122aa768516a178bd139520" [label=""];
  "sha256:bdd443483edbb596c5a5b4220b9432fe5dfc73cee122aa768516a178bd139520" -> "sha256:60560e3fc815b350328b47d8c2cd6f729efba82cc462054543ea90513876762a" [label=""];
  "sha256:60560e3fc815b350328b47d8c2cd6f729efba82cc462054543ea90513876762a" -> "sha256:b7b2b26710a8c665512904a7039b1c2649c5bd619da65c0e5839ee91c4002670" [label=""];
}

