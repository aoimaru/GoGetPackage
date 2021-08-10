[app/sources/358597301.Dockerfile]
digraph {
  "sha256:8dde9e34251da88d37e01589eabc306f7a142594fb699837d70c47bd5c3bccbb" [label="local://context" shape="ellipse"];
  "sha256:a53125c5dca801f7b08683faff2ca8c6f1f39f4aa658ed531940a6e73a9b5b22" [label="docker-image://docker.io/benchflow/base-images:dns-envconsul-java8_dev" shape="ellipse"];
  "sha256:1800b22bc0793c5923be939bb374b2ccfb1fad48b4e3561c54378a0a0d45fe85" [label="/bin/sh -c wget -q --no-check-certificate -O /app/benchflow-data-manager.jar https://github.com/benchflow/data-manager/releases/download/$DATA_MANAGER_VERSION/benchflow-data-manager.jar" shape="box"];
  "sha256:4f6c313f4ab56b6d0e6d4801594c1ef9c05b0c950b64ca309446dac5b868794c" [label="copy{src=/conf/prod.conf, dest=/app/}" shape="note"];
  "sha256:4b7087a4564aac030ecb0fcdb4d28e89e18f50b9dcde83eda92498d47009c9fb" [label="copy{src=/services/300-data-manager.conf, dest=/apps/chaperone.d/300-data-manager.conf}" shape="note"];
  "sha256:4ec0782669f7dbe9f32104e0b71b9d92722e6da784e2a4b604fd8b672c1b8530" [label="sha256:4ec0782669f7dbe9f32104e0b71b9d92722e6da784e2a4b604fd8b672c1b8530" shape="plaintext"];
  "sha256:a53125c5dca801f7b08683faff2ca8c6f1f39f4aa658ed531940a6e73a9b5b22" -> "sha256:1800b22bc0793c5923be939bb374b2ccfb1fad48b4e3561c54378a0a0d45fe85" [label=""];
  "sha256:1800b22bc0793c5923be939bb374b2ccfb1fad48b4e3561c54378a0a0d45fe85" -> "sha256:4f6c313f4ab56b6d0e6d4801594c1ef9c05b0c950b64ca309446dac5b868794c" [label=""];
  "sha256:8dde9e34251da88d37e01589eabc306f7a142594fb699837d70c47bd5c3bccbb" -> "sha256:4f6c313f4ab56b6d0e6d4801594c1ef9c05b0c950b64ca309446dac5b868794c" [label=""];
  "sha256:4f6c313f4ab56b6d0e6d4801594c1ef9c05b0c950b64ca309446dac5b868794c" -> "sha256:4b7087a4564aac030ecb0fcdb4d28e89e18f50b9dcde83eda92498d47009c9fb" [label=""];
  "sha256:8dde9e34251da88d37e01589eabc306f7a142594fb699837d70c47bd5c3bccbb" -> "sha256:4b7087a4564aac030ecb0fcdb4d28e89e18f50b9dcde83eda92498d47009c9fb" [label=""];
  "sha256:4b7087a4564aac030ecb0fcdb4d28e89e18f50b9dcde83eda92498d47009c9fb" -> "sha256:4ec0782669f7dbe9f32104e0b71b9d92722e6da784e2a4b604fd8b672c1b8530" [label=""];
}

