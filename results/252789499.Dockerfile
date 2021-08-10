[app/sources/252789499.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:61972680a50d7d29c4746123684b3cbde2b4760f6b3fbddacb6cf26390ad78c2" [label="/bin/sh -c mkdir mydir" shape="box"];
  "sha256:88c4f4f53868c2536792eea5df2e501d324923bf50f6ef1ff105e84f4b430e4f" [label="/bin/sh -c touch mydir/myfile" shape="box"];
  "sha256:961d9bd50524961338b465766a9e7ab518100965f2ad19ebb6dd7ed96e26bfd8" [label="/bin/sh -c echo 'this is my testing for container' > mydir/myfile" shape="box"];
  "sha256:28197172921d512df9842a9d3c3056831b90882a02acb32729f1f8b294f614dc" [label="/bin/sh -c echo 'this is content for trigger bulding' > mydir/myfile" shape="box"];
  "sha256:c17c8bf906d317d7e03c4ab05e45931e0f730a8ae0a873d83aa2ef33c0e8658a" [label="sha256:c17c8bf906d317d7e03c4ab05e45931e0f730a8ae0a873d83aa2ef33c0e8658a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:61972680a50d7d29c4746123684b3cbde2b4760f6b3fbddacb6cf26390ad78c2" [label=""];
  "sha256:61972680a50d7d29c4746123684b3cbde2b4760f6b3fbddacb6cf26390ad78c2" -> "sha256:88c4f4f53868c2536792eea5df2e501d324923bf50f6ef1ff105e84f4b430e4f" [label=""];
  "sha256:88c4f4f53868c2536792eea5df2e501d324923bf50f6ef1ff105e84f4b430e4f" -> "sha256:961d9bd50524961338b465766a9e7ab518100965f2ad19ebb6dd7ed96e26bfd8" [label=""];
  "sha256:961d9bd50524961338b465766a9e7ab518100965f2ad19ebb6dd7ed96e26bfd8" -> "sha256:28197172921d512df9842a9d3c3056831b90882a02acb32729f1f8b294f614dc" [label=""];
  "sha256:28197172921d512df9842a9d3c3056831b90882a02acb32729f1f8b294f614dc" -> "sha256:c17c8bf906d317d7e03c4ab05e45931e0f730a8ae0a873d83aa2ef33c0e8658a" [label=""];
}

