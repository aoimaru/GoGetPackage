[app/sources/232015967.Dockerfile]
digraph {
  "sha256:7ac817d9d4b1113920791d34e89d0b4ed4994f415ed316e665c2bb71cc7f9462" [label="local://context" shape="ellipse"];
  "sha256:53e8bc58e8447a02beb679970a6b622a664ff5bb6a843b6aa92d0fa0abb758b2" [label="copy{src=/etcd-version-monitor, dest=/etcd-version-monitor}" shape="note"];
  "sha256:6507240bce19eae060d06003f83819932658664bbe2e5d62ed9d4297d68e4098" [label="sha256:6507240bce19eae060d06003f83819932658664bbe2e5d62ed9d4297d68e4098" shape="plaintext"];
  "sha256:7ac817d9d4b1113920791d34e89d0b4ed4994f415ed316e665c2bb71cc7f9462" -> "sha256:53e8bc58e8447a02beb679970a6b622a664ff5bb6a843b6aa92d0fa0abb758b2" [label=""];
  "sha256:53e8bc58e8447a02beb679970a6b622a664ff5bb6a843b6aa92d0fa0abb758b2" -> "sha256:6507240bce19eae060d06003f83819932658664bbe2e5d62ed9d4297d68e4098" [label=""];
}

