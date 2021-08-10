[app/sources/198156882.Dockerfile]
digraph {
  "sha256:f56e7f52ead5e8943a12199b2bed9f4b1e281da2b229da7eb0917274af2901d7" [label="docker-image://docker.io/ray-project/ray:test-base" shape="ellipse"];
  "sha256:1687120ed696389e74822647604645daa52651131137b79ee4b222a2a6033dd9" [label="/bin/sh -c pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:69de0a47a6ef3823efcab58790fff6d2ab695847261f60796135ce41a25fcafa" [label="/bin/sh -c pip install scipy" shape="box"];
  "sha256:f63b6dc25da7816e3d973339989633f425f378126495295807ddd423cf78b80a" [label="sha256:f63b6dc25da7816e3d973339989633f425f378126495295807ddd423cf78b80a" shape="plaintext"];
  "sha256:f56e7f52ead5e8943a12199b2bed9f4b1e281da2b229da7eb0917274af2901d7" -> "sha256:1687120ed696389e74822647604645daa52651131137b79ee4b222a2a6033dd9" [label=""];
  "sha256:1687120ed696389e74822647604645daa52651131137b79ee4b222a2a6033dd9" -> "sha256:69de0a47a6ef3823efcab58790fff6d2ab695847261f60796135ce41a25fcafa" [label=""];
  "sha256:69de0a47a6ef3823efcab58790fff6d2ab695847261f60796135ce41a25fcafa" -> "sha256:f63b6dc25da7816e3d973339989633f425f378126495295807ddd423cf78b80a" [label=""];
}

