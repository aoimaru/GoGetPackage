[app/sources/252773801.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip" shape="box"];
  "sha256:f96346e9be440fa453fde19bbf3e947193b021a94013c899296763f9c0106c48" [label="local://context" shape="ellipse"];
  "sha256:475d97ed6d46a579ab51d0eace6221fae26c9a80dfa3621dda3813fd95184758" [label="copy{src=/webapp/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:0dbde8079a2623da8f8a68603457469e17505c8ea66d41eba77f68168e6ab158" [label="/bin/sh -c pip install -qr /tmp/requirements.txt" shape="box"];
  "sha256:4f19a2fa982201b29309367cafc488392fb058e4e3b58340c48b780d2e3144ae" [label="copy{src=/webapp, dest=/opt/webapp/}" shape="note"];
  "sha256:3393231b2ed7d7ef4d74a762538908fe76f166fd3b585aa99b24bc6ba72442ad" [label="mkdir{path=/opt/webapp}" shape="note"];
  "sha256:7f56335389c26267613108abf2379f862c83d342db0413d1527a3697ba38975a" [label="sha256:7f56335389c26267613108abf2379f862c83d342db0413d1527a3697ba38975a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" [label=""];
  "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" -> "sha256:475d97ed6d46a579ab51d0eace6221fae26c9a80dfa3621dda3813fd95184758" [label=""];
  "sha256:f96346e9be440fa453fde19bbf3e947193b021a94013c899296763f9c0106c48" -> "sha256:475d97ed6d46a579ab51d0eace6221fae26c9a80dfa3621dda3813fd95184758" [label=""];
  "sha256:475d97ed6d46a579ab51d0eace6221fae26c9a80dfa3621dda3813fd95184758" -> "sha256:0dbde8079a2623da8f8a68603457469e17505c8ea66d41eba77f68168e6ab158" [label=""];
  "sha256:0dbde8079a2623da8f8a68603457469e17505c8ea66d41eba77f68168e6ab158" -> "sha256:4f19a2fa982201b29309367cafc488392fb058e4e3b58340c48b780d2e3144ae" [label=""];
  "sha256:f96346e9be440fa453fde19bbf3e947193b021a94013c899296763f9c0106c48" -> "sha256:4f19a2fa982201b29309367cafc488392fb058e4e3b58340c48b780d2e3144ae" [label=""];
  "sha256:4f19a2fa982201b29309367cafc488392fb058e4e3b58340c48b780d2e3144ae" -> "sha256:3393231b2ed7d7ef4d74a762538908fe76f166fd3b585aa99b24bc6ba72442ad" [label=""];
  "sha256:3393231b2ed7d7ef4d74a762538908fe76f166fd3b585aa99b24bc6ba72442ad" -> "sha256:7f56335389c26267613108abf2379f862c83d342db0413d1527a3697ba38975a" [label=""];
}

