[app/sources/255856351.Dockerfile]
digraph {
  "sha256:224aa3c41b67a07f201996330a7b0f903562412fc7ab298622b389891c699a8d" [label="local://context" shape="ellipse"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:python3.6" shape="ellipse"];
  "sha256:5034467d3643a3c5cc075824f4f4cc248afabbcdab59f0e4d9c1d42c96715eb6" [label="/bin/sh -c pip install redis" shape="box"];
  "sha256:e123c4ce66a5da08eaa9caeb8737d14ed124d575cbcae03a5c400794bc64c601" [label="copy{src=/voting-app, dest=/app}" shape="note"];
  "sha256:e766fedc2da6602d565be513a4650aece05abd9cf51a021762b599056f656b1a" [label="sha256:e766fedc2da6602d565be513a4650aece05abd9cf51a021762b599056f656b1a" shape="plaintext"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" -> "sha256:5034467d3643a3c5cc075824f4f4cc248afabbcdab59f0e4d9c1d42c96715eb6" [label=""];
  "sha256:5034467d3643a3c5cc075824f4f4cc248afabbcdab59f0e4d9c1d42c96715eb6" -> "sha256:e123c4ce66a5da08eaa9caeb8737d14ed124d575cbcae03a5c400794bc64c601" [label=""];
  "sha256:224aa3c41b67a07f201996330a7b0f903562412fc7ab298622b389891c699a8d" -> "sha256:e123c4ce66a5da08eaa9caeb8737d14ed124d575cbcae03a5c400794bc64c601" [label=""];
  "sha256:e123c4ce66a5da08eaa9caeb8737d14ed124d575cbcae03a5c400794bc64c601" -> "sha256:e766fedc2da6602d565be513a4650aece05abd9cf51a021762b599056f656b1a" [label=""];
}

