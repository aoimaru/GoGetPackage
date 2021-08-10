[app/sources/269910517.Dockerfile]
digraph {
  "sha256:fd00ed71cdc48b085b77a9f348ef6d2ccf1b0c5a36f7bac329b050b6d3c0f40d" [label="docker-image://docker.io/library/java:8-jdk-alpine@sha256:d49bf8c44670834d3dade17f8b84d709e7db47f1887f671a0e098bafa9bae49f" shape="ellipse"];
  "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" [label="/bin/sh -c adduser -Dh /home/gordon gordon" shape="box"];
  "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" [label="mkdir{path=/app}" shape="note"];
  "sha256:4dcd2d962f13dc82ebb382b5daf51f670b0647899d4572b1db5f6a5fe174bda4" [label="docker-image://docker.io/library/maven:latest@sha256:5f5855a5aca2d5a7131f4379d71e6fc294cc9dfd94aa23b918ca5c47b14bbacd" shape="ellipse"];
  "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" [label="mkdir{path=/usr/src/ddev}" shape="note"];
  "sha256:b868fa01e893ff5742ed4242d0c867b23653763bb52d7f4350501f54b2449c52" [label="local://context" shape="ellipse"];
  "sha256:a2953db8ce8e2197d245eb593fc9c354de97c43eddf6daae4558c9ebc0dc3864" [label="copy{src=/pom.xml, dest=/usr/src/ddev/}" shape="note"];
  "sha256:edcde5c6f3972c5e90d14ab539d0204559e691af41064fb9cd7b39df237de543" [label="/bin/sh -c mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve" shape="box"];
  "sha256:7ad3b01cc940a7de65e29026c6b93f38ce7af619badc37844b10cdfc866a21c2" [label="copy{src=/, dest=/usr/src/ddev/}" shape="note"];
  "sha256:401b4ecd915a7a29ba68c2fc2d75f4dddacaadaca008f0423e6ebe0eb7467f81" [label="/bin/sh -c mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTests" shape="box"];
  "sha256:03b08048cb754f97cca756c558d390b5c6380725caa8c33d0526b73fc367b50a" [label="copy{src=/usr/src/ddev/target/ddev-0.0.1-SNAPSHOT.jar, dest=/app/}" shape="note"];
  "sha256:4e9da3d9657042d77ccfe35903cb7a68201a5bb64900526f931dda40b8bfcfb2" [label="sha256:4e9da3d9657042d77ccfe35903cb7a68201a5bb64900526f931dda40b8bfcfb2" shape="plaintext"];
  "sha256:fd00ed71cdc48b085b77a9f348ef6d2ccf1b0c5a36f7bac329b050b6d3c0f40d" -> "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" [label=""];
  "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" -> "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" [label=""];
  "sha256:4dcd2d962f13dc82ebb382b5daf51f670b0647899d4572b1db5f6a5fe174bda4" -> "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" [label=""];
  "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" -> "sha256:a2953db8ce8e2197d245eb593fc9c354de97c43eddf6daae4558c9ebc0dc3864" [label=""];
  "sha256:b868fa01e893ff5742ed4242d0c867b23653763bb52d7f4350501f54b2449c52" -> "sha256:a2953db8ce8e2197d245eb593fc9c354de97c43eddf6daae4558c9ebc0dc3864" [label=""];
  "sha256:a2953db8ce8e2197d245eb593fc9c354de97c43eddf6daae4558c9ebc0dc3864" -> "sha256:edcde5c6f3972c5e90d14ab539d0204559e691af41064fb9cd7b39df237de543" [label=""];
  "sha256:edcde5c6f3972c5e90d14ab539d0204559e691af41064fb9cd7b39df237de543" -> "sha256:7ad3b01cc940a7de65e29026c6b93f38ce7af619badc37844b10cdfc866a21c2" [label=""];
  "sha256:b868fa01e893ff5742ed4242d0c867b23653763bb52d7f4350501f54b2449c52" -> "sha256:7ad3b01cc940a7de65e29026c6b93f38ce7af619badc37844b10cdfc866a21c2" [label=""];
  "sha256:7ad3b01cc940a7de65e29026c6b93f38ce7af619badc37844b10cdfc866a21c2" -> "sha256:401b4ecd915a7a29ba68c2fc2d75f4dddacaadaca008f0423e6ebe0eb7467f81" [label=""];
  "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" -> "sha256:03b08048cb754f97cca756c558d390b5c6380725caa8c33d0526b73fc367b50a" [label=""];
  "sha256:401b4ecd915a7a29ba68c2fc2d75f4dddacaadaca008f0423e6ebe0eb7467f81" -> "sha256:03b08048cb754f97cca756c558d390b5c6380725caa8c33d0526b73fc367b50a" [label=""];
  "sha256:03b08048cb754f97cca756c558d390b5c6380725caa8c33d0526b73fc367b50a" -> "sha256:4e9da3d9657042d77ccfe35903cb7a68201a5bb64900526f931dda40b8bfcfb2" [label=""];
}

