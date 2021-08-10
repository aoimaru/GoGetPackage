[app/sources/471428715.Dockerfile]
digraph {
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" [label="docker-image://docker.io/library/java:7-jre" shape="ellipse"];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label="/bin/sh -c apt-get update && apt-get install -y \tasciidoctor \tunzip \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label="/bin/sh -c wget -O /tmp/gradle.zip https://services.gradle.org/distributions/gradle-2.5-bin.zip \t&& mkdir -p build/ \t&& unzip /tmp/gradle.zip -d build/ \t&& rm /tmp/gradle.zip \t&& mkdir -p gradle-cache/" shape="box"];
  "sha256:37fb1c5d1881cb8a746fe6df7dd84519a1af8e342c1b2a9a2da5926c0b61e0b1" [label="local://context" shape="ellipse"];
  "sha256:039dab0d78f087ea602377f28440b67956dee5ceaa6d1d642a33d0f50987750b" [label="copy{src=/build.gradle, dest=/build/}" shape="note"];
  "sha256:619c32dfa326f93b587abb9d78946362b867a206973b0f7c658183a0e1f47e16" [label="copy{src=/gen-swagger-docs.sh, dest=/build/}" shape="note"];
  "sha256:8768f738dd51bea72aff7b0893a0ea4f9e8d8d0b90f1e7bbe14bce305f95f969" [label="/bin/sh -c mkdir -p /output /swagger-source \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/api/swagger-spec/v1.json -O /swagger-source/v1.json \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/pkg/api/v1/register.go -O /register.go \t&& build/gen-swagger-docs.sh v1 \t&& rm -rf /output/* /swagger-source/* /register.go" shape="box"];
  "sha256:d52d2723c71d8eb00cd104d6332c41bf40b04e14374141bd4ac99bcb92ba80e2" [label="/bin/sh -c chmod -R 777 build/ \t&& chmod -R 777 gradle-cache/" shape="box"];
  "sha256:9a6bd3c270babdbd9f95ffea3750080a0b6b44c172bee02254e6125b8731b870" [label="sha256:9a6bd3c270babdbd9f95ffea3750080a0b6b44c172bee02254e6125b8731b870" shape="plaintext"];
  "sha256:79f3f03d18cc87b312d1d4c9aa51768c2b705b296c13ed87a3f6cba2fb2262fc" -> "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" [label=""];
  "sha256:8834ccd85e254e32cf2f7b21f3b3cf75387386e598550c30baf49b95ca8ebddc" -> "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" [label=""];
  "sha256:dea8b365476146498aa8f73c9f4c66af070f9f0d24e0e0ceedde088d3f6a404c" -> "sha256:039dab0d78f087ea602377f28440b67956dee5ceaa6d1d642a33d0f50987750b" [label=""];
  "sha256:37fb1c5d1881cb8a746fe6df7dd84519a1af8e342c1b2a9a2da5926c0b61e0b1" -> "sha256:039dab0d78f087ea602377f28440b67956dee5ceaa6d1d642a33d0f50987750b" [label=""];
  "sha256:039dab0d78f087ea602377f28440b67956dee5ceaa6d1d642a33d0f50987750b" -> "sha256:619c32dfa326f93b587abb9d78946362b867a206973b0f7c658183a0e1f47e16" [label=""];
  "sha256:37fb1c5d1881cb8a746fe6df7dd84519a1af8e342c1b2a9a2da5926c0b61e0b1" -> "sha256:619c32dfa326f93b587abb9d78946362b867a206973b0f7c658183a0e1f47e16" [label=""];
  "sha256:619c32dfa326f93b587abb9d78946362b867a206973b0f7c658183a0e1f47e16" -> "sha256:8768f738dd51bea72aff7b0893a0ea4f9e8d8d0b90f1e7bbe14bce305f95f969" [label=""];
  "sha256:8768f738dd51bea72aff7b0893a0ea4f9e8d8d0b90f1e7bbe14bce305f95f969" -> "sha256:d52d2723c71d8eb00cd104d6332c41bf40b04e14374141bd4ac99bcb92ba80e2" [label=""];
  "sha256:d52d2723c71d8eb00cd104d6332c41bf40b04e14374141bd4ac99bcb92ba80e2" -> "sha256:9a6bd3c270babdbd9f95ffea3750080a0b6b44c172bee02254e6125b8731b870" [label=""];
}

