[app/sources/338180984.Dockerfile]
digraph {
  "sha256:e1621db1fbd6ba4870df242ba97912f971a3b2214ef6b15155ef39e5f8fe3e60" [label="local://context" shape="ellipse"];
  "sha256:978aa0a2e9df7e31c0c80e2f5ccc511474e442a1ecc44d19949891a23fd57f3f" [label="copy{src=/liveness, dest=/server}" shape="note"];
  "sha256:efdb63d03714f7c6fddf2cc8d4aad9473357c75ffeeac5e0f2f48acec70fc018" [label="sha256:efdb63d03714f7c6fddf2cc8d4aad9473357c75ffeeac5e0f2f48acec70fc018" shape="plaintext"];
  "sha256:e1621db1fbd6ba4870df242ba97912f971a3b2214ef6b15155ef39e5f8fe3e60" -> "sha256:978aa0a2e9df7e31c0c80e2f5ccc511474e442a1ecc44d19949891a23fd57f3f" [label=""];
  "sha256:978aa0a2e9df7e31c0c80e2f5ccc511474e442a1ecc44d19949891a23fd57f3f" -> "sha256:efdb63d03714f7c6fddf2cc8d4aad9473357c75ffeeac5e0f2f48acec70fc018" [label=""];
}

