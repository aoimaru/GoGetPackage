[app/sources/218375605.Dockerfile]
digraph {
  "sha256:ec453419f9ca1d11dfa356bbb163147a194ee82840c89938d321f81d03387847" [label="docker-image://docker.io/appcelerator/grafana:grafana-5.0.4" shape="ellipse"];
  "sha256:70b647d33bbbdc6548a7d76d6bbc619dfbe26e5c72b2ef13a9f78fb3d3514123" [label="local://context" shape="ellipse"];
  "sha256:a466e8f6b50c0b2a3132b06e07cf9bd4674a96712eaab32a48afa66df4a7c5f0" [label="copy{src=/config, dest=/etc/extra-config/grafana}" shape="note"];
  "sha256:b229c3faf212a527d8496dc070a2104c8c6a89103c37732c0b81cea8ad969fb4" [label="sha256:b229c3faf212a527d8496dc070a2104c8c6a89103c37732c0b81cea8ad969fb4" shape="plaintext"];
  "sha256:ec453419f9ca1d11dfa356bbb163147a194ee82840c89938d321f81d03387847" -> "sha256:a466e8f6b50c0b2a3132b06e07cf9bd4674a96712eaab32a48afa66df4a7c5f0" [label=""];
  "sha256:70b647d33bbbdc6548a7d76d6bbc619dfbe26e5c72b2ef13a9f78fb3d3514123" -> "sha256:a466e8f6b50c0b2a3132b06e07cf9bd4674a96712eaab32a48afa66df4a7c5f0" [label=""];
  "sha256:a466e8f6b50c0b2a3132b06e07cf9bd4674a96712eaab32a48afa66df4a7c5f0" -> "sha256:b229c3faf212a527d8496dc070a2104c8c6a89103c37732c0b81cea8ad969fb4" [label=""];
}

