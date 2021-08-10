[app/sources/252801642.Dockerfile]
digraph {
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" [label="docker-image://docker.io/library/nginx:1.13-alpine" shape="ellipse"];
  "sha256:1ab7e0f3474971831e1d48fcc2005ef3412aed0b30585544c82feed33bdc5ed2" [label="/bin/sh -c apk add --update python py-pip py-yaml && pip install --upgrade pip && pip install jinja2 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:bb4d1232198bd5fa1f00bfae480f718b4a09427bdca440573fc91bb171b442e1" [label="local://context" shape="ellipse"];
  "sha256:48f19caee3194b933df77095c6f9d3c7376beb7a7fce027a970b3561db0cd934" [label="copy{src=/, dest=/opt/roxy}" shape="note"];
  "sha256:823c583a42a559da78b0fc0ddb3547dbc041c7ac3d3b0dbc4e6a51ce82a5528b" [label="copy{src=/web, dest=/var/www}" shape="note"];
  "sha256:a55a3f14ac10a6cb21336f0afdc781ad4343914ea9f973a9c780ae4ddfe126fb" [label="/bin/sh -c chmod +x /opt/roxy/bin/* && rm -rf /etc/nginx/conf.d/*" shape="box"];
  "sha256:97393c925920f02473513b1374c850932692a28b5253333c2792b79dccdbda3e" [label="sha256:97393c925920f02473513b1374c850932692a28b5253333c2792b79dccdbda3e" shape="plaintext"];
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" -> "sha256:1ab7e0f3474971831e1d48fcc2005ef3412aed0b30585544c82feed33bdc5ed2" [label=""];
  "sha256:1ab7e0f3474971831e1d48fcc2005ef3412aed0b30585544c82feed33bdc5ed2" -> "sha256:48f19caee3194b933df77095c6f9d3c7376beb7a7fce027a970b3561db0cd934" [label=""];
  "sha256:bb4d1232198bd5fa1f00bfae480f718b4a09427bdca440573fc91bb171b442e1" -> "sha256:48f19caee3194b933df77095c6f9d3c7376beb7a7fce027a970b3561db0cd934" [label=""];
  "sha256:48f19caee3194b933df77095c6f9d3c7376beb7a7fce027a970b3561db0cd934" -> "sha256:823c583a42a559da78b0fc0ddb3547dbc041c7ac3d3b0dbc4e6a51ce82a5528b" [label=""];
  "sha256:bb4d1232198bd5fa1f00bfae480f718b4a09427bdca440573fc91bb171b442e1" -> "sha256:823c583a42a559da78b0fc0ddb3547dbc041c7ac3d3b0dbc4e6a51ce82a5528b" [label=""];
  "sha256:823c583a42a559da78b0fc0ddb3547dbc041c7ac3d3b0dbc4e6a51ce82a5528b" -> "sha256:a55a3f14ac10a6cb21336f0afdc781ad4343914ea9f973a9c780ae4ddfe126fb" [label=""];
  "sha256:a55a3f14ac10a6cb21336f0afdc781ad4343914ea9f973a9c780ae4ddfe126fb" -> "sha256:97393c925920f02473513b1374c850932692a28b5253333c2792b79dccdbda3e" [label=""];
}

