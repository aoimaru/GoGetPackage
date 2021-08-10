[app/sources/328731038.Dockerfile]
digraph {
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" [label="docker-image://docker.io/library/jetty:9-jre8" shape="ellipse"];
  "sha256:dd8e77fe236cae047eef199a1c9efc5b2d4a75d6ae853ccdcd07f5fd87283a59" [label="/bin/sh -c java -jar \"$JETTY_HOME/start.jar\" --create-startd --add-to-start=jmx,jmx-remote,stats,gzip,http-forwarded" shape="box"];
  "sha256:401024a96ccfbc2b0a060229d5f0799ce5ea15f921eae5e0173dbfd27e76ee7b" [label="local://context" shape="ellipse"];
  "sha256:015bcbc93c307aab9ad07bd14d538fc8596aae33300a43d298b0747ecaf7da0e" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:c55451c0b1603f065d0b54050bf4d4c8855195c5d5daf082fa0f79d7588efc55" [label="/bin/sh -c chown jetty:jetty /etc/georchestra" shape="box"];
  "sha256:feb3aad5a5f95872d461717476f8111d387b0232e1b3ff72807369e3b8b39347" [label="sha256:feb3aad5a5f95872d461717476f8111d387b0232e1b3ff72807369e3b8b39347" shape="plaintext"];
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" -> "sha256:dd8e77fe236cae047eef199a1c9efc5b2d4a75d6ae853ccdcd07f5fd87283a59" [label=""];
  "sha256:dd8e77fe236cae047eef199a1c9efc5b2d4a75d6ae853ccdcd07f5fd87283a59" -> "sha256:015bcbc93c307aab9ad07bd14d538fc8596aae33300a43d298b0747ecaf7da0e" [label=""];
  "sha256:401024a96ccfbc2b0a060229d5f0799ce5ea15f921eae5e0173dbfd27e76ee7b" -> "sha256:015bcbc93c307aab9ad07bd14d538fc8596aae33300a43d298b0747ecaf7da0e" [label=""];
  "sha256:015bcbc93c307aab9ad07bd14d538fc8596aae33300a43d298b0747ecaf7da0e" -> "sha256:c55451c0b1603f065d0b54050bf4d4c8855195c5d5daf082fa0f79d7588efc55" [label=""];
  "sha256:c55451c0b1603f065d0b54050bf4d4c8855195c5d5daf082fa0f79d7588efc55" -> "sha256:feb3aad5a5f95872d461717476f8111d387b0232e1b3ff72807369e3b8b39347" [label=""];
}

