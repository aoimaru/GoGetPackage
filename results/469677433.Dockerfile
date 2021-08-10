[app/sources/469677433.Dockerfile]
digraph {
  "sha256:b18ea7dee4b4bf69a206594940151c326626089d4c66804498302ae5e5c2ebda" [label="docker-image://docker.io/manifoldai/orbyter-base-sys:1.0" shape="ellipse"];
  "sha256:4b6a86a3a8949ce0f5e10a606dd3be31576751aac69ad8eeb78ea7176b1a999d" [label="local://context" shape="ellipse"];
  "sha256:9bc82591c37aa21616baae128cf6a9881597afadd7b2731f476a5f9a2fd35c0e" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:8f5469de481d00de998d2a2aab181ba5337e27135c2027a097917bcde381a208" [label="mkdir{path=/build}" shape="note"];
  "sha256:681dace21e20933a006d44518161a92353570fb6fe28dd9c27f68300ec93d7f6" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:a1410cfe0784d36d821b5cbf819dce6718377d47432351a6ce11176278180c12" [label="/bin/sh -c apt-get update &&    apt-get install -y libpq-dev python3-dev &&    pip install wheel &&    pip install setuptools &&    pip install -r requirements.txt &&    jupyter contrib nbextension install --user" shape="box"];
  "sha256:9100a58666d152df34f0220ee4787c1552b073f6787e2fcee01c67027e65318e" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:c3a5be2fd89516e2b681facb887a5e06f2f9e03397826c6156181c7253498295" [label="/bin/sh -c rm -rf /build" shape="box"];
  "sha256:8cde483cd83b0864575c945a4f669129eee1807628f3e3047ba6d80a1be41f5c" [label="sha256:8cde483cd83b0864575c945a4f669129eee1807628f3e3047ba6d80a1be41f5c" shape="plaintext"];
  "sha256:b18ea7dee4b4bf69a206594940151c326626089d4c66804498302ae5e5c2ebda" -> "sha256:9bc82591c37aa21616baae128cf6a9881597afadd7b2731f476a5f9a2fd35c0e" [label=""];
  "sha256:4b6a86a3a8949ce0f5e10a606dd3be31576751aac69ad8eeb78ea7176b1a999d" -> "sha256:9bc82591c37aa21616baae128cf6a9881597afadd7b2731f476a5f9a2fd35c0e" [label=""];
  "sha256:9bc82591c37aa21616baae128cf6a9881597afadd7b2731f476a5f9a2fd35c0e" -> "sha256:8f5469de481d00de998d2a2aab181ba5337e27135c2027a097917bcde381a208" [label=""];
  "sha256:8f5469de481d00de998d2a2aab181ba5337e27135c2027a097917bcde381a208" -> "sha256:681dace21e20933a006d44518161a92353570fb6fe28dd9c27f68300ec93d7f6" [label=""];
  "sha256:681dace21e20933a006d44518161a92353570fb6fe28dd9c27f68300ec93d7f6" -> "sha256:a1410cfe0784d36d821b5cbf819dce6718377d47432351a6ce11176278180c12" [label=""];
  "sha256:a1410cfe0784d36d821b5cbf819dce6718377d47432351a6ce11176278180c12" -> "sha256:9100a58666d152df34f0220ee4787c1552b073f6787e2fcee01c67027e65318e" [label=""];
  "sha256:9100a58666d152df34f0220ee4787c1552b073f6787e2fcee01c67027e65318e" -> "sha256:c3a5be2fd89516e2b681facb887a5e06f2f9e03397826c6156181c7253498295" [label=""];
  "sha256:c3a5be2fd89516e2b681facb887a5e06f2f9e03397826c6156181c7253498295" -> "sha256:8cde483cd83b0864575c945a4f669129eee1807628f3e3047ba6d80a1be41f5c" [label=""];
}

