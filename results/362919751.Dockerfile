[app/sources/362919751.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:89f75664ba7214ebb4f7591ebbc2a937ef25d26d5564b51a5a276e1800e25727" [label="/bin/sh -c apt-get update -y && apt-get install -y               autoconf               bison               build-essential               curl               git               libffi-dev               libgdbm3               libgdbm-dev               libncurses5-dev               libreadline6-dev               libssl-dev               libyaml-dev               zlib1g-dev         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:840e7d13d5559806d80c0a02670c0f86e74994abef638c7c8c1e3f2f63011e2e" [label="/bin/sh -c useradd ubuntu -d /home/ubuntu -m -U" shape="box"];
  "sha256:dba92449ee3ce604813cadf7cf7e59ea80858e3451745589cd00cc62c9730906" [label="/bin/sh -c chown -R ubuntu:ubuntu /home/ubuntu" shape="box"];
  "sha256:ba9798e9bcee01598981d0674dc00c5d78fb2f38c3006ebbfde2a2c06f2cde5a" [label="/bin/sh -c mkdir -p /fluentd/log" shape="box"];
  "sha256:834a0ca452d015a47c60e5f9a0e3c3f30a2b29b038194cc13032835604f14595" [label="/bin/sh -c mkdir -p /fluentd/etc" shape="box"];
  "sha256:f382b905eae976f78f2869b4fe23f8d41c28ce8536dcb897ad08bdf66f202a64" [label="/bin/sh -c mkdir -p /fluentd/plugins" shape="box"];
  "sha256:706de4d6eeac4e9b893ac79191dfcce99a83c4343abed691d586bdfb8530c7ae" [label="/bin/sh -c chown -R ubuntu:ubuntu /fluentd" shape="box"];
  "sha256:f279da098d648ff33ea00c039cdc9ff54522b7d21197ea8f652357078f332423" [label="mkdir{path=/home/ubuntu}" shape="note"];
  "sha256:ee29d97a3ed7438d5186e3aa96d185e79171c1f0250c363a4f46cee43b50d41d" [label="/bin/sh -c git clone https://github.com/tagomoris/xbuild.git /home/ubuntu/.xbuild" shape="box"];
  "sha256:5581eefe500ead436a032cca95262e5734d71884144e7fab29c15f22295056de" [label="/bin/sh -c /home/ubuntu/.xbuild/ruby-install 2.2.2 /home/ubuntu/ruby" shape="box"];
  "sha256:241bc5301b51decfbf7b1ab5a56e58024597107b603916564591608f808caf15" [label="/bin/sh -c gem install fluentd -v 0.12.16" shape="box"];
  "sha256:11c6c4dd6ee70c29d158f6e01e5e8b1384a84457e12d2924ecc07edb69874e39" [label="/bin/sh -c gem install fluent-plugin-secure-forward fluent-plugin-elasticsearch fluent-plugin-burrow fluent-plugin-grep" shape="box"];
  "sha256:26e22e5673699b90b32779100367f939f8d530014674678b27f933ba734415ce" [label="local://context" shape="ellipse"];
  "sha256:c0fd85c288a0ae62687f932daa7a4b5d8b6df3eb6ac5b44a82caf16f913a67c2" [label="copy{src=/fluent.conf, dest=/fluentd/etc/}" shape="note"];
  "sha256:217eb865e956e2429828761baf4a5592d0b733c4acf1fb918a8cbf6a660874b2" [label="mkdir{path=/home/ubuntu}" shape="note"];
  "sha256:13151e2b0d2e5fb7d64cb493ad82743efd411b2a485d5f227d2ffcd45be32207" [label="sha256:13151e2b0d2e5fb7d64cb493ad82743efd411b2a485d5f227d2ffcd45be32207" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:89f75664ba7214ebb4f7591ebbc2a937ef25d26d5564b51a5a276e1800e25727" [label=""];
  "sha256:89f75664ba7214ebb4f7591ebbc2a937ef25d26d5564b51a5a276e1800e25727" -> "sha256:840e7d13d5559806d80c0a02670c0f86e74994abef638c7c8c1e3f2f63011e2e" [label=""];
  "sha256:840e7d13d5559806d80c0a02670c0f86e74994abef638c7c8c1e3f2f63011e2e" -> "sha256:dba92449ee3ce604813cadf7cf7e59ea80858e3451745589cd00cc62c9730906" [label=""];
  "sha256:dba92449ee3ce604813cadf7cf7e59ea80858e3451745589cd00cc62c9730906" -> "sha256:ba9798e9bcee01598981d0674dc00c5d78fb2f38c3006ebbfde2a2c06f2cde5a" [label=""];
  "sha256:ba9798e9bcee01598981d0674dc00c5d78fb2f38c3006ebbfde2a2c06f2cde5a" -> "sha256:834a0ca452d015a47c60e5f9a0e3c3f30a2b29b038194cc13032835604f14595" [label=""];
  "sha256:834a0ca452d015a47c60e5f9a0e3c3f30a2b29b038194cc13032835604f14595" -> "sha256:f382b905eae976f78f2869b4fe23f8d41c28ce8536dcb897ad08bdf66f202a64" [label=""];
  "sha256:f382b905eae976f78f2869b4fe23f8d41c28ce8536dcb897ad08bdf66f202a64" -> "sha256:706de4d6eeac4e9b893ac79191dfcce99a83c4343abed691d586bdfb8530c7ae" [label=""];
  "sha256:706de4d6eeac4e9b893ac79191dfcce99a83c4343abed691d586bdfb8530c7ae" -> "sha256:f279da098d648ff33ea00c039cdc9ff54522b7d21197ea8f652357078f332423" [label=""];
  "sha256:f279da098d648ff33ea00c039cdc9ff54522b7d21197ea8f652357078f332423" -> "sha256:ee29d97a3ed7438d5186e3aa96d185e79171c1f0250c363a4f46cee43b50d41d" [label=""];
  "sha256:ee29d97a3ed7438d5186e3aa96d185e79171c1f0250c363a4f46cee43b50d41d" -> "sha256:5581eefe500ead436a032cca95262e5734d71884144e7fab29c15f22295056de" [label=""];
  "sha256:5581eefe500ead436a032cca95262e5734d71884144e7fab29c15f22295056de" -> "sha256:241bc5301b51decfbf7b1ab5a56e58024597107b603916564591608f808caf15" [label=""];
  "sha256:241bc5301b51decfbf7b1ab5a56e58024597107b603916564591608f808caf15" -> "sha256:11c6c4dd6ee70c29d158f6e01e5e8b1384a84457e12d2924ecc07edb69874e39" [label=""];
  "sha256:11c6c4dd6ee70c29d158f6e01e5e8b1384a84457e12d2924ecc07edb69874e39" -> "sha256:c0fd85c288a0ae62687f932daa7a4b5d8b6df3eb6ac5b44a82caf16f913a67c2" [label=""];
  "sha256:26e22e5673699b90b32779100367f939f8d530014674678b27f933ba734415ce" -> "sha256:c0fd85c288a0ae62687f932daa7a4b5d8b6df3eb6ac5b44a82caf16f913a67c2" [label=""];
  "sha256:c0fd85c288a0ae62687f932daa7a4b5d8b6df3eb6ac5b44a82caf16f913a67c2" -> "sha256:217eb865e956e2429828761baf4a5592d0b733c4acf1fb918a8cbf6a660874b2" [label=""];
  "sha256:217eb865e956e2429828761baf4a5592d0b733c4acf1fb918a8cbf6a660874b2" -> "sha256:13151e2b0d2e5fb7d64cb493ad82743efd411b2a485d5f227d2ffcd45be32207" [label=""];
}

