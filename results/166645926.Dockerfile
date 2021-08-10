[app/sources/166645926.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label="mkdir{path=/root}" shape="note"];
  "sha256:466e13bce4bbfa4f14cad6ee06be0504b7723d26f9bc9194649eb3e020abd275" [label="/bin/sh -c apt-get update && \tapt-get install -y build-essential software-properties-common m4 wget python2.7 python-dev python-pip unzip libffi-dev && \tpip2 install cffi cryptography" shape="box"];
  "sha256:d28e09c0dbb1a77928fa4ae226202cbed8981064877dde5290b944c72c123a1a" [label="/bin/sh -c wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.bz2 && \ttar -xvjf gmp-6.1.2.tar.bz2 && cd gmp-6.1.2 && \t./configure --enable-cxx && make && make install && \tcd /root && rm -rf gmp-*" shape="box"];
  "sha256:5fb59496da8285310dd8b40394511b7a09f721521532b862e379876c05c8fc26" [label="/bin/sh -c wget https://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/pycrypto-2.6.1.tar.gz && \ttar zxvf pycrypto-2.6.1.tar.gz && cd pycrypto-2.6.1 && \tpython2.7 setup.py build && python2.7 setup.py install && \tcd /root && rm -rf pycrypto-*" shape="box"];
  "sha256:e98284f8b0bef86fe464a720d78bfeb781772a6877a0f8762b9056d6844577ca" [label="/bin/sh -c wget -O regex2dfa.zip https://github.com/kpdyer/regex2dfa/archive/master.zip && \tunzip regex2dfa.zip && cd regex2dfa-master && \t./configure && make && python2.7 setup.py install && \tcd /root && rm -rf regex2dfa*" shape="box"];
  "sha256:c2f569a4e17e7ce5f2415cd6bd6bbe6099f41b3f3e77f380f5cff4f7f836b2d3" [label="/bin/sh -c wget -O libfte.zip https://github.com/kpdyer/libfte/archive/master.zip && \tunzip libfte.zip && cd libfte-master && \tpython2.7 setup.py install && \tcd /root && rm -rf libfte*" shape="box"];
  "sha256:0dc24180be298c6548c25f7229e032d8941bf96ad88e3662a970b19e7a8754de" [label="local://context" shape="ellipse"];
  "sha256:11adc08997206fd57a0a7c317f3aa3d4b1af7062ddc103a4a826976194ac73f6" [label="docker-image://docker.io/library/golang:1.9.4" shape="ellipse"];
  "sha256:d5b3d9d4bcb4bcb9580222e6da18a2d390fb1ed7ab5c34f8d26e2f349a586327" [label="copy{src=/, dest=/go/src/github.com/redjack/marionette/}" shape="note"];
  "sha256:12c8dbbc17686b1e68869897da44bff175bacedfcb936507d09a63791df62e6b" [label="mkdir{path=/go/src/github.com/redjack/marionette}" shape="note"];
  "sha256:276901d53b4e2ddd5ae9046fb658aa4a662e3de228961a928826bfa41ac8fd71" [label="/bin/sh -c GOOS=linux GOARCH=amd64 go build -a -o marionette ./cmd/marionette" shape="box"];
  "sha256:a1dcaf0232f66eda8eaac2dc5e02b4f004efcfff26c82b9a450cfb3052c2ef2b" [label="copy{src=/go/src/github.com/redjack/marionette/marionette, dest=/root/}" shape="note"];
  "sha256:34155d0d50d62143d1d03ee0e194d8123209d857ecf0b1d0b4fb891519d266f5" [label="sha256:34155d0d50d62143d1d03ee0e194d8123209d857ecf0b1d0b4fb891519d266f5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label=""];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" -> "sha256:466e13bce4bbfa4f14cad6ee06be0504b7723d26f9bc9194649eb3e020abd275" [label=""];
  "sha256:466e13bce4bbfa4f14cad6ee06be0504b7723d26f9bc9194649eb3e020abd275" -> "sha256:d28e09c0dbb1a77928fa4ae226202cbed8981064877dde5290b944c72c123a1a" [label=""];
  "sha256:d28e09c0dbb1a77928fa4ae226202cbed8981064877dde5290b944c72c123a1a" -> "sha256:5fb59496da8285310dd8b40394511b7a09f721521532b862e379876c05c8fc26" [label=""];
  "sha256:5fb59496da8285310dd8b40394511b7a09f721521532b862e379876c05c8fc26" -> "sha256:e98284f8b0bef86fe464a720d78bfeb781772a6877a0f8762b9056d6844577ca" [label=""];
  "sha256:e98284f8b0bef86fe464a720d78bfeb781772a6877a0f8762b9056d6844577ca" -> "sha256:c2f569a4e17e7ce5f2415cd6bd6bbe6099f41b3f3e77f380f5cff4f7f836b2d3" [label=""];
  "sha256:11adc08997206fd57a0a7c317f3aa3d4b1af7062ddc103a4a826976194ac73f6" -> "sha256:d5b3d9d4bcb4bcb9580222e6da18a2d390fb1ed7ab5c34f8d26e2f349a586327" [label=""];
  "sha256:0dc24180be298c6548c25f7229e032d8941bf96ad88e3662a970b19e7a8754de" -> "sha256:d5b3d9d4bcb4bcb9580222e6da18a2d390fb1ed7ab5c34f8d26e2f349a586327" [label=""];
  "sha256:d5b3d9d4bcb4bcb9580222e6da18a2d390fb1ed7ab5c34f8d26e2f349a586327" -> "sha256:12c8dbbc17686b1e68869897da44bff175bacedfcb936507d09a63791df62e6b" [label=""];
  "sha256:12c8dbbc17686b1e68869897da44bff175bacedfcb936507d09a63791df62e6b" -> "sha256:276901d53b4e2ddd5ae9046fb658aa4a662e3de228961a928826bfa41ac8fd71" [label=""];
  "sha256:c2f569a4e17e7ce5f2415cd6bd6bbe6099f41b3f3e77f380f5cff4f7f836b2d3" -> "sha256:a1dcaf0232f66eda8eaac2dc5e02b4f004efcfff26c82b9a450cfb3052c2ef2b" [label=""];
  "sha256:276901d53b4e2ddd5ae9046fb658aa4a662e3de228961a928826bfa41ac8fd71" -> "sha256:a1dcaf0232f66eda8eaac2dc5e02b4f004efcfff26c82b9a450cfb3052c2ef2b" [label=""];
  "sha256:a1dcaf0232f66eda8eaac2dc5e02b4f004efcfff26c82b9a450cfb3052c2ef2b" -> "sha256:34155d0d50d62143d1d03ee0e194d8123209d857ecf0b1d0b4fb891519d266f5" [label=""];
}

