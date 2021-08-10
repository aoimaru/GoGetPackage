[app/sources/246436231.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:539453b41daf667ac43ada28cf04cc4cd785c4ccba4e5f0481acb07bce025ea3" [label="/bin/sh -c apt-get update &&\tapt-get install -y \tgit \twget &&\trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:05332fac0c40a92f14d7b8fc3cf2e7d940eeb20fde9f6e1e8c648be7830cf06b" [label="/bin/sh -c git clone https://github.com/ChrisTruncer/EyeWitness.git" shape="box"];
  "sha256:ae1aae7a1b3120d2c0efde4678e3add62021b17116c2719ab8fe003773f83b2b" [label="mkdir{path=/EyeWitness}" shape="note"];
  "sha256:810387be20eea70732953713bae8f5a043a8b3f448ea410d03d35767f485c95d" [label="/bin/sh -c cd setup && ./setup.sh" shape="box"];
  "sha256:2b63d9c872229ff414d01bda41c41f0e1417a3e60a9f3a71af15ec59a4f03817" [label="sha256:2b63d9c872229ff414d01bda41c41f0e1417a3e60a9f3a71af15ec59a4f03817" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:539453b41daf667ac43ada28cf04cc4cd785c4ccba4e5f0481acb07bce025ea3" [label=""];
  "sha256:539453b41daf667ac43ada28cf04cc4cd785c4ccba4e5f0481acb07bce025ea3" -> "sha256:05332fac0c40a92f14d7b8fc3cf2e7d940eeb20fde9f6e1e8c648be7830cf06b" [label=""];
  "sha256:05332fac0c40a92f14d7b8fc3cf2e7d940eeb20fde9f6e1e8c648be7830cf06b" -> "sha256:ae1aae7a1b3120d2c0efde4678e3add62021b17116c2719ab8fe003773f83b2b" [label=""];
  "sha256:ae1aae7a1b3120d2c0efde4678e3add62021b17116c2719ab8fe003773f83b2b" -> "sha256:810387be20eea70732953713bae8f5a043a8b3f448ea410d03d35767f485c95d" [label=""];
  "sha256:810387be20eea70732953713bae8f5a043a8b3f448ea410d03d35767f485c95d" -> "sha256:2b63d9c872229ff414d01bda41c41f0e1417a3e60a9f3a71af15ec59a4f03817" [label=""];
}

