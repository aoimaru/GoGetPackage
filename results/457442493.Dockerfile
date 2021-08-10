[app/sources/457442493.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:0c0e0f3cbdac8716bcc0b9dc63e032cb8e6dd13f2dc849833a3974dc00f75893" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:3eebc62e430e2106803179320859a73477e895aa0415abda4d3f1b5ef74b4fdc" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c2b12cbb2fff49a748741a304cc2aa582d1fc63c9f24a1d1c89791db573b1406" [label="local://context" shape="ellipse"];
  "sha256:f85c13da88fef908f73735b1c01c14e0c9aace989f36157723b5f1016ce91b9e" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:637e4791fbbdad8d6106928e6eb357041f8b659cf93eb1f3dfd65454d8b37378" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:c3534d2a7c90b0e1de0a579b00078e36023de1f602005bc9fc6fd16d8a85f4dc" [label="sha256:c3534d2a7c90b0e1de0a579b00078e36023de1f602005bc9fc6fd16d8a85f4dc" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:0c0e0f3cbdac8716bcc0b9dc63e032cb8e6dd13f2dc849833a3974dc00f75893" [label=""];
  "sha256:0c0e0f3cbdac8716bcc0b9dc63e032cb8e6dd13f2dc849833a3974dc00f75893" -> "sha256:3eebc62e430e2106803179320859a73477e895aa0415abda4d3f1b5ef74b4fdc" [label=""];
  "sha256:3eebc62e430e2106803179320859a73477e895aa0415abda4d3f1b5ef74b4fdc" -> "sha256:f85c13da88fef908f73735b1c01c14e0c9aace989f36157723b5f1016ce91b9e" [label=""];
  "sha256:c2b12cbb2fff49a748741a304cc2aa582d1fc63c9f24a1d1c89791db573b1406" -> "sha256:f85c13da88fef908f73735b1c01c14e0c9aace989f36157723b5f1016ce91b9e" [label=""];
  "sha256:f85c13da88fef908f73735b1c01c14e0c9aace989f36157723b5f1016ce91b9e" -> "sha256:637e4791fbbdad8d6106928e6eb357041f8b659cf93eb1f3dfd65454d8b37378" [label=""];
  "sha256:637e4791fbbdad8d6106928e6eb357041f8b659cf93eb1f3dfd65454d8b37378" -> "sha256:c3534d2a7c90b0e1de0a579b00078e36023de1f602005bc9fc6fd16d8a85f4dc" [label=""];
}

