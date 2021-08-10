[app/sources/147479597.Dockerfile]
digraph {
  "sha256:c695d1d63d767b51ec2978233db36ae6997e0e643356b2ac5900b3d644ea3dd7" [label="docker-image://docker.io/library/openjdk:jre-alpine" shape="ellipse"];
  "sha256:02af32b55b82b499622dac4fea64d140b5799d5d85ee4806919fa91ef8ed0a5e" [label="local://context" shape="ellipse"];
  "sha256:f8733fd491c8e8eb59b03960c010fd52157450a2c411415e7f599719be3e2a8a" [label="copy{src=/build/libs/todo-web-service-exercise-1.0.0.jar, dest=/app/todo-web-service.jar}" shape="note"];
  "sha256:56cc94f0a1e5f721c7adfbdb5e6cbad66bf5667abcf732861eae47f8a1db619d" [label="sha256:56cc94f0a1e5f721c7adfbdb5e6cbad66bf5667abcf732861eae47f8a1db619d" shape="plaintext"];
  "sha256:c695d1d63d767b51ec2978233db36ae6997e0e643356b2ac5900b3d644ea3dd7" -> "sha256:f8733fd491c8e8eb59b03960c010fd52157450a2c411415e7f599719be3e2a8a" [label=""];
  "sha256:02af32b55b82b499622dac4fea64d140b5799d5d85ee4806919fa91ef8ed0a5e" -> "sha256:f8733fd491c8e8eb59b03960c010fd52157450a2c411415e7f599719be3e2a8a" [label=""];
  "sha256:f8733fd491c8e8eb59b03960c010fd52157450a2c411415e7f599719be3e2a8a" -> "sha256:56cc94f0a1e5f721c7adfbdb5e6cbad66bf5667abcf732861eae47f8a1db619d" [label=""];
}

