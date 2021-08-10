[app/sources/296370422.Dockerfile]
digraph {
  "sha256:c1282dab9219e1183042b8e62578048b567fde14eec1dd29171ff03fb7f61c19" [label="docker-image://docker.io/library/postgres:9.5.1" shape="ellipse"];
  "sha256:6a66ea3fb112f50a0b810d492462afe61bf4f88d129fa6c9cd82ee2474905928" [label="local://context" shape="ellipse"];
  "sha256:f79dcae9093ae5c37b072d2490785c20a78cdfd8cc413bef83f31da1b29e8876" [label="copy{src=/configs/*, dest=/configs/}" shape="note"];
  "sha256:17578c873d935b5863664076b27600974ba6a7c91b2f1d834c9f3a4309dfd246" [label="sha256:17578c873d935b5863664076b27600974ba6a7c91b2f1d834c9f3a4309dfd246" shape="plaintext"];
  "sha256:c1282dab9219e1183042b8e62578048b567fde14eec1dd29171ff03fb7f61c19" -> "sha256:f79dcae9093ae5c37b072d2490785c20a78cdfd8cc413bef83f31da1b29e8876" [label=""];
  "sha256:6a66ea3fb112f50a0b810d492462afe61bf4f88d129fa6c9cd82ee2474905928" -> "sha256:f79dcae9093ae5c37b072d2490785c20a78cdfd8cc413bef83f31da1b29e8876" [label=""];
  "sha256:f79dcae9093ae5c37b072d2490785c20a78cdfd8cc413bef83f31da1b29e8876" -> "sha256:17578c873d935b5863664076b27600974ba6a7c91b2f1d834c9f3a4309dfd246" [label=""];
}

