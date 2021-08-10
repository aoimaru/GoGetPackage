[app/sources/274184321.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" [label="docker-image://docker.io/library/maven:3.5-jdk-8" shape="ellipse"];
  "sha256:83778aee2dfc087a9490c4a638e7767ed97f13c38c3e5f9bf870c1117eaf7c83" [label="mkdir{path=/opt}" shape="note"];
  "sha256:44a58cac5c9b7c1d6460d78863a28eccfb7422d410cb9a5e7718bc31b450ca32" [label="local://context" shape="ellipse"];
  "sha256:c57b938d3921c8f84f4475d84f709e7a0d758b0e7718d3e24e46d29a539693ac" [label="copy{src=/, dest=/opt}" shape="note"];
  "sha256:aeb64515d5826b997fac12f57ba9870c6847058c288f99eff11cfeda5c074276" [label="/bin/sh -c mvn clean install" shape="box"];
  "sha256:04e1617de1b76c062911492f30c7f23d7b7edb9d5d0df748e32010c0aee470dd" [label="copy{src=/opt/target/sidecar-*.jar, dest=/app.jar}" shape="note"];
  "sha256:6fb9b500c1b8ca5e6664ee0cd6b2cc83adc57d4daddcf42a88c2eb28adf6ed01" [label="sha256:6fb9b500c1b8ca5e6664ee0cd6b2cc83adc57d4daddcf42a88c2eb28adf6ed01" shape="plaintext"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" -> "sha256:83778aee2dfc087a9490c4a638e7767ed97f13c38c3e5f9bf870c1117eaf7c83" [label=""];
  "sha256:83778aee2dfc087a9490c4a638e7767ed97f13c38c3e5f9bf870c1117eaf7c83" -> "sha256:c57b938d3921c8f84f4475d84f709e7a0d758b0e7718d3e24e46d29a539693ac" [label=""];
  "sha256:44a58cac5c9b7c1d6460d78863a28eccfb7422d410cb9a5e7718bc31b450ca32" -> "sha256:c57b938d3921c8f84f4475d84f709e7a0d758b0e7718d3e24e46d29a539693ac" [label=""];
  "sha256:c57b938d3921c8f84f4475d84f709e7a0d758b0e7718d3e24e46d29a539693ac" -> "sha256:aeb64515d5826b997fac12f57ba9870c6847058c288f99eff11cfeda5c074276" [label=""];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:04e1617de1b76c062911492f30c7f23d7b7edb9d5d0df748e32010c0aee470dd" [label=""];
  "sha256:aeb64515d5826b997fac12f57ba9870c6847058c288f99eff11cfeda5c074276" -> "sha256:04e1617de1b76c062911492f30c7f23d7b7edb9d5d0df748e32010c0aee470dd" [label=""];
  "sha256:04e1617de1b76c062911492f30c7f23d7b7edb9d5d0df748e32010c0aee470dd" -> "sha256:6fb9b500c1b8ca5e6664ee0cd6b2cc83adc57d4daddcf42a88c2eb28adf6ed01" [label=""];
}

