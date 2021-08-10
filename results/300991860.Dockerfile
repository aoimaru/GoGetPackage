[app/sources/300991860.Dockerfile]
digraph {
  "sha256:a2532cf78cdb6b0892fff025893c91b41b8376cde3adac20a879a515b0e3676a" [label="docker-image://docker.io/jonmcquade/dotnetcore-runtime-sdk-node-python:dotnetcore-asp" shape="ellipse"];
  "sha256:62dfe51ad8d448e09fbb74d6a8d5a3a22190969b72b14838d99fab9cd5433933" [label="mkdir{path=/dotnetcorespa}" shape="note"];
  "sha256:fa589cadb98cee6996a764b8f32e08c92c5c39a664b19c7a989eacf81f5d2f90" [label="local://context" shape="ellipse"];
  "sha256:db7948e82b795e1a18bb51a37953cc1ca45bb754c379da60cc6c35f187865610" [label="copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:884b83a14becc81eebad918e84572a983d2774ba768870a3adcd9280690cc67f" [label="copy{src=/, dest=/dotnetcorespa/}" shape="note"];
  "sha256:409f604bb1aa0b9704c5a81b7718df283a913c2b0b6cd15058a22423a9a1da81" [label="/bin/sh -c cd /dotnetcorespa && npm install   && dotnet restore" shape="box"];
  "sha256:2acdc2e00248bfed3c7e5221f9f6d300283b525c48045455302b9535b778663a" [label="sha256:2acdc2e00248bfed3c7e5221f9f6d300283b525c48045455302b9535b778663a" shape="plaintext"];
  "sha256:a2532cf78cdb6b0892fff025893c91b41b8376cde3adac20a879a515b0e3676a" -> "sha256:62dfe51ad8d448e09fbb74d6a8d5a3a22190969b72b14838d99fab9cd5433933" [label=""];
  "sha256:62dfe51ad8d448e09fbb74d6a8d5a3a22190969b72b14838d99fab9cd5433933" -> "sha256:db7948e82b795e1a18bb51a37953cc1ca45bb754c379da60cc6c35f187865610" [label=""];
  "sha256:fa589cadb98cee6996a764b8f32e08c92c5c39a664b19c7a989eacf81f5d2f90" -> "sha256:db7948e82b795e1a18bb51a37953cc1ca45bb754c379da60cc6c35f187865610" [label=""];
  "sha256:db7948e82b795e1a18bb51a37953cc1ca45bb754c379da60cc6c35f187865610" -> "sha256:884b83a14becc81eebad918e84572a983d2774ba768870a3adcd9280690cc67f" [label=""];
  "sha256:fa589cadb98cee6996a764b8f32e08c92c5c39a664b19c7a989eacf81f5d2f90" -> "sha256:884b83a14becc81eebad918e84572a983d2774ba768870a3adcd9280690cc67f" [label=""];
  "sha256:884b83a14becc81eebad918e84572a983d2774ba768870a3adcd9280690cc67f" -> "sha256:409f604bb1aa0b9704c5a81b7718df283a913c2b0b6cd15058a22423a9a1da81" [label=""];
  "sha256:409f604bb1aa0b9704c5a81b7718df283a913c2b0b6cd15058a22423a9a1da81" -> "sha256:2acdc2e00248bfed3c7e5221f9f6d300283b525c48045455302b9535b778663a" [label=""];
}

