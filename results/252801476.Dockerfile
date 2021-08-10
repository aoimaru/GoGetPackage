[app/sources/252801476.Dockerfile]
digraph {
  "sha256:ee66c1f5595e0349cdf71f6d958a587fbbafd262ae99bdbca048f397843d85c4" [label="docker-image://docker.io/bde2020/integrator-ui:0.3.0" shape="ellipse"];
  "sha256:de954a331062ddb8160cf833a0c6d3e5d6bc444cfbd11e672da30a80f2949129" [label="local://context" shape="ellipse"];
  "sha256:5d68a66a79f4a7821aafe7beff17cfe3a74ccbcfdb76cfb7e6525df83644eedd" [label="copy{src=/user-interfaces, dest=/app/config/user-interfaces}" shape="note"];
  "sha256:ea909b7a45ac71defd44ec2bb8260655f180c740bc335c1ac3250bdb3527caa5" [label="sha256:ea909b7a45ac71defd44ec2bb8260655f180c740bc335c1ac3250bdb3527caa5" shape="plaintext"];
  "sha256:ee66c1f5595e0349cdf71f6d958a587fbbafd262ae99bdbca048f397843d85c4" -> "sha256:5d68a66a79f4a7821aafe7beff17cfe3a74ccbcfdb76cfb7e6525df83644eedd" [label=""];
  "sha256:de954a331062ddb8160cf833a0c6d3e5d6bc444cfbd11e672da30a80f2949129" -> "sha256:5d68a66a79f4a7821aafe7beff17cfe3a74ccbcfdb76cfb7e6525df83644eedd" [label=""];
  "sha256:5d68a66a79f4a7821aafe7beff17cfe3a74ccbcfdb76cfb7e6525df83644eedd" -> "sha256:ea909b7a45ac71defd44ec2bb8260655f180c740bc335c1ac3250bdb3527caa5" [label=""];
}

