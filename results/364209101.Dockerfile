[app/sources/364209101.Dockerfile]
digraph {
  "sha256:132ad4cb72a9f1c570814de2a0439201dbc371d234c15fb00cd56e50a3e6243b" [label="local://context" shape="ellipse"];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" [label="docker-image://docker.io/library/nginx:1.15" shape="ellipse"];
  "sha256:bee14874050681fcdfa4a6ec4d0817cbfc182ab9d2eb855b455c609531e09baf" [label="copy{src=/htdocs, dest=/var/lib/data/demo/htdocs}" shape="note"];
  "sha256:9fd61448117240c48f66e2a85be4dc0e88ba7e458d10b2f182754a6a22faa56c" [label="copy{src=/init, dest=/init}" shape="note"];
  "sha256:af84c463b3493847deef126a98489318f7e9c023dc234e017920d104b9bb21c2" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:c6aff70d896240911d3bab1be603111ab42e4dd49e47ad3d595a58b3abb37486" [label="sha256:c6aff70d896240911d3bab1be603111ab42e4dd49e47ad3d595a58b3abb37486" shape="plaintext"];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" -> "sha256:bee14874050681fcdfa4a6ec4d0817cbfc182ab9d2eb855b455c609531e09baf" [label=""];
  "sha256:132ad4cb72a9f1c570814de2a0439201dbc371d234c15fb00cd56e50a3e6243b" -> "sha256:bee14874050681fcdfa4a6ec4d0817cbfc182ab9d2eb855b455c609531e09baf" [label=""];
  "sha256:bee14874050681fcdfa4a6ec4d0817cbfc182ab9d2eb855b455c609531e09baf" -> "sha256:9fd61448117240c48f66e2a85be4dc0e88ba7e458d10b2f182754a6a22faa56c" [label=""];
  "sha256:132ad4cb72a9f1c570814de2a0439201dbc371d234c15fb00cd56e50a3e6243b" -> "sha256:9fd61448117240c48f66e2a85be4dc0e88ba7e458d10b2f182754a6a22faa56c" [label=""];
  "sha256:9fd61448117240c48f66e2a85be4dc0e88ba7e458d10b2f182754a6a22faa56c" -> "sha256:af84c463b3493847deef126a98489318f7e9c023dc234e017920d104b9bb21c2" [label=""];
  "sha256:132ad4cb72a9f1c570814de2a0439201dbc371d234c15fb00cd56e50a3e6243b" -> "sha256:af84c463b3493847deef126a98489318f7e9c023dc234e017920d104b9bb21c2" [label=""];
  "sha256:af84c463b3493847deef126a98489318f7e9c023dc234e017920d104b9bb21c2" -> "sha256:c6aff70d896240911d3bab1be603111ab42e4dd49e47ad3d595a58b3abb37486" [label=""];
}

