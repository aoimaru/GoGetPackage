[app/sources/363799884.Dockerfile]
digraph {
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" [label="local://context" shape="ellipse"];
  "sha256:c2e1c5bb062d2348855f17157b743381529ff142fd4ba2ca9d240872560f0cbd" [label="docker-image://docker.io/library/nginx:1.13.8-alpine" shape="ellipse"];
  "sha256:93a08c47a619c7862520c092a593b367da0dff0a619c9712ef39bb6062a3a374" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:3809028f58f4ab5916bb7ce21107ebbe3b8d8816854e0036906f1a60f985d61f" [label="copy{src=/favicon.ico, dest=/usr/share/nginx/html/favicon.ico}" shape="note"];
  "sha256:1487dbb42d910886709b540509e1e36179f22e2489cca8830cb56dca051f4242" [label="copy{src=/dist/*, dest=/usr/share/nginx/html/assets/}" shape="note"];
  "sha256:b140a62b0232309882b9ef357188b24deca3509b8d39ec09f27ef37c2478e916" [label="copy{src=/dist/index.html, dest=/usr/share/nginx/html/index.html}" shape="note"];
  "sha256:c1c1a2d2dc4a486490b4cca6e814cddb3d863d27e8aea2c019e4f8642a81758e" [label="copy{src=/dist/index-pub.html, dest=/usr/share/nginx/html/index-pub.html}" shape="note"];
  "sha256:d6b3bdbe9f05fa9a97fb43e00669841b79a2f193b6bdf066baa0e1ddb9511c9a" [label="sha256:d6b3bdbe9f05fa9a97fb43e00669841b79a2f193b6bdf066baa0e1ddb9511c9a" shape="plaintext"];
  "sha256:c2e1c5bb062d2348855f17157b743381529ff142fd4ba2ca9d240872560f0cbd" -> "sha256:93a08c47a619c7862520c092a593b367da0dff0a619c9712ef39bb6062a3a374" [label=""];
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" -> "sha256:93a08c47a619c7862520c092a593b367da0dff0a619c9712ef39bb6062a3a374" [label=""];
  "sha256:93a08c47a619c7862520c092a593b367da0dff0a619c9712ef39bb6062a3a374" -> "sha256:3809028f58f4ab5916bb7ce21107ebbe3b8d8816854e0036906f1a60f985d61f" [label=""];
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" -> "sha256:3809028f58f4ab5916bb7ce21107ebbe3b8d8816854e0036906f1a60f985d61f" [label=""];
  "sha256:3809028f58f4ab5916bb7ce21107ebbe3b8d8816854e0036906f1a60f985d61f" -> "sha256:1487dbb42d910886709b540509e1e36179f22e2489cca8830cb56dca051f4242" [label=""];
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" -> "sha256:1487dbb42d910886709b540509e1e36179f22e2489cca8830cb56dca051f4242" [label=""];
  "sha256:1487dbb42d910886709b540509e1e36179f22e2489cca8830cb56dca051f4242" -> "sha256:b140a62b0232309882b9ef357188b24deca3509b8d39ec09f27ef37c2478e916" [label=""];
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" -> "sha256:b140a62b0232309882b9ef357188b24deca3509b8d39ec09f27ef37c2478e916" [label=""];
  "sha256:b140a62b0232309882b9ef357188b24deca3509b8d39ec09f27ef37c2478e916" -> "sha256:c1c1a2d2dc4a486490b4cca6e814cddb3d863d27e8aea2c019e4f8642a81758e" [label=""];
  "sha256:7d29ae079a926d29677c31f4352521f9712256ff718b62d623e52c064c30a524" -> "sha256:c1c1a2d2dc4a486490b4cca6e814cddb3d863d27e8aea2c019e4f8642a81758e" [label=""];
  "sha256:c1c1a2d2dc4a486490b4cca6e814cddb3d863d27e8aea2c019e4f8642a81758e" -> "sha256:d6b3bdbe9f05fa9a97fb43e00669841b79a2f193b6bdf066baa0e1ddb9511c9a" [label=""];
}
