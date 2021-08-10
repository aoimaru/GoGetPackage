[app/sources/253396008.Dockerfile]
digraph {
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" [label="docker-image://docker.io/library/maven:3.5-jdk-8" shape="ellipse"];
  "sha256:7de3959b23c0ed6d3d512baceb401be42e4f6ade301d1e66e496393b29980df7" [label="local://context" shape="ellipse"];
  "sha256:10878064a02e455a156b0a09652ba7f8c02b989c179c0e637a15fbed8d06d668" [label="copy{src=/, dest=/maven}" shape="note"];
  "sha256:cb712a0fd18f4c8749dbf1e293a08f2ad412a49848be78d53e70130a64f63483" [label="mkdir{path=/maven}" shape="note"];
  "sha256:9c6b150ad26027cca7bb96e7c92f398cdaec2764945391cb99e0d7451f657ab2" [label="/bin/sh -c mvn clean" shape="box"];
  "sha256:68baca622e4f9af31d5de6d42e604514ff10c00377d8463c57aebc579456d75e" [label="sha256:68baca622e4f9af31d5de6d42e604514ff10c00377d8463c57aebc579456d75e" shape="plaintext"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" -> "sha256:10878064a02e455a156b0a09652ba7f8c02b989c179c0e637a15fbed8d06d668" [label=""];
  "sha256:7de3959b23c0ed6d3d512baceb401be42e4f6ade301d1e66e496393b29980df7" -> "sha256:10878064a02e455a156b0a09652ba7f8c02b989c179c0e637a15fbed8d06d668" [label=""];
  "sha256:10878064a02e455a156b0a09652ba7f8c02b989c179c0e637a15fbed8d06d668" -> "sha256:cb712a0fd18f4c8749dbf1e293a08f2ad412a49848be78d53e70130a64f63483" [label=""];
  "sha256:cb712a0fd18f4c8749dbf1e293a08f2ad412a49848be78d53e70130a64f63483" -> "sha256:9c6b150ad26027cca7bb96e7c92f398cdaec2764945391cb99e0d7451f657ab2" [label=""];
  "sha256:9c6b150ad26027cca7bb96e7c92f398cdaec2764945391cb99e0d7451f657ab2" -> "sha256:68baca622e4f9af31d5de6d42e604514ff10c00377d8463c57aebc579456d75e" [label=""];
}

