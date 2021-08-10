[app/sources/342068288.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:f0355ca95c5969e8358a8d42e929536f9235f572c322f7f437a7a2f14068256f" [label="local://context" shape="ellipse"];
  "sha256:150d074c23af6a248c7b8ba5f9aef2b75c08c9073cdbd8194c5c2732377deb5d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3bea0fd24e56cf030167ac363224c77756ec18d0426496117f24114adb64a879" [label="pip install matplotlib" shape="box"];
  "sha256:4cb7bc43fbc9f46892987e94d321319c1ebdfecd27fa8a76240cc35b1808e8b4" [label="sha256:4cb7bc43fbc9f46892987e94d321319c1ebdfecd27fa8a76240cc35b1808e8b4" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:150d074c23af6a248c7b8ba5f9aef2b75c08c9073cdbd8194c5c2732377deb5d" [label=""];
  "sha256:f0355ca95c5969e8358a8d42e929536f9235f572c322f7f437a7a2f14068256f" -> "sha256:150d074c23af6a248c7b8ba5f9aef2b75c08c9073cdbd8194c5c2732377deb5d" [label=""];
  "sha256:150d074c23af6a248c7b8ba5f9aef2b75c08c9073cdbd8194c5c2732377deb5d" -> "sha256:3bea0fd24e56cf030167ac363224c77756ec18d0426496117f24114adb64a879" [label=""];
  "sha256:3bea0fd24e56cf030167ac363224c77756ec18d0426496117f24114adb64a879" -> "sha256:4cb7bc43fbc9f46892987e94d321319c1ebdfecd27fa8a76240cc35b1808e8b4" [label=""];
}
