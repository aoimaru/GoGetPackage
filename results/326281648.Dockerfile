[app/sources/326281648.Dockerfile]
digraph {
  "sha256:d7cd59bc1a026751ab19d6c5cc0c9cbada88405e38efb21539b64ac7b96171ff" [label="local://context" shape="ellipse"];
  "sha256:81f3355edcc99835ea0abddd7b302bad9c1237731593573a0e0e421ac1378b0e" [label="copy{src=/releases, dest=/helmfiles/releases}" shape="note"];
  "sha256:c6788395dfadde77f6ff6a32749cca0aae8e5931c0c9cb0a07000d500cc45514" [label="copy{src=/scripts, dest=/helmfiles/scripts}" shape="note"];
  "sha256:7cd76bdf8ca095992c5f1fdca14c5c567134c800d223054fe6979cb0ded6d85b" [label="copy{src=/helmfile.yaml, dest=/helmfiles/}" shape="note"];
  "sha256:3707adb0cea7a6548523a9929df87b6502c86f25e90b54767847b380f062af4a" [label="sha256:3707adb0cea7a6548523a9929df87b6502c86f25e90b54767847b380f062af4a" shape="plaintext"];
  "sha256:d7cd59bc1a026751ab19d6c5cc0c9cbada88405e38efb21539b64ac7b96171ff" -> "sha256:81f3355edcc99835ea0abddd7b302bad9c1237731593573a0e0e421ac1378b0e" [label=""];
  "sha256:81f3355edcc99835ea0abddd7b302bad9c1237731593573a0e0e421ac1378b0e" -> "sha256:c6788395dfadde77f6ff6a32749cca0aae8e5931c0c9cb0a07000d500cc45514" [label=""];
  "sha256:d7cd59bc1a026751ab19d6c5cc0c9cbada88405e38efb21539b64ac7b96171ff" -> "sha256:c6788395dfadde77f6ff6a32749cca0aae8e5931c0c9cb0a07000d500cc45514" [label=""];
  "sha256:c6788395dfadde77f6ff6a32749cca0aae8e5931c0c9cb0a07000d500cc45514" -> "sha256:7cd76bdf8ca095992c5f1fdca14c5c567134c800d223054fe6979cb0ded6d85b" [label=""];
  "sha256:d7cd59bc1a026751ab19d6c5cc0c9cbada88405e38efb21539b64ac7b96171ff" -> "sha256:7cd76bdf8ca095992c5f1fdca14c5c567134c800d223054fe6979cb0ded6d85b" [label=""];
  "sha256:7cd76bdf8ca095992c5f1fdca14c5c567134c800d223054fe6979cb0ded6d85b" -> "sha256:3707adb0cea7a6548523a9929df87b6502c86f25e90b54767847b380f062af4a" [label=""];
}

