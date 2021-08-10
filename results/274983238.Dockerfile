[app/sources/274983238.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:547daa1df6d00bc73aefe47e27067004e3c8908e34ac079bfe545252e094f123" [label="/bin/sh -c apt-get update && apt-get install -y python3 python3-pip tree" shape="box"];
  "sha256:af3b7baa19c713a5547232d2306bd29abc86ea334d1aff829fd70eebcddc3895" [label="/bin/sh -c pip3 install -U numpy pydicom==1.0.1rc1" shape="box"];
  "sha256:2525718ad98d537a86d09503770ab29cbfb0289c27c8da5a1899acf70309feb5" [label="local://context" shape="ellipse"];
  "sha256:14531bf662effd7cac1f3cd49f30e5da2341e2dc3f5f1dec35baa0322850ea8f" [label="copy{src=/, dest=/prog}" shape="note"];
  "sha256:d3ff79f3bd6a7c0d6e61eae55563cccdbcbfa718117bb03728c674aa544d109a" [label="mkdir{path=/prog}" shape="note"];
  "sha256:ee774a72788a3c72d355eb82a552c03c89826d0526d01c1fc0e0df8ced328939" [label="sha256:ee774a72788a3c72d355eb82a552c03c89826d0526d01c1fc0e0df8ced328939" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:547daa1df6d00bc73aefe47e27067004e3c8908e34ac079bfe545252e094f123" [label=""];
  "sha256:547daa1df6d00bc73aefe47e27067004e3c8908e34ac079bfe545252e094f123" -> "sha256:af3b7baa19c713a5547232d2306bd29abc86ea334d1aff829fd70eebcddc3895" [label=""];
  "sha256:af3b7baa19c713a5547232d2306bd29abc86ea334d1aff829fd70eebcddc3895" -> "sha256:14531bf662effd7cac1f3cd49f30e5da2341e2dc3f5f1dec35baa0322850ea8f" [label=""];
  "sha256:2525718ad98d537a86d09503770ab29cbfb0289c27c8da5a1899acf70309feb5" -> "sha256:14531bf662effd7cac1f3cd49f30e5da2341e2dc3f5f1dec35baa0322850ea8f" [label=""];
  "sha256:14531bf662effd7cac1f3cd49f30e5da2341e2dc3f5f1dec35baa0322850ea8f" -> "sha256:d3ff79f3bd6a7c0d6e61eae55563cccdbcbfa718117bb03728c674aa544d109a" [label=""];
  "sha256:d3ff79f3bd6a7c0d6e61eae55563cccdbcbfa718117bb03728c674aa544d109a" -> "sha256:ee774a72788a3c72d355eb82a552c03c89826d0526d01c1fc0e0df8ced328939" [label=""];
}

