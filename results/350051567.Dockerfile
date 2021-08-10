[app/sources/350051567.Dockerfile]
digraph {
  "sha256:fca27527ca0e7b31b347cba595b46f421ad2ccebf2e6f99a15ad39e55b00b27a" [label="docker-image://mcr.microsoft.com/windows:1809" shape="ellipse"];
  "sha256:69892b69081f9184b5617297d4ab0b839eb5e58c379ae935f72a2bb42b06a102" [label="mkdir{path=/C:/App}" shape="note"];
  "sha256:157c775121c409f8ee0dbf768b716a18ce7a3f01e2b15118554d94a898c643f0" [label="/bin/sh -c curl.exe -o tiny_yolov2.tar.gz https://onnxzoo.blob.core.windows.net/models/opset_7/tiny_yolov2/tiny_yolov2.tar.gz &&     tar.exe -xf tiny_yolov2.tar.gz &&     del tiny_yolov2.tar.gz" shape="box"];
  "sha256:46d17c2660123d979ddb6aad7877feab6e4eb0aa5a5b92738647d5750bdd7a61" [label="/bin/sh -c curl.exe -L -o WinMLRunner_x64_Release.zip https://github.com/Microsoft/Windows-Machine-Learning/releases/download/v1.0.0.0/WinMLRunner_x64_Release.zip &&     tar.exe -xf C:/App/WinMLRunner_x64_Release.zip &&     del WinMLRunner_x64_Release.zip" shape="box"];
  "sha256:1169b94742f5ffa5bee3c8a960113e5caa0c9ba895cab7d15d74e91cebc53225" [label="sha256:1169b94742f5ffa5bee3c8a960113e5caa0c9ba895cab7d15d74e91cebc53225" shape="plaintext"];
  "sha256:fca27527ca0e7b31b347cba595b46f421ad2ccebf2e6f99a15ad39e55b00b27a" -> "sha256:69892b69081f9184b5617297d4ab0b839eb5e58c379ae935f72a2bb42b06a102" [label=""];
  "sha256:69892b69081f9184b5617297d4ab0b839eb5e58c379ae935f72a2bb42b06a102" -> "sha256:157c775121c409f8ee0dbf768b716a18ce7a3f01e2b15118554d94a898c643f0" [label=""];
  "sha256:157c775121c409f8ee0dbf768b716a18ce7a3f01e2b15118554d94a898c643f0" -> "sha256:46d17c2660123d979ddb6aad7877feab6e4eb0aa5a5b92738647d5750bdd7a61" [label=""];
  "sha256:46d17c2660123d979ddb6aad7877feab6e4eb0aa5a5b92738647d5750bdd7a61" -> "sha256:1169b94742f5ffa5bee3c8a960113e5caa0c9ba895cab7d15d74e91cebc53225" [label=""];
}

