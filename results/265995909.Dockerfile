[app/sources/265995909.Dockerfile]
digraph {
  "sha256:492379fb19ffd14fa1682e05917687e3ffcaf0df539ccb5276604840fc10d204" [label="docker-image://docker.io/tensorflow/tensorflow:1.11.0" shape="ellipse"];
  "sha256:1f6bb643a73fdb6ea6a1ebc550d68cb920700d7c40904fea1eace3b9370aae2b" [label="local://context" shape="ellipse"];
  "sha256:53b44555b7c1d29a091c9dc9cc7ce1bc250da9ca1eb486eb3e0cd83e9ffce4e5" [label="copy{src=/, dest=/var/tf_mnist}" shape="note"];
  "sha256:9a1cfa12ed268baa889bf5b94603e40423a58305d6585f4fd8236fb671e99187" [label="sha256:9a1cfa12ed268baa889bf5b94603e40423a58305d6585f4fd8236fb671e99187" shape="plaintext"];
  "sha256:492379fb19ffd14fa1682e05917687e3ffcaf0df539ccb5276604840fc10d204" -> "sha256:53b44555b7c1d29a091c9dc9cc7ce1bc250da9ca1eb486eb3e0cd83e9ffce4e5" [label=""];
  "sha256:1f6bb643a73fdb6ea6a1ebc550d68cb920700d7c40904fea1eace3b9370aae2b" -> "sha256:53b44555b7c1d29a091c9dc9cc7ce1bc250da9ca1eb486eb3e0cd83e9ffce4e5" [label=""];
  "sha256:53b44555b7c1d29a091c9dc9cc7ce1bc250da9ca1eb486eb3e0cd83e9ffce4e5" -> "sha256:9a1cfa12ed268baa889bf5b94603e40423a58305d6585f4fd8236fb671e99187" [label=""];
}

