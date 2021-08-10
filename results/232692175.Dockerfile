[app/sources/232692175.Dockerfile]
digraph {
  "sha256:915f9a0303c48f4b78d211eb25d8986dc55baac9e24fb80891f4506093f1dae7" [label="local://context" shape="ellipse"];
  "sha256:f6d42dcbe94ced6425b740ebbaf56e6a12bbec4fc07572c008f0390be6e6ce4a" [label="copy{src=/hello.sh, dest=/hello.sh}" shape="note"];
  "sha256:76cd0227444290218e3b359ca5fbfd6c50eee6461bbd38a0b1af75854ce31ecc" [label="sha256:76cd0227444290218e3b359ca5fbfd6c50eee6461bbd38a0b1af75854ce31ecc" shape="plaintext"];
  "sha256:915f9a0303c48f4b78d211eb25d8986dc55baac9e24fb80891f4506093f1dae7" -> "sha256:f6d42dcbe94ced6425b740ebbaf56e6a12bbec4fc07572c008f0390be6e6ce4a" [label=""];
  "sha256:f6d42dcbe94ced6425b740ebbaf56e6a12bbec4fc07572c008f0390be6e6ce4a" -> "sha256:76cd0227444290218e3b359ca5fbfd6c50eee6461bbd38a0b1af75854ce31ecc" [label=""];
}

