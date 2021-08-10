[app/sources/282579806.Dockerfile]
digraph {
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" [label="docker-image://docker.io/envoyproxy/envoy:latest" shape="ellipse"];
  "sha256:40bf8cba20ab265295e4262d41a0e9defbdad3b9aca6147de944ba457b6d7e0c" [label="/bin/sh -c apt-get update && apt-get install -y curl tree" shape="box"];
  "sha256:cc58d73e99fbd9c88c031763039cddd8f9aa477e805713c595ab6bec7e0fe822" [label="local://context" shape="ellipse"];
  "sha256:3d2b34a044a554e67f20590b3c7f17679e96cc2b7fc24dc027e800e6b76b4c57" [label="copy{src=/enable_delay_fault_injection.sh, dest=/},copy{src=/disable_delay_fault_injection.sh, dest=/},copy{src=/enable_abort_fault_injection.sh, dest=/},copy{src=/disable_abort_fault_injection.sh, dest=/},copy{src=/send_request.sh, dest=/}" shape="note"];
  "sha256:e297822247e82b6939f44a8f4c6ae3f8809a7ac42fb8b57d9924091d77857422" [label="sha256:e297822247e82b6939f44a8f4c6ae3f8809a7ac42fb8b57d9924091d77857422" shape="plaintext"];
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" -> "sha256:40bf8cba20ab265295e4262d41a0e9defbdad3b9aca6147de944ba457b6d7e0c" [label=""];
  "sha256:40bf8cba20ab265295e4262d41a0e9defbdad3b9aca6147de944ba457b6d7e0c" -> "sha256:3d2b34a044a554e67f20590b3c7f17679e96cc2b7fc24dc027e800e6b76b4c57" [label=""];
  "sha256:cc58d73e99fbd9c88c031763039cddd8f9aa477e805713c595ab6bec7e0fe822" -> "sha256:3d2b34a044a554e67f20590b3c7f17679e96cc2b7fc24dc027e800e6b76b4c57" [label=""];
  "sha256:3d2b34a044a554e67f20590b3c7f17679e96cc2b7fc24dc027e800e6b76b4c57" -> "sha256:e297822247e82b6939f44a8f4c6ae3f8809a7ac42fb8b57d9924091d77857422" [label=""];
}

