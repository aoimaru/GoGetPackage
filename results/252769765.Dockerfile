[app/sources/252769765.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:0e3023b3eb76244bc160a407a223c50326307a55c2e80102bb29ba0f6432b6c1" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy cmake curl file git libgit2-dev libssl-dev" shape="box"];
  "sha256:cb8ec6dfa1258d444cbf7b4c14439761afe03c3838543a53e87e766cc68ef983" [label="/bin/sh -c curl -L -o rustup.sh https://static.rust-lang.org/rustup.sh && chmod +x rustup.sh && ./rustup.sh --yes --disable-sudo" shape="box"];
  "sha256:521e945d71462509e82486cf9e846ef8013c2a4e8ded488dc13d9d705c940f76" [label="/bin/sh -c apt-get remove --purge -y curl && apt-get autoclean && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:70d26e7c308efe4dddfc364de37248311eda3eb2ba3ebf2bd10c367d18a7ee47" [label="mkdir{path=/source}" shape="note"];
  "sha256:2ab62c33c4189c1bf8c5754314c785f58a9538097e0c2be95271e8395134ed35" [label="sha256:2ab62c33c4189c1bf8c5754314c785f58a9538097e0c2be95271e8395134ed35" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:0e3023b3eb76244bc160a407a223c50326307a55c2e80102bb29ba0f6432b6c1" [label=""];
  "sha256:0e3023b3eb76244bc160a407a223c50326307a55c2e80102bb29ba0f6432b6c1" -> "sha256:cb8ec6dfa1258d444cbf7b4c14439761afe03c3838543a53e87e766cc68ef983" [label=""];
  "sha256:cb8ec6dfa1258d444cbf7b4c14439761afe03c3838543a53e87e766cc68ef983" -> "sha256:521e945d71462509e82486cf9e846ef8013c2a4e8ded488dc13d9d705c940f76" [label=""];
  "sha256:521e945d71462509e82486cf9e846ef8013c2a4e8ded488dc13d9d705c940f76" -> "sha256:70d26e7c308efe4dddfc364de37248311eda3eb2ba3ebf2bd10c367d18a7ee47" [label=""];
  "sha256:70d26e7c308efe4dddfc364de37248311eda3eb2ba3ebf2bd10c367d18a7ee47" -> "sha256:2ab62c33c4189c1bf8c5754314c785f58a9538097e0c2be95271e8395134ed35" [label=""];
}

