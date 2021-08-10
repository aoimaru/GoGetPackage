[app/sources/193505188.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8b379194e8cdaa4234d1d7f441cf06badeceaa0ddbb00c58dbd3584ab1fb541f" [label="/bin/sh -c apt-get update &&   apt-get install -y nginx &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:290affa96fd57f2e01f7f10a4b07682bf7a1ffc3e3f893f896462cc801d0a869" [label="/bin/sh -c rm /etc/nginx/sites-available/default &&   ln -sf /dev/stdout /var/log/nginx/access.log &&   ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:a8262e4633952ece8c26ab0cd95643e87847eb8fa6d7da36a5198dae04ef7f0d" [label="local://context" shape="ellipse"];
  "sha256:56d57be97b133bdbbc6238cd4c513a4a997ad51b513f359b8e9d0890ef52c0fa" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:08b61acdce7ebecf6bdaddc004304731be34a08b7c5074abcd44907b19ddd9ed" [label="sha256:08b61acdce7ebecf6bdaddc004304731be34a08b7c5074abcd44907b19ddd9ed" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8b379194e8cdaa4234d1d7f441cf06badeceaa0ddbb00c58dbd3584ab1fb541f" [label=""];
  "sha256:8b379194e8cdaa4234d1d7f441cf06badeceaa0ddbb00c58dbd3584ab1fb541f" -> "sha256:290affa96fd57f2e01f7f10a4b07682bf7a1ffc3e3f893f896462cc801d0a869" [label=""];
  "sha256:290affa96fd57f2e01f7f10a4b07682bf7a1ffc3e3f893f896462cc801d0a869" -> "sha256:56d57be97b133bdbbc6238cd4c513a4a997ad51b513f359b8e9d0890ef52c0fa" [label=""];
  "sha256:a8262e4633952ece8c26ab0cd95643e87847eb8fa6d7da36a5198dae04ef7f0d" -> "sha256:56d57be97b133bdbbc6238cd4c513a4a997ad51b513f359b8e9d0890ef52c0fa" [label=""];
  "sha256:56d57be97b133bdbbc6238cd4c513a4a997ad51b513f359b8e9d0890ef52c0fa" -> "sha256:08b61acdce7ebecf6bdaddc004304731be34a08b7c5074abcd44907b19ddd9ed" [label=""];
}

