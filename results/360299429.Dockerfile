[app/sources/360299429.Dockerfile]
digraph {
  "sha256:ca04cdbbd92f0e9ba6a7d1ba115ca6fb95a819004c0bc7c0d551aab4e3a9a155" [label="local://context" shape="ellipse"];
  "sha256:b00927e0fe3c8d06e2a0c34bcb38aa800bede3c2d28affb2dcea29e6478d5612" [label="docker-image://docker.io/library/ruby:2.4.5" shape="ellipse"];
  "sha256:6d9acbdb02a6a1db505b290d13ef12d00317ef605c1b919800f9263a097e97e5" [label="/bin/sh -c apt update && apt install --no-install-recommends -y   build-essential   cmake   file   git   libpq-dev   libxml2-dev   libxslt1-dev   libssl-dev   pkg-config   postgresql   netcat   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:26bb5b3ce9124a3f0e0b13109dd0aac8df55baf1a4123b5141ea7a34d993b9e0" [label="mkdir{path=/oss-dashboard}" shape="note"];
  "sha256:2ff0466ef8ab08e57adee811b476dde7350ff020c8fb28dbae95681ef58cb363" [label="copy{src=/Gemfile, dest=/oss-dashboard/Gemfile}" shape="note"];
  "sha256:3eb34599f256f66013cd5c1e9b57eaa8f97877a7a3a37a17b0c525b01c003843" [label="copy{src=/Gemfile.lock, dest=/oss-dashboard/Gemfile.lock}" shape="note"];
  "sha256:f09441b690485039328b48c387e726194b419092a09ff1da3cb60c8ee4aa54bb" [label="copy{src=/Rakefile, dest=/oss-dashboard/Rakefile}" shape="note"];
  "sha256:55daa7fd5c7393a0badfe8d19410757714b6a4ff0a9084fed258642ab08a8071" [label="/bin/sh -c gem install bundler   && bundle install --path vendor/bundle" shape="box"];
  "sha256:4c4b6f30d9fa2831d2c6fd5a9ed5ece12adfa95603ae8ad23025834eb6a5bfe2" [label="copy{src=/, dest=/oss-dashboard}" shape="note"];
  "sha256:e9ab597d005199db34f98a2142f3b7ac1812a9588f96f94b181ac91c2422ae30" [label="sha256:e9ab597d005199db34f98a2142f3b7ac1812a9588f96f94b181ac91c2422ae30" shape="plaintext"];
  "sha256:b00927e0fe3c8d06e2a0c34bcb38aa800bede3c2d28affb2dcea29e6478d5612" -> "sha256:6d9acbdb02a6a1db505b290d13ef12d00317ef605c1b919800f9263a097e97e5" [label=""];
  "sha256:6d9acbdb02a6a1db505b290d13ef12d00317ef605c1b919800f9263a097e97e5" -> "sha256:26bb5b3ce9124a3f0e0b13109dd0aac8df55baf1a4123b5141ea7a34d993b9e0" [label=""];
  "sha256:26bb5b3ce9124a3f0e0b13109dd0aac8df55baf1a4123b5141ea7a34d993b9e0" -> "sha256:2ff0466ef8ab08e57adee811b476dde7350ff020c8fb28dbae95681ef58cb363" [label=""];
  "sha256:ca04cdbbd92f0e9ba6a7d1ba115ca6fb95a819004c0bc7c0d551aab4e3a9a155" -> "sha256:2ff0466ef8ab08e57adee811b476dde7350ff020c8fb28dbae95681ef58cb363" [label=""];
  "sha256:2ff0466ef8ab08e57adee811b476dde7350ff020c8fb28dbae95681ef58cb363" -> "sha256:3eb34599f256f66013cd5c1e9b57eaa8f97877a7a3a37a17b0c525b01c003843" [label=""];
  "sha256:ca04cdbbd92f0e9ba6a7d1ba115ca6fb95a819004c0bc7c0d551aab4e3a9a155" -> "sha256:3eb34599f256f66013cd5c1e9b57eaa8f97877a7a3a37a17b0c525b01c003843" [label=""];
  "sha256:3eb34599f256f66013cd5c1e9b57eaa8f97877a7a3a37a17b0c525b01c003843" -> "sha256:f09441b690485039328b48c387e726194b419092a09ff1da3cb60c8ee4aa54bb" [label=""];
  "sha256:ca04cdbbd92f0e9ba6a7d1ba115ca6fb95a819004c0bc7c0d551aab4e3a9a155" -> "sha256:f09441b690485039328b48c387e726194b419092a09ff1da3cb60c8ee4aa54bb" [label=""];
  "sha256:f09441b690485039328b48c387e726194b419092a09ff1da3cb60c8ee4aa54bb" -> "sha256:55daa7fd5c7393a0badfe8d19410757714b6a4ff0a9084fed258642ab08a8071" [label=""];
  "sha256:55daa7fd5c7393a0badfe8d19410757714b6a4ff0a9084fed258642ab08a8071" -> "sha256:4c4b6f30d9fa2831d2c6fd5a9ed5ece12adfa95603ae8ad23025834eb6a5bfe2" [label=""];
  "sha256:ca04cdbbd92f0e9ba6a7d1ba115ca6fb95a819004c0bc7c0d551aab4e3a9a155" -> "sha256:4c4b6f30d9fa2831d2c6fd5a9ed5ece12adfa95603ae8ad23025834eb6a5bfe2" [label=""];
  "sha256:4c4b6f30d9fa2831d2c6fd5a9ed5ece12adfa95603ae8ad23025834eb6a5bfe2" -> "sha256:e9ab597d005199db34f98a2142f3b7ac1812a9588f96f94b181ac91c2422ae30" [label=""];
}

