[app/sources/467164695.Dockerfile]
digraph {
  "sha256:eeae0989f2b6c3351b1b945b0e55ac2e28f430c08da1be7d404edd3d5c21c9cd" [label="docker-image://docker.io/m0t0k1ch1/mmpc-child-base:v0.3.2" shape="ellipse"];
  "sha256:0967a8e886249259225dcec59011c156219e8755c625ea7b856192d0cb798059" [label="/bin/sh -c apk --update add bash" shape="box"];
  "sha256:614a8b00a57c67cef19ef3219d1fb446dde90bdd6894789a680bc8f1d4287f08" [label="mkdir{path=/root}" shape="note"];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" [label="https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh" shape="ellipse"];
  "sha256:f66264e387006d5070b779c032c6cc235287b1ea8f0641e23feec8a3d850b217" [label="copy{src=/wait-for-it.sh, dest=/root/}" shape="note"];
  "sha256:a3ecfbf463dcebdd85953bef629bdd32bdfe676dc19311f719bc8a5e9cbe8937" [label="/bin/sh -c chmod +x ./wait-for-it.sh" shape="box"];
  "sha256:49ca6b31f5348d8aef878bb5265d5ba30529220517af2b43e95b2e8e79e061a7" [label="/bin/sh -c mkdir -p /var/lib/mmpc /usr/local/etc/mmpc" shape="box"];
  "sha256:f3caf880a8f9b7435caaaee6bfb577c9370de77742ba0ec9deafd337cd543898" [label="local://context" shape="ellipse"];
  "sha256:9d52c63c0f441ec10744d710859129f3771f149ec30ad6c7b4a6e2a85b0bd02c" [label="copy{src=/app/config.json, dest=/usr/local/etc/mmpc/}" shape="note"];
  "sha256:1f6c319e0f96ca1b00f882bf15c9d0ae1a9fd7af21382ae8d43b3b525d55c818" [label="copy{src=/cli/config.json, dest=/root/}" shape="note"];
  "sha256:d48faeff9b664df47e6de66402a1137ced44a7e1780df39c0e25bb157e98fb83" [label="sha256:d48faeff9b664df47e6de66402a1137ced44a7e1780df39c0e25bb157e98fb83" shape="plaintext"];
  "sha256:eeae0989f2b6c3351b1b945b0e55ac2e28f430c08da1be7d404edd3d5c21c9cd" -> "sha256:0967a8e886249259225dcec59011c156219e8755c625ea7b856192d0cb798059" [label=""];
  "sha256:0967a8e886249259225dcec59011c156219e8755c625ea7b856192d0cb798059" -> "sha256:614a8b00a57c67cef19ef3219d1fb446dde90bdd6894789a680bc8f1d4287f08" [label=""];
  "sha256:614a8b00a57c67cef19ef3219d1fb446dde90bdd6894789a680bc8f1d4287f08" -> "sha256:f66264e387006d5070b779c032c6cc235287b1ea8f0641e23feec8a3d850b217" [label=""];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" -> "sha256:f66264e387006d5070b779c032c6cc235287b1ea8f0641e23feec8a3d850b217" [label=""];
  "sha256:f66264e387006d5070b779c032c6cc235287b1ea8f0641e23feec8a3d850b217" -> "sha256:a3ecfbf463dcebdd85953bef629bdd32bdfe676dc19311f719bc8a5e9cbe8937" [label=""];
  "sha256:a3ecfbf463dcebdd85953bef629bdd32bdfe676dc19311f719bc8a5e9cbe8937" -> "sha256:49ca6b31f5348d8aef878bb5265d5ba30529220517af2b43e95b2e8e79e061a7" [label=""];
  "sha256:49ca6b31f5348d8aef878bb5265d5ba30529220517af2b43e95b2e8e79e061a7" -> "sha256:9d52c63c0f441ec10744d710859129f3771f149ec30ad6c7b4a6e2a85b0bd02c" [label=""];
  "sha256:f3caf880a8f9b7435caaaee6bfb577c9370de77742ba0ec9deafd337cd543898" -> "sha256:9d52c63c0f441ec10744d710859129f3771f149ec30ad6c7b4a6e2a85b0bd02c" [label=""];
  "sha256:9d52c63c0f441ec10744d710859129f3771f149ec30ad6c7b4a6e2a85b0bd02c" -> "sha256:1f6c319e0f96ca1b00f882bf15c9d0ae1a9fd7af21382ae8d43b3b525d55c818" [label=""];
  "sha256:f3caf880a8f9b7435caaaee6bfb577c9370de77742ba0ec9deafd337cd543898" -> "sha256:1f6c319e0f96ca1b00f882bf15c9d0ae1a9fd7af21382ae8d43b3b525d55c818" [label=""];
  "sha256:1f6c319e0f96ca1b00f882bf15c9d0ae1a9fd7af21382ae8d43b3b525d55c818" -> "sha256:d48faeff9b664df47e6de66402a1137ced44a7e1780df39c0e25bb157e98fb83" [label=""];
}

