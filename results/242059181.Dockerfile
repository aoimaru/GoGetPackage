[app/sources/242059181.Dockerfile]
digraph {
  "sha256:576f9a6df9fe93455bb91bb388e4d128daa7a622ad6a8ae7c7effefb15ba0ac6" [label="local://context" shape="ellipse"];
  "sha256:c72722a0851af94a0bb1d06d4ee955ce4e73e57141efeaa3d0c716683cb45b8a" [label="copy{src=/example-shell.tar, dest=/}" shape="note"];
  "sha256:5337d8fa6dac7d34f40b7c750d01c225c0efb5ad00da2e911886ae424d282ab2" [label="sha256:5337d8fa6dac7d34f40b7c750d01c225c0efb5ad00da2e911886ae424d282ab2" shape="plaintext"];
  "sha256:576f9a6df9fe93455bb91bb388e4d128daa7a622ad6a8ae7c7effefb15ba0ac6" -> "sha256:c72722a0851af94a0bb1d06d4ee955ce4e73e57141efeaa3d0c716683cb45b8a" [label=""];
  "sha256:c72722a0851af94a0bb1d06d4ee955ce4e73e57141efeaa3d0c716683cb45b8a" -> "sha256:5337d8fa6dac7d34f40b7c750d01c225c0efb5ad00da2e911886ae424d282ab2" [label=""];
}

