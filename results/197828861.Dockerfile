[app/sources/197828861.Dockerfile]
digraph {
  "sha256:31202d8dc7c0abce2b9f8426c24cef1f6c5e25cd84fa9d7a43c41403faf6c587" [label="docker-image://docker.io/library/nginx:1.11.1" shape="ellipse"];
  "sha256:eb56024c2aa97873b2119b6f06dea848f838459c870bb01c50173ae861fc1024" [label="local://context" shape="ellipse"];
  "sha256:fd67526932f99b6a03b08458851e1484b1efe822aede78676965acd92da6e1f9" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:391b54757f161feef06ff7752816f06d795edea0b18c272c33006bb4ee243dcb" [label="copy{src=/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:89b0e24efdba6730ab928b1a615e6a719862415f658e2b0d28c0e0a2207367cf" [label="sha256:89b0e24efdba6730ab928b1a615e6a719862415f658e2b0d28c0e0a2207367cf" shape="plaintext"];
  "sha256:31202d8dc7c0abce2b9f8426c24cef1f6c5e25cd84fa9d7a43c41403faf6c587" -> "sha256:fd67526932f99b6a03b08458851e1484b1efe822aede78676965acd92da6e1f9" [label=""];
  "sha256:eb56024c2aa97873b2119b6f06dea848f838459c870bb01c50173ae861fc1024" -> "sha256:fd67526932f99b6a03b08458851e1484b1efe822aede78676965acd92da6e1f9" [label=""];
  "sha256:fd67526932f99b6a03b08458851e1484b1efe822aede78676965acd92da6e1f9" -> "sha256:391b54757f161feef06ff7752816f06d795edea0b18c272c33006bb4ee243dcb" [label=""];
  "sha256:eb56024c2aa97873b2119b6f06dea848f838459c870bb01c50173ae861fc1024" -> "sha256:391b54757f161feef06ff7752816f06d795edea0b18c272c33006bb4ee243dcb" [label=""];
  "sha256:391b54757f161feef06ff7752816f06d795edea0b18c272c33006bb4ee243dcb" -> "sha256:89b0e24efdba6730ab928b1a615e6a719862415f658e2b0d28c0e0a2207367cf" [label=""];
}

