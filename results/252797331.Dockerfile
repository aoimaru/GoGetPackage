[app/sources/252797331.Dockerfile]
digraph {
  "sha256:7704b18bc1368214cd517fdce1511cc82a5e16003ebf70d3fa6dc692cd3754f4" [label="docker-image://docker.io/clubcedille/apache@sha256:bac8d74c991b0d12db1d03b422407481eea9fed69b1b48fc8e6aa737c9e69ecf" shape="ellipse"];
  "sha256:22b7dc98f6a9cb0982eb08119a7c4f00c8223a0a19e9a3f28203634269b45d73" [label="/bin/sh -c apt-get update && apt-get install -y php5 php-pear && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:90c17e788f2645dbc4e301962b56d20ebe69b34dfdadc5fb478836bddebde005" [label="sha256:90c17e788f2645dbc4e301962b56d20ebe69b34dfdadc5fb478836bddebde005" shape="plaintext"];
  "sha256:7704b18bc1368214cd517fdce1511cc82a5e16003ebf70d3fa6dc692cd3754f4" -> "sha256:22b7dc98f6a9cb0982eb08119a7c4f00c8223a0a19e9a3f28203634269b45d73" [label=""];
  "sha256:22b7dc98f6a9cb0982eb08119a7c4f00c8223a0a19e9a3f28203634269b45d73" -> "sha256:90c17e788f2645dbc4e301962b56d20ebe69b34dfdadc5fb478836bddebde005" [label=""];
}

