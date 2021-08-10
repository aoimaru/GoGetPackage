[app/sources/155304024.Dockerfile]
digraph {
  "sha256:88495aa7893463bad2145a106d009569afaeba093f3d2491939523c65247b8a0" [label="local://context" shape="ellipse"];
  "sha256:91fce3c79caa4dd3aae6d85611ef482cf3c49c27cfc18d8416097edb095e1aaa" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:79d2be8ea1dfa92d2c65c40de7153e41a67b03cdecb163721e36fe6ca4f664e1" [label="copy{src=/bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:0984591be35810ec16d8453e5113a9499e28cb0faa4f5ec2df9f330d77455524" [label="mkdir{path=/root}" shape="note"];
  "sha256:06e5ccb2977588fb0669eafa721c0fad5db54f8585a2445d8c9e50d3e22adf87" [label="/bin/sh -c git config --global user.email \"radial@brianclements.net\" &&                git config --global user.name \"radial\"" shape="box"];
  "sha256:356a4af7555990dff7555e79e4466556e212f9419ccfc7dad407901a30042f17" [label="sha256:356a4af7555990dff7555e79e4466556e212f9419ccfc7dad407901a30042f17" shape="plaintext"];
  "sha256:88495aa7893463bad2145a106d009569afaeba093f3d2491939523c65247b8a0" -> "sha256:91fce3c79caa4dd3aae6d85611ef482cf3c49c27cfc18d8416097edb095e1aaa" [label=""];
  "sha256:91fce3c79caa4dd3aae6d85611ef482cf3c49c27cfc18d8416097edb095e1aaa" -> "sha256:79d2be8ea1dfa92d2c65c40de7153e41a67b03cdecb163721e36fe6ca4f664e1" [label=""];
  "sha256:88495aa7893463bad2145a106d009569afaeba093f3d2491939523c65247b8a0" -> "sha256:79d2be8ea1dfa92d2c65c40de7153e41a67b03cdecb163721e36fe6ca4f664e1" [label=""];
  "sha256:79d2be8ea1dfa92d2c65c40de7153e41a67b03cdecb163721e36fe6ca4f664e1" -> "sha256:0984591be35810ec16d8453e5113a9499e28cb0faa4f5ec2df9f330d77455524" [label=""];
  "sha256:0984591be35810ec16d8453e5113a9499e28cb0faa4f5ec2df9f330d77455524" -> "sha256:06e5ccb2977588fb0669eafa721c0fad5db54f8585a2445d8c9e50d3e22adf87" [label=""];
  "sha256:06e5ccb2977588fb0669eafa721c0fad5db54f8585a2445d8c9e50d3e22adf87" -> "sha256:356a4af7555990dff7555e79e4466556e212f9419ccfc7dad407901a30042f17" [label=""];
}

