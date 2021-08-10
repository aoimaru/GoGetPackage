[app/sources/195712103.Dockerfile]
digraph {
  "sha256:32771491133c7d9c9be9bd4a141557f08586ed2faa06b7c6c29fe3a02b1fb148" [label="docker-image://docker.io/library/rails:4.2.2" shape="ellipse"];
  "sha256:c06bd58b7f723d24a8fe2200d5aba90d1201ed01f756d0f7430aa15e2945aced" [label="mkdir{path=/portus}" shape="note"];
  "sha256:af291dbfa429dfa6090c3269f9fe261411ba2e0e00127913745ddc83f6ff6e4d" [label="/bin/sh -c echo \"deb http://download.opensuse.org/repositories/home:/flavio_castelli:/phantomjs/Debian_8.0/ ./\" >> /etc/apt/sources.list" shape="box"];
  "sha256:984e410e2d5cab1117ee9c939a3c85c14cc03e5c65cc8734dd50ad6546b6a8d4" [label="/bin/sh -c wget http://download.opensuse.org/repositories/home:/flavio_castelli:/phantomjs/Debian_8.0/Release.key &&   apt-key add Release.key &&   rm Release.key" shape="box"];
  "sha256:419e5a0770e58a89cfe68952791380b3e1e8829206185db53544c2593e70f35f" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends phantomjs &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:58cc99de45d9ce7ee4b660f6a9eaa76d53f7c522c897fee4002d4e7070fb2b3e" [label="local://context" shape="ellipse"];
  "sha256:96733c0cb8eb7e216ced7fa87fedc39d89d223ba613d43514d12e44a8b4d6cb2" [label="copy{src=/, dest=/portus/}" shape="note"];
  "sha256:d121cd39cde19ba3317a48ebe9714dd635a72510b99822a90e003a4780c73a8f" [label="/bin/sh -c apt-get update && apt-get install -y telnet ldap-utils" shape="box"];
  "sha256:4e4732473d0018dc25cd16e3c59103f3962575eae40abf81febf7844d330994b" [label="copy{src=/Gemfile*, dest=/portus/}" shape="note"];
  "sha256:59a7bbf66475cea03e2a430b3ef4102412a7bb549608786b53876e9193541056" [label="/bin/sh -c bundle install --retry=3" shape="box"];
  "sha256:b343f34a981599e1693b3005510ced4b1f427055038e2fed2e68e692ba55679e" [label="/bin/sh -c mkdir -p /etc/nginx/conf.d" shape="box"];
  "sha256:e942fd68a2993ac441b930005818e53e8a95f150d3ba136c2a69015f64f0da9e" [label="sha256:e942fd68a2993ac441b930005818e53e8a95f150d3ba136c2a69015f64f0da9e" shape="plaintext"];
  "sha256:32771491133c7d9c9be9bd4a141557f08586ed2faa06b7c6c29fe3a02b1fb148" -> "sha256:c06bd58b7f723d24a8fe2200d5aba90d1201ed01f756d0f7430aa15e2945aced" [label=""];
  "sha256:c06bd58b7f723d24a8fe2200d5aba90d1201ed01f756d0f7430aa15e2945aced" -> "sha256:af291dbfa429dfa6090c3269f9fe261411ba2e0e00127913745ddc83f6ff6e4d" [label=""];
  "sha256:af291dbfa429dfa6090c3269f9fe261411ba2e0e00127913745ddc83f6ff6e4d" -> "sha256:984e410e2d5cab1117ee9c939a3c85c14cc03e5c65cc8734dd50ad6546b6a8d4" [label=""];
  "sha256:984e410e2d5cab1117ee9c939a3c85c14cc03e5c65cc8734dd50ad6546b6a8d4" -> "sha256:419e5a0770e58a89cfe68952791380b3e1e8829206185db53544c2593e70f35f" [label=""];
  "sha256:419e5a0770e58a89cfe68952791380b3e1e8829206185db53544c2593e70f35f" -> "sha256:96733c0cb8eb7e216ced7fa87fedc39d89d223ba613d43514d12e44a8b4d6cb2" [label=""];
  "sha256:58cc99de45d9ce7ee4b660f6a9eaa76d53f7c522c897fee4002d4e7070fb2b3e" -> "sha256:96733c0cb8eb7e216ced7fa87fedc39d89d223ba613d43514d12e44a8b4d6cb2" [label=""];
  "sha256:96733c0cb8eb7e216ced7fa87fedc39d89d223ba613d43514d12e44a8b4d6cb2" -> "sha256:d121cd39cde19ba3317a48ebe9714dd635a72510b99822a90e003a4780c73a8f" [label=""];
  "sha256:d121cd39cde19ba3317a48ebe9714dd635a72510b99822a90e003a4780c73a8f" -> "sha256:4e4732473d0018dc25cd16e3c59103f3962575eae40abf81febf7844d330994b" [label=""];
  "sha256:58cc99de45d9ce7ee4b660f6a9eaa76d53f7c522c897fee4002d4e7070fb2b3e" -> "sha256:4e4732473d0018dc25cd16e3c59103f3962575eae40abf81febf7844d330994b" [label=""];
  "sha256:4e4732473d0018dc25cd16e3c59103f3962575eae40abf81febf7844d330994b" -> "sha256:59a7bbf66475cea03e2a430b3ef4102412a7bb549608786b53876e9193541056" [label=""];
  "sha256:59a7bbf66475cea03e2a430b3ef4102412a7bb549608786b53876e9193541056" -> "sha256:b343f34a981599e1693b3005510ced4b1f427055038e2fed2e68e692ba55679e" [label=""];
  "sha256:b343f34a981599e1693b3005510ced4b1f427055038e2fed2e68e692ba55679e" -> "sha256:e942fd68a2993ac441b930005818e53e8a95f150d3ba136c2a69015f64f0da9e" [label=""];
}

