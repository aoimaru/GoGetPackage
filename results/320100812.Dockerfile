[app/sources/320100812.Dockerfile]
digraph {
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" [label="docker-image://docker.io/library/ruby:2.3-alpine" shape="ellipse"];
  "sha256:a8c829c765d9c54b39d1ca864b6a7db4174b50dc1c385535e17ea6a0f07ec912" [label="/bin/sh -c apk add --no-cache openssh     && gem install --no-rdoc --no-ri capistrano     && rm -rf  $GEM_HOME/cache/*" shape="box"];
  "sha256:3444b3acc105b7b0e7fc5955f1cde74d31c2380cc464685dc603aa50604d05c6" [label="mkdir{path=/root}" shape="note"];
  "sha256:8347290c9145b3dc582baadd7dd5e13014d78264812ceb2927ef7bf31bfec3ab" [label="/bin/sh -c mkdir -p ${dir}/source" shape="box"];
  "sha256:130a3c78c0e2e840c0e2d7b0ab7b425a6c754df510e0d2555afa696e8eb536a3" [label="local://context" shape="ellipse"];
  "sha256:527e4a0a08ee282598e1398659026de4020ac95954ae8fff867c3d799b0ba9ec" [label="copy{src=/bin/cap, dest=/root/cap}" shape="note"];
  "sha256:0222e3f16fb11ac017fc89efaeddeeca0afbbe11c62e26e98436f4752da4baa5" [label="sha256:0222e3f16fb11ac017fc89efaeddeeca0afbbe11c62e26e98436f4752da4baa5" shape="plaintext"];
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" -> "sha256:a8c829c765d9c54b39d1ca864b6a7db4174b50dc1c385535e17ea6a0f07ec912" [label=""];
  "sha256:a8c829c765d9c54b39d1ca864b6a7db4174b50dc1c385535e17ea6a0f07ec912" -> "sha256:3444b3acc105b7b0e7fc5955f1cde74d31c2380cc464685dc603aa50604d05c6" [label=""];
  "sha256:3444b3acc105b7b0e7fc5955f1cde74d31c2380cc464685dc603aa50604d05c6" -> "sha256:8347290c9145b3dc582baadd7dd5e13014d78264812ceb2927ef7bf31bfec3ab" [label=""];
  "sha256:8347290c9145b3dc582baadd7dd5e13014d78264812ceb2927ef7bf31bfec3ab" -> "sha256:527e4a0a08ee282598e1398659026de4020ac95954ae8fff867c3d799b0ba9ec" [label=""];
  "sha256:130a3c78c0e2e840c0e2d7b0ab7b425a6c754df510e0d2555afa696e8eb536a3" -> "sha256:527e4a0a08ee282598e1398659026de4020ac95954ae8fff867c3d799b0ba9ec" [label=""];
  "sha256:527e4a0a08ee282598e1398659026de4020ac95954ae8fff867c3d799b0ba9ec" -> "sha256:0222e3f16fb11ac017fc89efaeddeeca0afbbe11c62e26e98436f4752da4baa5" [label=""];
}

