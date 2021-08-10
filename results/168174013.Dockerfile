[app/sources/168174013.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:d981f804c4eee86dc502788a305baa4b943642c8deab3c8fd281fe21461bcc17" [label="local://context" shape="ellipse"];
  "sha256:a2c4e461db543a3e0456c97c1de8fe1c9382b9350d0cde6b8794b9231e289b93" [label="copy{src=/, dest=/workdir/}" shape="note"];
  "sha256:ecf89ea2d0d1bd679b8e4810a1c2ac4ad8097e750b95d95dbdf6dabe2d1f5f62" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:a738f4423caf40daaf3e7aac1b3f53c3688fc7896f4d9003c95b24366be2bdaf" [label="/bin/sh -c GRADLE_USER_HOME=cache ./gradlew -I gradle/init-publish.gradle buildDeb -x test &&   dpkg -i ./igor-web/build/distributions/*.deb &&   cd .. &&   rm -rf workdir" shape="box"];
  "sha256:3f5155e250d47b40aa2ef7fb20bd41c58a980ff54adfe2af80fdcfb1026eda22" [label="sha256:3f5155e250d47b40aa2ef7fb20bd41c58a980ff54adfe2af80fdcfb1026eda22" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:a2c4e461db543a3e0456c97c1de8fe1c9382b9350d0cde6b8794b9231e289b93" [label=""];
  "sha256:d981f804c4eee86dc502788a305baa4b943642c8deab3c8fd281fe21461bcc17" -> "sha256:a2c4e461db543a3e0456c97c1de8fe1c9382b9350d0cde6b8794b9231e289b93" [label=""];
  "sha256:a2c4e461db543a3e0456c97c1de8fe1c9382b9350d0cde6b8794b9231e289b93" -> "sha256:ecf89ea2d0d1bd679b8e4810a1c2ac4ad8097e750b95d95dbdf6dabe2d1f5f62" [label=""];
  "sha256:ecf89ea2d0d1bd679b8e4810a1c2ac4ad8097e750b95d95dbdf6dabe2d1f5f62" -> "sha256:a738f4423caf40daaf3e7aac1b3f53c3688fc7896f4d9003c95b24366be2bdaf" [label=""];
  "sha256:a738f4423caf40daaf3e7aac1b3f53c3688fc7896f4d9003c95b24366be2bdaf" -> "sha256:3f5155e250d47b40aa2ef7fb20bd41c58a980ff54adfe2af80fdcfb1026eda22" [label=""];
}

