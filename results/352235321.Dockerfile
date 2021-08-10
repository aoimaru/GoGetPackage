[app/sources/352235321.Dockerfile]
digraph {
  "sha256:4fc43142fd3a45240e0bd5a695fba73bc61c148b75a755af24c43f8b1d223ae4" [label="local://context" shape="ellipse"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:fd86d2b8b9ac33aacf0e6364c0c860f0363b321eb7c4a96e7cf289874e58cb03" [label="/bin/sh -c mkdir /hygieia /hygieia/config" shape="box"];
  "sha256:07e8961a84cdc6c4d0f90635ce726c36306667efa6a532d364dc1275e51863d3" [label="copy{src=/*.jar, dest=/hygieia/}" shape="note"];
  "sha256:3d6dd8da4f91107414cf4f75a77ccdcdc2c45a9458c9f5fda2430ad3d19e8331" [label="copy{src=/properties-builder.sh, dest=/hygieia/}" shape="note"];
  "sha256:1e75cd73171c96e2eb061bd527cdfa9129b2e272378f8e243d07dc5c70ca2a1e" [label="mkdir{path=/hygieia}" shape="note"];
  "sha256:235eeaecdd4708283499c123b6c38479feb067764b2c1302683faee209a56f66" [label="sha256:235eeaecdd4708283499c123b6c38479feb067764b2c1302683faee209a56f66" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:fd86d2b8b9ac33aacf0e6364c0c860f0363b321eb7c4a96e7cf289874e58cb03" [label=""];
  "sha256:fd86d2b8b9ac33aacf0e6364c0c860f0363b321eb7c4a96e7cf289874e58cb03" -> "sha256:07e8961a84cdc6c4d0f90635ce726c36306667efa6a532d364dc1275e51863d3" [label=""];
  "sha256:4fc43142fd3a45240e0bd5a695fba73bc61c148b75a755af24c43f8b1d223ae4" -> "sha256:07e8961a84cdc6c4d0f90635ce726c36306667efa6a532d364dc1275e51863d3" [label=""];
  "sha256:07e8961a84cdc6c4d0f90635ce726c36306667efa6a532d364dc1275e51863d3" -> "sha256:3d6dd8da4f91107414cf4f75a77ccdcdc2c45a9458c9f5fda2430ad3d19e8331" [label=""];
  "sha256:4fc43142fd3a45240e0bd5a695fba73bc61c148b75a755af24c43f8b1d223ae4" -> "sha256:3d6dd8da4f91107414cf4f75a77ccdcdc2c45a9458c9f5fda2430ad3d19e8331" [label=""];
  "sha256:3d6dd8da4f91107414cf4f75a77ccdcdc2c45a9458c9f5fda2430ad3d19e8331" -> "sha256:1e75cd73171c96e2eb061bd527cdfa9129b2e272378f8e243d07dc5c70ca2a1e" [label=""];
  "sha256:1e75cd73171c96e2eb061bd527cdfa9129b2e272378f8e243d07dc5c70ca2a1e" -> "sha256:235eeaecdd4708283499c123b6c38479feb067764b2c1302683faee209a56f66" [label=""];
}

