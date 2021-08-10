[app/sources/458603721.Dockerfile]
digraph {
  "sha256:07a1460c013aba96c6c2804af533e24ec730dcdbc9d3076e86b574f7f3332fa5" [label="local://context" shape="ellipse"];
  "sha256:833b5244146ce12ac9bb8a76c85265e2cafec5f0e73570db7aa3d0c74b43b20c" [label="docker-image://docker.io/gerritcodereview/gerrit:2.16.3-centos7" shape="ellipse"];
  "sha256:8f8c1216077993f83f2fb22179a4283f5ef1b6c54c2c1423809dd9b38071436d" [label="copy{src=/*.config, dest=/}" shape="note"];
  "sha256:372c2b2641b77b013840c9e09050e9aef5047af601e98c5b866b8bd9ee8dd72a" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:15857d3c7d04aaa224a4597981191cbae9049c2bc27b3130f7e329cc5254f5fe" [label="sha256:15857d3c7d04aaa224a4597981191cbae9049c2bc27b3130f7e329cc5254f5fe" shape="plaintext"];
  "sha256:833b5244146ce12ac9bb8a76c85265e2cafec5f0e73570db7aa3d0c74b43b20c" -> "sha256:8f8c1216077993f83f2fb22179a4283f5ef1b6c54c2c1423809dd9b38071436d" [label=""];
  "sha256:07a1460c013aba96c6c2804af533e24ec730dcdbc9d3076e86b574f7f3332fa5" -> "sha256:8f8c1216077993f83f2fb22179a4283f5ef1b6c54c2c1423809dd9b38071436d" [label=""];
  "sha256:8f8c1216077993f83f2fb22179a4283f5ef1b6c54c2c1423809dd9b38071436d" -> "sha256:372c2b2641b77b013840c9e09050e9aef5047af601e98c5b866b8bd9ee8dd72a" [label=""];
  "sha256:07a1460c013aba96c6c2804af533e24ec730dcdbc9d3076e86b574f7f3332fa5" -> "sha256:372c2b2641b77b013840c9e09050e9aef5047af601e98c5b866b8bd9ee8dd72a" [label=""];
  "sha256:372c2b2641b77b013840c9e09050e9aef5047af601e98c5b866b8bd9ee8dd72a" -> "sha256:15857d3c7d04aaa224a4597981191cbae9049c2bc27b3130f7e329cc5254f5fe" [label=""];
}
