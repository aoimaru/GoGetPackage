[app/sources/290878979.Dockerfile]
digraph {
  "sha256:9fac243223e0c459589ca85b7bd20bdd48626c483474787a2ae7f439ab1fe1aa" [label="local://context" shape="ellipse"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:28795eacc5c952171e11a541952b79bc0911612ba9e41bc2ea08b955f5ff1def" [label="/bin/sh -c mkdir -p /usr/src/app/server" shape="box"];
  "sha256:8e0321903e8acfd6b9ba1e7b338203e4b6fa5c27f5f0d5e1c5ec4c2618c410aa" [label="mkdir{path=/usr/src/app/server}" shape="note"];
  "sha256:419dce658c711f4276eb3935315e2eb92b041c152465e18d728e16849e810501" [label="copy{src=/server, dest=/usr/src/app/server/}" shape="note"];
  "sha256:1ebd11dea117036b27ad6b327a80f8fb0db7d6f5181064ff0930c799afe0ecf4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:879a14b0960913d88fd2a07758c2894fddb1707582a0a23799ad217fc3f30eb9" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:0596ffc433130547cfbed22738ceab945927f2e459c7c7769bae2596d310cc06" [label="/bin/sh -c yarn" shape="box"];
  "sha256:83ed7fd0b0af3533fced10aece429f9b066fa13966f95b2fba0c8eaf512347a1" [label="sha256:83ed7fd0b0af3533fced10aece429f9b066fa13966f95b2fba0c8eaf512347a1" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:28795eacc5c952171e11a541952b79bc0911612ba9e41bc2ea08b955f5ff1def" [label=""];
  "sha256:28795eacc5c952171e11a541952b79bc0911612ba9e41bc2ea08b955f5ff1def" -> "sha256:8e0321903e8acfd6b9ba1e7b338203e4b6fa5c27f5f0d5e1c5ec4c2618c410aa" [label=""];
  "sha256:8e0321903e8acfd6b9ba1e7b338203e4b6fa5c27f5f0d5e1c5ec4c2618c410aa" -> "sha256:419dce658c711f4276eb3935315e2eb92b041c152465e18d728e16849e810501" [label=""];
  "sha256:9fac243223e0c459589ca85b7bd20bdd48626c483474787a2ae7f439ab1fe1aa" -> "sha256:419dce658c711f4276eb3935315e2eb92b041c152465e18d728e16849e810501" [label=""];
  "sha256:419dce658c711f4276eb3935315e2eb92b041c152465e18d728e16849e810501" -> "sha256:1ebd11dea117036b27ad6b327a80f8fb0db7d6f5181064ff0930c799afe0ecf4" [label=""];
  "sha256:1ebd11dea117036b27ad6b327a80f8fb0db7d6f5181064ff0930c799afe0ecf4" -> "sha256:879a14b0960913d88fd2a07758c2894fddb1707582a0a23799ad217fc3f30eb9" [label=""];
  "sha256:9fac243223e0c459589ca85b7bd20bdd48626c483474787a2ae7f439ab1fe1aa" -> "sha256:879a14b0960913d88fd2a07758c2894fddb1707582a0a23799ad217fc3f30eb9" [label=""];
  "sha256:879a14b0960913d88fd2a07758c2894fddb1707582a0a23799ad217fc3f30eb9" -> "sha256:0596ffc433130547cfbed22738ceab945927f2e459c7c7769bae2596d310cc06" [label=""];
  "sha256:0596ffc433130547cfbed22738ceab945927f2e459c7c7769bae2596d310cc06" -> "sha256:83ed7fd0b0af3533fced10aece429f9b066fa13966f95b2fba0c8eaf512347a1" [label=""];
}

