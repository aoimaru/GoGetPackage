[app/sources/230715242.Dockerfile]
digraph {
  "sha256:7cfde48072326ff28a2d10c7a92e06cf0dd24fe7aa5a7cdd8cca63837d60d042" [label="docker-image://docker.io/jekyll/jekyll:3.8" shape="ellipse"];
  "sha256:60a69863af919db14a703037999246fb261c46c728106ed18fa4b8698c85b51d" [label="/bin/sh -c gem install     github-pages:188     jekyll-archives:2.1.1     stringex:2.8.4     jekyll-feed:0.10.0     jekyll-crosspost-to-medium:0.1.15     jekyll-lunr-js-search:3.3.0     liquid_pluralize:1.0.3     minimal-mistakes-jekyll:4.12.0   -- --use-system-libraries" shape="box"];
  "sha256:31665bbee1882267fdaed1387aa575d25a9166f34ea5587122bc2611cb4320dd" [label="sha256:31665bbee1882267fdaed1387aa575d25a9166f34ea5587122bc2611cb4320dd" shape="plaintext"];
  "sha256:7cfde48072326ff28a2d10c7a92e06cf0dd24fe7aa5a7cdd8cca63837d60d042" -> "sha256:60a69863af919db14a703037999246fb261c46c728106ed18fa4b8698c85b51d" [label=""];
  "sha256:60a69863af919db14a703037999246fb261c46c728106ed18fa4b8698c85b51d" -> "sha256:31665bbee1882267fdaed1387aa575d25a9166f34ea5587122bc2611cb4320dd" [label=""];
}

