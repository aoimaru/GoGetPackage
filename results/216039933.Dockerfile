[app/sources/216039933.Dockerfile]
digraph {
  "sha256:7712921e361c2b79c9f90ec009777b0c7c02f519b4f99e7595ce107b6d276b5f" [label="docker-image://docker.io/microsoft/mssql-server-windows-express:latest" shape="ellipse"];
  "sha256:4813970694762adaf6890eef4632e6fcb1e0b2cda740062173371951ce2ae264" [label="mkdir{path=/C:\\init}" shape="note"];
  "sha256:41b6b6e192d6a9173f4c8e6269c41fe1fe64335b285c79ed8a3f2419df4b124a" [label="local://context" shape="ellipse"];
  "sha256:dd6a3de60cc29e91e26b8810f37b30c7e9493f1f0435d72ed54e74098576490e" [label="copy{src=/, dest=/C:\\init/}" shape="note"];
  "sha256:219deb3746714b4c6ac890a2f8cb82995589915784f01df336fd1e966619841c" [label="sha256:219deb3746714b4c6ac890a2f8cb82995589915784f01df336fd1e966619841c" shape="plaintext"];
  "sha256:7712921e361c2b79c9f90ec009777b0c7c02f519b4f99e7595ce107b6d276b5f" -> "sha256:4813970694762adaf6890eef4632e6fcb1e0b2cda740062173371951ce2ae264" [label=""];
  "sha256:4813970694762adaf6890eef4632e6fcb1e0b2cda740062173371951ce2ae264" -> "sha256:dd6a3de60cc29e91e26b8810f37b30c7e9493f1f0435d72ed54e74098576490e" [label=""];
  "sha256:41b6b6e192d6a9173f4c8e6269c41fe1fe64335b285c79ed8a3f2419df4b124a" -> "sha256:dd6a3de60cc29e91e26b8810f37b30c7e9493f1f0435d72ed54e74098576490e" [label=""];
  "sha256:dd6a3de60cc29e91e26b8810f37b30c7e9493f1f0435d72ed54e74098576490e" -> "sha256:219deb3746714b4c6ac890a2f8cb82995589915784f01df336fd1e966619841c" [label=""];
}

