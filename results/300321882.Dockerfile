[app/sources/300321882.Dockerfile]
digraph {
  "sha256:e457bc9f0dfc523b61f7806d1a90b90a5cd3b90b30f28e3c9f4aab811ac73352" [label="docker-image://docker.io/thomaschln/r-devtools:latest" shape="ellipse"];
  "sha256:8247643b15093479f6ce5baf473c48b0f7388fb6f82dc4209862c5da24a65bee" [label="/bin/sh -c R -e \"install.packages(c('magrittr', 'ggplot2', 'ggthemes', 'knitr', 'scales'))\"" shape="box"];
  "sha256:626cfbf02ae6b4c728fb6a97df419a2a1f2a13da61740696a65c231189366cdd" [label="/bin/sh -c R -e \"install.packages('lubridate')\"" shape="box"];
  "sha256:775e69eda2fb1fc3b4d2a9f114a07d122714febf87230bc9defa5bd91430d22c" [label="/bin/sh -c R -e \"devtools::install_github('ThomasChln/mastodon')\"" shape="box"];
  "sha256:4aaee4ace517aca9f179f326028e0a90f83e7a95da79d59e8115b5ef893999aa" [label="sha256:4aaee4ace517aca9f179f326028e0a90f83e7a95da79d59e8115b5ef893999aa" shape="plaintext"];
  "sha256:e457bc9f0dfc523b61f7806d1a90b90a5cd3b90b30f28e3c9f4aab811ac73352" -> "sha256:8247643b15093479f6ce5baf473c48b0f7388fb6f82dc4209862c5da24a65bee" [label=""];
  "sha256:8247643b15093479f6ce5baf473c48b0f7388fb6f82dc4209862c5da24a65bee" -> "sha256:626cfbf02ae6b4c728fb6a97df419a2a1f2a13da61740696a65c231189366cdd" [label=""];
  "sha256:626cfbf02ae6b4c728fb6a97df419a2a1f2a13da61740696a65c231189366cdd" -> "sha256:775e69eda2fb1fc3b4d2a9f114a07d122714febf87230bc9defa5bd91430d22c" [label=""];
  "sha256:775e69eda2fb1fc3b4d2a9f114a07d122714febf87230bc9defa5bd91430d22c" -> "sha256:4aaee4ace517aca9f179f326028e0a90f83e7a95da79d59e8115b5ef893999aa" [label=""];
}

