[app/sources/154279827.Dockerfile]
digraph {
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" [label="docker-image://docker.io/library/ruby:2.4" shape="ellipse"];
  "sha256:dd365e3c89e20dbb92ff1eaf6ad7492eb5afd0d0ba0705dc7c953cf0800a478f" [label="/bin/sh -c apt update &&   apt install -y     sudo     xvfb     gstreamer1.0-plugins-good     gnumeric     gnome-icon-theme     dbus-x11" shape="box"];
  "sha256:92aecf3c085fff804e22e63cd9ec00c9de3188018126d215349fe2c4f491dbc6" [label="/bin/sh -c useradd --user-group --create-home ruby-gnome2" shape="box"];
  "sha256:072a9fade5413abf2f693cf69d5c8c6e12150e1e2dfd844e5522153fb3f4f984" [label="/bin/sh -c echo \"ruby-gnome2 ALL=(ALL:ALL) NOPASSWD:ALL\" |     EDITOR=tee visudo -f /etc/sudoers.d/ruby-gnome2" shape="box"];
  "sha256:3d4af645be664d60b0e4635a7d4eb42cf8181848623df735907b8feffcb40945" [label="local://context" shape="ellipse"];
  "sha256:20983d98fa4fdab3abb3de3b203f36a2cd6c0a1e55fa48dc2cece4be62d7e237" [label="copy{src=/, dest=/home/ruby-gnome2/ruby-gnome2}" shape="note"];
  "sha256:d9cce6270634c909fd2225163ce2ec76ef3f7166062bf1557d6190dc311b6812" [label="/bin/sh -c chown -R ruby-gnome2:ruby-gnome2 /home/ruby-gnome2/ruby-gnome2" shape="box"];
  "sha256:032050cda9bbdc2b169342f7b240d361783f116bad2a49740c5018dbad8daa36" [label="mkdir{path=/home/ruby-gnome2/ruby-gnome2}" shape="note"];
  "sha256:1213492333b5fd144048723cb7f26a44c02811041dc30a94df48acb43bd09e71" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:29807f58e25dd57b4f9433e72cdee89089ba73e72def587048e8a6106acab0a2" [label="sha256:29807f58e25dd57b4f9433e72cdee89089ba73e72def587048e8a6106acab0a2" shape="plaintext"];
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" -> "sha256:dd365e3c89e20dbb92ff1eaf6ad7492eb5afd0d0ba0705dc7c953cf0800a478f" [label=""];
  "sha256:dd365e3c89e20dbb92ff1eaf6ad7492eb5afd0d0ba0705dc7c953cf0800a478f" -> "sha256:92aecf3c085fff804e22e63cd9ec00c9de3188018126d215349fe2c4f491dbc6" [label=""];
  "sha256:92aecf3c085fff804e22e63cd9ec00c9de3188018126d215349fe2c4f491dbc6" -> "sha256:072a9fade5413abf2f693cf69d5c8c6e12150e1e2dfd844e5522153fb3f4f984" [label=""];
  "sha256:072a9fade5413abf2f693cf69d5c8c6e12150e1e2dfd844e5522153fb3f4f984" -> "sha256:20983d98fa4fdab3abb3de3b203f36a2cd6c0a1e55fa48dc2cece4be62d7e237" [label=""];
  "sha256:3d4af645be664d60b0e4635a7d4eb42cf8181848623df735907b8feffcb40945" -> "sha256:20983d98fa4fdab3abb3de3b203f36a2cd6c0a1e55fa48dc2cece4be62d7e237" [label=""];
  "sha256:20983d98fa4fdab3abb3de3b203f36a2cd6c0a1e55fa48dc2cece4be62d7e237" -> "sha256:d9cce6270634c909fd2225163ce2ec76ef3f7166062bf1557d6190dc311b6812" [label=""];
  "sha256:d9cce6270634c909fd2225163ce2ec76ef3f7166062bf1557d6190dc311b6812" -> "sha256:032050cda9bbdc2b169342f7b240d361783f116bad2a49740c5018dbad8daa36" [label=""];
  "sha256:032050cda9bbdc2b169342f7b240d361783f116bad2a49740c5018dbad8daa36" -> "sha256:1213492333b5fd144048723cb7f26a44c02811041dc30a94df48acb43bd09e71" [label=""];
  "sha256:1213492333b5fd144048723cb7f26a44c02811041dc30a94df48acb43bd09e71" -> "sha256:29807f58e25dd57b4f9433e72cdee89089ba73e72def587048e8a6106acab0a2" [label=""];
}

