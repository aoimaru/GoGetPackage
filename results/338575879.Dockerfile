[app/sources/338575879.Dockerfile]
digraph {
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" [label="docker-image://docker.io/library/openjdk:alpine" shape="ellipse"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" [label="docker-image://docker.io/library/maven:3.5-jdk-8" shape="ellipse"];
  "sha256:f4df2b60171dc2fc59d7661be07c5e0b25832d6f9a0360dce5ecc3a2370e2524" [label="local://context" shape="ellipse"];
  "sha256:3c39226e509d2d49bce4dd52eaad7a5cfec5d4e6166c3a24cf5e4c20bff70011" [label="copy{src=/src, dest=/usr/src/myapp/src}" shape="note"];
  "sha256:fbb6887e916df271b32583ab395a658fa2e67e329880e41321cf9da81cf2ccde" [label="copy{src=/pom.xml, dest=/usr/src/myapp}" shape="note"];
  "sha256:5b916528b1920c356fdf53c3abe77a6f2a09d575e6ee45e42e3e051428631b6d" [label="/bin/sh -c mvn -f /usr/src/myapp/pom.xml clean package -DskipTests" shape="box"];
  "sha256:e93db3d206e4898f460e943490252b791e0f3db5bea1fca6b496a10625ac3fcb" [label="copy{src=/usr/src/myapp/target/*.jar, dest=/maven/}" shape="note"];
  "sha256:47d1f4c03a15387d71775f85547e819c26b9357c18b5296c5ab06ff9110f51c9" [label="sha256:47d1f4c03a15387d71775f85547e819c26b9357c18b5296c5ab06ff9110f51c9" shape="plaintext"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" -> "sha256:3c39226e509d2d49bce4dd52eaad7a5cfec5d4e6166c3a24cf5e4c20bff70011" [label=""];
  "sha256:f4df2b60171dc2fc59d7661be07c5e0b25832d6f9a0360dce5ecc3a2370e2524" -> "sha256:3c39226e509d2d49bce4dd52eaad7a5cfec5d4e6166c3a24cf5e4c20bff70011" [label=""];
  "sha256:3c39226e509d2d49bce4dd52eaad7a5cfec5d4e6166c3a24cf5e4c20bff70011" -> "sha256:fbb6887e916df271b32583ab395a658fa2e67e329880e41321cf9da81cf2ccde" [label=""];
  "sha256:f4df2b60171dc2fc59d7661be07c5e0b25832d6f9a0360dce5ecc3a2370e2524" -> "sha256:fbb6887e916df271b32583ab395a658fa2e67e329880e41321cf9da81cf2ccde" [label=""];
  "sha256:fbb6887e916df271b32583ab395a658fa2e67e329880e41321cf9da81cf2ccde" -> "sha256:5b916528b1920c356fdf53c3abe77a6f2a09d575e6ee45e42e3e051428631b6d" [label=""];
  "sha256:8e91f765e39e4a165b6bb03a5e1872df3cf60b19c9397c70af426fec862a1969" -> "sha256:e93db3d206e4898f460e943490252b791e0f3db5bea1fca6b496a10625ac3fcb" [label=""];
  "sha256:5b916528b1920c356fdf53c3abe77a6f2a09d575e6ee45e42e3e051428631b6d" -> "sha256:e93db3d206e4898f460e943490252b791e0f3db5bea1fca6b496a10625ac3fcb" [label=""];
  "sha256:e93db3d206e4898f460e943490252b791e0f3db5bea1fca6b496a10625ac3fcb" -> "sha256:47d1f4c03a15387d71775f85547e819c26b9357c18b5296c5ab06ff9110f51c9" [label=""];
}

