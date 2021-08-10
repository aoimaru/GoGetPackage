[app/sources/318352900.Dockerfile]
digraph {
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" [label="docker-image://docker.io/library/java:7-jre" shape="ellipse"];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label="/bin/sh -c apt-get update && apt-get install -y \tasciidoctor \tunzip \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label="/bin/sh -c wget -O /tmp/gradle.zip https://services.gradle.org/distributions/gradle-2.5-bin.zip \t&& mkdir -p build/ \t&& unzip /tmp/gradle.zip -d build/ \t&& rm /tmp/gradle.zip \t&& mkdir -p gradle-cache/" shape="box"];
  "sha256:adfed9be68fbb080ac1110d1381ba78618f2355f52f0b45b4799d3050db408f9" [label="local://context" shape="ellipse"];
  "sha256:6519426223357e3de3f7853e1b01768a5f8a59fb602adc6fd9aa0ce8d6cdea82" [label="copy{src=/build.gradle, dest=/build/}" shape="note"];
  "sha256:12cffa4dd1439208253b0a988e171afb094e7c6592aaa3ba9f1dabfa0ccf631b" [label="copy{src=/gen-swagger-docs.sh, dest=/build/}" shape="note"];
  "sha256:d82abbdf83a3e647eaaa441e50ae73b9015ff33016bbc8c1d0c2d449329dded8" [label="/bin/sh -c mkdir -p /output /swagger-source \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/api/swagger-spec/v1.json -O /swagger-source/v1.json \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/pkg/api/v1/register.go -O /register.go \t&& build/gen-swagger-docs.sh v1 \t&& rm -rf /output/* /swagger-source/* /register.go" shape="box"];
  "sha256:a37a69c316b0939aac84c8091eed67adac3371bcea05d891f319ccf60e298572" [label="/bin/sh -c chmod -R 777 build/ \t&& chmod -R 777 gradle-cache/" shape="box"];
  "sha256:a4420bd2ac1e19be952bd22714fc15ae7b8075f0e801b971a5a6334f0bbdf386" [label="sha256:a4420bd2ac1e19be952bd22714fc15ae7b8075f0e801b971a5a6334f0bbdf386" shape="plaintext"];
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" -> "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label=""];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" -> "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label=""];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" -> "sha256:6519426223357e3de3f7853e1b01768a5f8a59fb602adc6fd9aa0ce8d6cdea82" [label=""];
  "sha256:adfed9be68fbb080ac1110d1381ba78618f2355f52f0b45b4799d3050db408f9" -> "sha256:6519426223357e3de3f7853e1b01768a5f8a59fb602adc6fd9aa0ce8d6cdea82" [label=""];
  "sha256:6519426223357e3de3f7853e1b01768a5f8a59fb602adc6fd9aa0ce8d6cdea82" -> "sha256:12cffa4dd1439208253b0a988e171afb094e7c6592aaa3ba9f1dabfa0ccf631b" [label=""];
  "sha256:adfed9be68fbb080ac1110d1381ba78618f2355f52f0b45b4799d3050db408f9" -> "sha256:12cffa4dd1439208253b0a988e171afb094e7c6592aaa3ba9f1dabfa0ccf631b" [label=""];
  "sha256:12cffa4dd1439208253b0a988e171afb094e7c6592aaa3ba9f1dabfa0ccf631b" -> "sha256:d82abbdf83a3e647eaaa441e50ae73b9015ff33016bbc8c1d0c2d449329dded8" [label=""];
  "sha256:d82abbdf83a3e647eaaa441e50ae73b9015ff33016bbc8c1d0c2d449329dded8" -> "sha256:a37a69c316b0939aac84c8091eed67adac3371bcea05d891f319ccf60e298572" [label=""];
  "sha256:a37a69c316b0939aac84c8091eed67adac3371bcea05d891f319ccf60e298572" -> "sha256:a4420bd2ac1e19be952bd22714fc15ae7b8075f0e801b971a5a6334f0bbdf386" [label=""];
}

