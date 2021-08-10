[app/sources/206394265.Dockerfile]
digraph {
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" [label="docker-image://docker.io/library/java:7-jre" shape="ellipse"];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label="/bin/sh -c apt-get update && apt-get install -y \tasciidoctor \tunzip \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label="/bin/sh -c wget -O /tmp/gradle.zip https://services.gradle.org/distributions/gradle-2.5-bin.zip \t&& mkdir -p build/ \t&& unzip /tmp/gradle.zip -d build/ \t&& rm /tmp/gradle.zip \t&& mkdir -p gradle-cache/" shape="box"];
  "sha256:cb5c7c7d53512255d9136019524cea728d6d0ed0e8263266cad98c71fa9cdb06" [label="local://context" shape="ellipse"];
  "sha256:93d1a158577ec0f131c04c3af3162f7704161504e5a8060a3c7f3ed0470f7ce1" [label="copy{src=/build.gradle, dest=/build/}" shape="note"];
  "sha256:4c98f960ddaa92b7b74098fbacc78197022782545b057ce64e9bd5d856347350" [label="copy{src=/gen-swagger-docs.sh, dest=/build/}" shape="note"];
  "sha256:bb5abb2ff7ca7055d76e99e233bf6f398b2066e787a3921c78268b364266bc73" [label="/bin/sh -c mkdir -p /output /swagger-source \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/api/swagger-spec/v1.json -O /swagger-source/v1.json \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/pkg/api/v1/register.go -O /register.go \t&& build/gen-swagger-docs.sh v1 \t&& rm -rf /output/* /swagger-source/* /register.go" shape="box"];
  "sha256:62af946d8f89e894793bdae5b3fd93af2ba63e0d9c40167ead15334a0906e8e8" [label="/bin/sh -c chmod -R 777 build/ \t&& chmod -R 777 gradle-cache/" shape="box"];
  "sha256:0971ab5144cb6c553beb9f5c8e430b61bb01c311131970574d7e260beea4367e" [label="sha256:0971ab5144cb6c553beb9f5c8e430b61bb01c311131970574d7e260beea4367e" shape="plaintext"];
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" -> "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label=""];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" -> "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label=""];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" -> "sha256:93d1a158577ec0f131c04c3af3162f7704161504e5a8060a3c7f3ed0470f7ce1" [label=""];
  "sha256:cb5c7c7d53512255d9136019524cea728d6d0ed0e8263266cad98c71fa9cdb06" -> "sha256:93d1a158577ec0f131c04c3af3162f7704161504e5a8060a3c7f3ed0470f7ce1" [label=""];
  "sha256:93d1a158577ec0f131c04c3af3162f7704161504e5a8060a3c7f3ed0470f7ce1" -> "sha256:4c98f960ddaa92b7b74098fbacc78197022782545b057ce64e9bd5d856347350" [label=""];
  "sha256:cb5c7c7d53512255d9136019524cea728d6d0ed0e8263266cad98c71fa9cdb06" -> "sha256:4c98f960ddaa92b7b74098fbacc78197022782545b057ce64e9bd5d856347350" [label=""];
  "sha256:4c98f960ddaa92b7b74098fbacc78197022782545b057ce64e9bd5d856347350" -> "sha256:bb5abb2ff7ca7055d76e99e233bf6f398b2066e787a3921c78268b364266bc73" [label=""];
  "sha256:bb5abb2ff7ca7055d76e99e233bf6f398b2066e787a3921c78268b364266bc73" -> "sha256:62af946d8f89e894793bdae5b3fd93af2ba63e0d9c40167ead15334a0906e8e8" [label=""];
  "sha256:62af946d8f89e894793bdae5b3fd93af2ba63e0d9c40167ead15334a0906e8e8" -> "sha256:0971ab5144cb6c553beb9f5c8e430b61bb01c311131970574d7e260beea4367e" [label=""];
}

