[app/sources/174192518.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:0c333efe4c29f6ef1f5c96d309627b2a6ab75d71bb78b4c6a7acc9baddf2fb5f" [label="/bin/sh -c apk add --no-cache libgcc" shape="box"];
  "sha256:e4323798c2a4a83abcba2d2027b7d3d56c691d8c3a8b92acd33cc35d12387411" [label="local://context" shape="ellipse"];
  "sha256:229effc28f742631cd2ab206b295b6b0c2fa59bba425d2ed6a8dd7a245acd8ee" [label="copy{src=/lit, dest=/usr/bin}" shape="note"];
  "sha256:6d866f5b693eb3ea339c14b1ab771b37a106d52a7a7a0c8db459f2089c02278d" [label="copy{src=/luvi, dest=/usr/bin}" shape="note"];
  "sha256:4358865dcbb309d0e8e64570facbb1b9301cd8277a1b24183e296abe3e0fb918" [label="sha256:4358865dcbb309d0e8e64570facbb1b9301cd8277a1b24183e296abe3e0fb918" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:0c333efe4c29f6ef1f5c96d309627b2a6ab75d71bb78b4c6a7acc9baddf2fb5f" [label=""];
  "sha256:0c333efe4c29f6ef1f5c96d309627b2a6ab75d71bb78b4c6a7acc9baddf2fb5f" -> "sha256:229effc28f742631cd2ab206b295b6b0c2fa59bba425d2ed6a8dd7a245acd8ee" [label=""];
  "sha256:e4323798c2a4a83abcba2d2027b7d3d56c691d8c3a8b92acd33cc35d12387411" -> "sha256:229effc28f742631cd2ab206b295b6b0c2fa59bba425d2ed6a8dd7a245acd8ee" [label=""];
  "sha256:229effc28f742631cd2ab206b295b6b0c2fa59bba425d2ed6a8dd7a245acd8ee" -> "sha256:6d866f5b693eb3ea339c14b1ab771b37a106d52a7a7a0c8db459f2089c02278d" [label=""];
  "sha256:e4323798c2a4a83abcba2d2027b7d3d56c691d8c3a8b92acd33cc35d12387411" -> "sha256:6d866f5b693eb3ea339c14b1ab771b37a106d52a7a7a0c8db459f2089c02278d" [label=""];
  "sha256:6d866f5b693eb3ea339c14b1ab771b37a106d52a7a7a0c8db459f2089c02278d" -> "sha256:4358865dcbb309d0e8e64570facbb1b9301cd8277a1b24183e296abe3e0fb918" [label=""];
}

