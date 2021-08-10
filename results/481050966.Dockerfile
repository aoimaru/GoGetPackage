[app/sources/481050966.Dockerfile]
digraph {
  "sha256:711b2c778691eaeb5630d04614eb22fa8146ef80cd2f9d302dd61be684bd7161" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:893824bc02695393900ec2ae8620af3037cb2f9b151d14ae68193fa62185024c" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:459e16e3ae46e76cff75ce6d3a333a8777627cf9d1d19ef5fba038cc7eefc6cb" [label="copy{src=/materialize.min.css, dest=/data/bde-css/materialize.min.css}" shape="note"];
  "sha256:ab2e73bccd0416eb1bbe5e760621d55a5e0e70e53cd15f0cce6419dad2754c86" [label="copy{src=/bde-hadoop.css, dest=/data/bde-css/bde-hadoop.css}" shape="note"];
  "sha256:eff463a378a9eeff1b453b175edde23d7bd51e60b87c3da9873708ccb403dc4d" [label="sha256:eff463a378a9eeff1b453b175edde23d7bd51e60b87c3da9873708ccb403dc4d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:893824bc02695393900ec2ae8620af3037cb2f9b151d14ae68193fa62185024c" [label=""];
  "sha256:711b2c778691eaeb5630d04614eb22fa8146ef80cd2f9d302dd61be684bd7161" -> "sha256:893824bc02695393900ec2ae8620af3037cb2f9b151d14ae68193fa62185024c" [label=""];
  "sha256:893824bc02695393900ec2ae8620af3037cb2f9b151d14ae68193fa62185024c" -> "sha256:459e16e3ae46e76cff75ce6d3a333a8777627cf9d1d19ef5fba038cc7eefc6cb" [label=""];
  "sha256:711b2c778691eaeb5630d04614eb22fa8146ef80cd2f9d302dd61be684bd7161" -> "sha256:459e16e3ae46e76cff75ce6d3a333a8777627cf9d1d19ef5fba038cc7eefc6cb" [label=""];
  "sha256:459e16e3ae46e76cff75ce6d3a333a8777627cf9d1d19ef5fba038cc7eefc6cb" -> "sha256:ab2e73bccd0416eb1bbe5e760621d55a5e0e70e53cd15f0cce6419dad2754c86" [label=""];
  "sha256:711b2c778691eaeb5630d04614eb22fa8146ef80cd2f9d302dd61be684bd7161" -> "sha256:ab2e73bccd0416eb1bbe5e760621d55a5e0e70e53cd15f0cce6419dad2754c86" [label=""];
  "sha256:ab2e73bccd0416eb1bbe5e760621d55a5e0e70e53cd15f0cce6419dad2754c86" -> "sha256:eff463a378a9eeff1b453b175edde23d7bd51e60b87c3da9873708ccb403dc4d" [label=""];
}

