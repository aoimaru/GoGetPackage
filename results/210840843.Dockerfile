[app/sources/210840843.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:98dca75a4c1844695da8e4bb27e98c6f212a019aba30c1a09ea517d722dc5d00" [label="mkdir{path=/opt/ftw}" shape="note"];
  "sha256:0d7951dbbe232a4af0f413268dbd107ce365a845744ad8a01d22d396d9b29f9b" [label="local://context" shape="ellipse"];
  "sha256:15850bbbfa92fc49062824cf7c944e0d5639d39ba470348349d02800c9752f9f" [label="copy{src=/, dest=/opt/ftw/}" shape="note"];
  "sha256:4e5f110fa0ca90af60b9ae4e4ee18b77538ea4697db2d9302b473ad98ac63e23" [label="/bin/sh -c apk add --update git py2-pip &&     chmod 0655 /opt/ftw/tools/build_journal.py /opt/ftw/docker/docker_entry.sh &&     git clone https://github.com/SpiderLabs/OWASP-CRS-regressions.git /CRS &&     pip install -e ." shape="box"];
  "sha256:2b4493264139d1917991dbd0ac55781615aba7c62895f331f3709d5b6bdb1535" [label="sha256:2b4493264139d1917991dbd0ac55781615aba7c62895f331f3709d5b6bdb1535" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:98dca75a4c1844695da8e4bb27e98c6f212a019aba30c1a09ea517d722dc5d00" [label=""];
  "sha256:98dca75a4c1844695da8e4bb27e98c6f212a019aba30c1a09ea517d722dc5d00" -> "sha256:15850bbbfa92fc49062824cf7c944e0d5639d39ba470348349d02800c9752f9f" [label=""];
  "sha256:0d7951dbbe232a4af0f413268dbd107ce365a845744ad8a01d22d396d9b29f9b" -> "sha256:15850bbbfa92fc49062824cf7c944e0d5639d39ba470348349d02800c9752f9f" [label=""];
  "sha256:15850bbbfa92fc49062824cf7c944e0d5639d39ba470348349d02800c9752f9f" -> "sha256:4e5f110fa0ca90af60b9ae4e4ee18b77538ea4697db2d9302b473ad98ac63e23" [label=""];
  "sha256:4e5f110fa0ca90af60b9ae4e4ee18b77538ea4697db2d9302b473ad98ac63e23" -> "sha256:2b4493264139d1917991dbd0ac55781615aba7c62895f331f3709d5b6bdb1535" [label=""];
}

