[app/sources/196381088.Dockerfile]
digraph {
  "sha256:7542ca43d8bd86416f8efdc5f9931985a08e2a817eaf7872a520fb1aa2cc75fa" [label="local://context" shape="ellipse"];
  "sha256:97ef1586ed3cca928e0d1f57da5602ee8f84d66807ab7b60a2f7c57f9934f3bb" [label="copy{src=/webserver, dest=/webserver}" shape="note"];
  "sha256:798cfe60bbd149dc0991ab9e1d37eec86ce63c3148571ec32e80ebc99d09cef2" [label="sha256:798cfe60bbd149dc0991ab9e1d37eec86ce63c3148571ec32e80ebc99d09cef2" shape="plaintext"];
  "sha256:7542ca43d8bd86416f8efdc5f9931985a08e2a817eaf7872a520fb1aa2cc75fa" -> "sha256:97ef1586ed3cca928e0d1f57da5602ee8f84d66807ab7b60a2f7c57f9934f3bb" [label=""];
  "sha256:97ef1586ed3cca928e0d1f57da5602ee8f84d66807ab7b60a2f7c57f9934f3bb" -> "sha256:798cfe60bbd149dc0991ab9e1d37eec86ce63c3148571ec32e80ebc99d09cef2" [label=""];
}

