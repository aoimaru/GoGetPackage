[app/sources/341901800.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f7d944e1880900f547682f4191def733f62761d8feedb8c59a905c08a3c2bf97" [label="local://context" shape="ellipse"];
  "sha256:158fb701e44c1ffc4dce2b12d7ce9dfc76fca53f7bac8478b8c86a8f208d7acc" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5f5a522f1c88c28135c844c39c90b41cfa3806ef07f9399018525ba02a3fa837" [label="pip install unidecode" shape="box"];
  "sha256:14e837b052403eca1df9959ec7d92016ba1a44d12ede7337f8b167a5b3b05e8c" [label="pip install unicodecsv" shape="box"];
  "sha256:737ba71c8e631ca6372ae8b4f67bd255d1cec12bce793f93779e0d54aa9bea51" [label="pip install tweepy" shape="box"];
  "sha256:e2613f3fb7431a8066f0145452e0668762558213e55113219468a6c2bebc8c18" [label="sha256:e2613f3fb7431a8066f0145452e0668762558213e55113219468a6c2bebc8c18" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:158fb701e44c1ffc4dce2b12d7ce9dfc76fca53f7bac8478b8c86a8f208d7acc" [label=""];
  "sha256:f7d944e1880900f547682f4191def733f62761d8feedb8c59a905c08a3c2bf97" -> "sha256:158fb701e44c1ffc4dce2b12d7ce9dfc76fca53f7bac8478b8c86a8f208d7acc" [label=""];
  "sha256:158fb701e44c1ffc4dce2b12d7ce9dfc76fca53f7bac8478b8c86a8f208d7acc" -> "sha256:5f5a522f1c88c28135c844c39c90b41cfa3806ef07f9399018525ba02a3fa837" [label=""];
  "sha256:5f5a522f1c88c28135c844c39c90b41cfa3806ef07f9399018525ba02a3fa837" -> "sha256:14e837b052403eca1df9959ec7d92016ba1a44d12ede7337f8b167a5b3b05e8c" [label=""];
  "sha256:14e837b052403eca1df9959ec7d92016ba1a44d12ede7337f8b167a5b3b05e8c" -> "sha256:737ba71c8e631ca6372ae8b4f67bd255d1cec12bce793f93779e0d54aa9bea51" [label=""];
  "sha256:737ba71c8e631ca6372ae8b4f67bd255d1cec12bce793f93779e0d54aa9bea51" -> "sha256:e2613f3fb7431a8066f0145452e0668762558213e55113219468a6c2bebc8c18" [label=""];
}

