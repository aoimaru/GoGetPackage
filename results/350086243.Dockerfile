[app/sources/350086243.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:f9a135606a7073f8bb19743b3b2272edb2538aeac9d4695e20ea89ed6d1d3504" [label="local://context" shape="ellipse"];
  "sha256:194838400a77f47a4aa1b5f0f15aa3e57bc08787aab14dca85ce844b9b6e578b" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:5fec70b555989f24a78cae4c8363506d32e57b83540fa6d55989c1cd6bdbb1e4" [label="sha256:5fec70b555989f24a78cae4c8363506d32e57b83540fa6d55989c1cd6bdbb1e4" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:194838400a77f47a4aa1b5f0f15aa3e57bc08787aab14dca85ce844b9b6e578b" [label=""];
  "sha256:f9a135606a7073f8bb19743b3b2272edb2538aeac9d4695e20ea89ed6d1d3504" -> "sha256:194838400a77f47a4aa1b5f0f15aa3e57bc08787aab14dca85ce844b9b6e578b" [label=""];
  "sha256:194838400a77f47a4aa1b5f0f15aa3e57bc08787aab14dca85ce844b9b6e578b" -> "sha256:5fec70b555989f24a78cae4c8363506d32e57b83540fa6d55989c1cd6bdbb1e4" [label=""];
}

