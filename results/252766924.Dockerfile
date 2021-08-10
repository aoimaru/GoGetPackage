[app/sources/252766924.Dockerfile]
digraph {
  "sha256:1a8162e9fc48e069d7730d48329c9ee03836c613ff9dbbc04e797c676b883b8a" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common" shape="box"];
  "sha256:73496a34d046fcd7297177699603209efa7694528b36956f346dbeb3678ef0d4" [label="mkdir{path=/root}" shape="note"];
  "sha256:67ef684bb96d301a8f52de16a1c84526ae345074648cdcde8e8d8c3c73d9cdde" [label="/bin/sh -c add-apt-repository -y ppa:nginx/stable && apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* && chown -R www-data:www-data /var/lib/nginx" shape="box"];
  "sha256:5d7b7513cfcea437a3d51f0219de21d0e915b7db27c78a5e9d4928ac0d1c0850" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:a1023737997f4511074aef30d61495cb41af8d837c477e578618d3d9c14dee63" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4afe4a392356e13cedeeb1337263bf49133fb90481a75e2d854738d2fc1153fa" [label="sha256:4afe4a392356e13cedeeb1337263bf49133fb90481a75e2d854738d2fc1153fa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" [label=""];
  "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" -> "sha256:73496a34d046fcd7297177699603209efa7694528b36956f346dbeb3678ef0d4" [label=""];
  "sha256:73496a34d046fcd7297177699603209efa7694528b36956f346dbeb3678ef0d4" -> "sha256:67ef684bb96d301a8f52de16a1c84526ae345074648cdcde8e8d8c3c73d9cdde" [label=""];
  "sha256:67ef684bb96d301a8f52de16a1c84526ae345074648cdcde8e8d8c3c73d9cdde" -> "sha256:5d7b7513cfcea437a3d51f0219de21d0e915b7db27c78a5e9d4928ac0d1c0850" [label=""];
  "sha256:5d7b7513cfcea437a3d51f0219de21d0e915b7db27c78a5e9d4928ac0d1c0850" -> "sha256:a1023737997f4511074aef30d61495cb41af8d837c477e578618d3d9c14dee63" [label=""];
  "sha256:1a8162e9fc48e069d7730d48329c9ee03836c613ff9dbbc04e797c676b883b8a" -> "sha256:a1023737997f4511074aef30d61495cb41af8d837c477e578618d3d9c14dee63" [label=""];
  "sha256:a1023737997f4511074aef30d61495cb41af8d837c477e578618d3d9c14dee63" -> "sha256:4afe4a392356e13cedeeb1337263bf49133fb90481a75e2d854738d2fc1153fa" [label=""];
}

