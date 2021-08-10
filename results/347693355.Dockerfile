[app/sources/347693355.Dockerfile]
digraph {
  "sha256:1c4ca14f210febd60c24a83d98a57531a499661459390c519ded4f0618153a2d" [label="docker-image://docker.io/lucee/lucee52-nginx:latest" shape="ellipse"];
  "sha256:f253abd6132845900285858b7cd0be41074d3886189984edd106afa2a2a23ffa" [label="local://context" shape="ellipse"];
  "sha256:30e2c49355ecfedffc3691cc1a22b5f5d2cbaea36cef3711ff042b3f94264091" [label="copy{src=/config/nginx, dest=/etc/nginx/}" shape="note"];
  "sha256:cc13ee1ce5cad66ffc9441b96866b02c613c7c2658bdcc2d1f6b83c5cd776ba8" [label="copy{src=/config/lucee/lucee-server.xml, dest=/opt/lucee/server/lucee-server/context/lucee-server.xml}" shape="note"];
  "sha256:eb55daa7c746515abed1b747efe570a37702426ef2b7bc12445177a0ef5d03a8" [label="copy{src=/config/lucee/lucee-web.xml.cfm, dest=/opt/lucee/web/lucee-web.xml.cfm}" shape="note"];
  "sha256:4bc480daddb00fa12a2c350e05618999ce20c51d782812a43b5be4571a3ead64" [label="copy{src=/project, dest=/var/www}" shape="note"];
  "sha256:2d76e9d15d5a47e1516c65996f49be5c34871763aacab183ee5301a1499d250d" [label="sha256:2d76e9d15d5a47e1516c65996f49be5c34871763aacab183ee5301a1499d250d" shape="plaintext"];
  "sha256:1c4ca14f210febd60c24a83d98a57531a499661459390c519ded4f0618153a2d" -> "sha256:30e2c49355ecfedffc3691cc1a22b5f5d2cbaea36cef3711ff042b3f94264091" [label=""];
  "sha256:f253abd6132845900285858b7cd0be41074d3886189984edd106afa2a2a23ffa" -> "sha256:30e2c49355ecfedffc3691cc1a22b5f5d2cbaea36cef3711ff042b3f94264091" [label=""];
  "sha256:30e2c49355ecfedffc3691cc1a22b5f5d2cbaea36cef3711ff042b3f94264091" -> "sha256:cc13ee1ce5cad66ffc9441b96866b02c613c7c2658bdcc2d1f6b83c5cd776ba8" [label=""];
  "sha256:f253abd6132845900285858b7cd0be41074d3886189984edd106afa2a2a23ffa" -> "sha256:cc13ee1ce5cad66ffc9441b96866b02c613c7c2658bdcc2d1f6b83c5cd776ba8" [label=""];
  "sha256:cc13ee1ce5cad66ffc9441b96866b02c613c7c2658bdcc2d1f6b83c5cd776ba8" -> "sha256:eb55daa7c746515abed1b747efe570a37702426ef2b7bc12445177a0ef5d03a8" [label=""];
  "sha256:f253abd6132845900285858b7cd0be41074d3886189984edd106afa2a2a23ffa" -> "sha256:eb55daa7c746515abed1b747efe570a37702426ef2b7bc12445177a0ef5d03a8" [label=""];
  "sha256:eb55daa7c746515abed1b747efe570a37702426ef2b7bc12445177a0ef5d03a8" -> "sha256:4bc480daddb00fa12a2c350e05618999ce20c51d782812a43b5be4571a3ead64" [label=""];
  "sha256:f253abd6132845900285858b7cd0be41074d3886189984edd106afa2a2a23ffa" -> "sha256:4bc480daddb00fa12a2c350e05618999ce20c51d782812a43b5be4571a3ead64" [label=""];
  "sha256:4bc480daddb00fa12a2c350e05618999ce20c51d782812a43b5be4571a3ead64" -> "sha256:2d76e9d15d5a47e1516c65996f49be5c34871763aacab183ee5301a1499d250d" [label=""];
}

