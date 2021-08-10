[app/sources/252769372.Dockerfile]
digraph {
  "sha256:757343532f82b6fdb8e4e3cfd8e71eb374b421d04a24a417da2f7e8072236399" [label="docker-image://docker.io/library/tomcat:8.5-jre8-alpine" shape="ellipse"];
  "sha256:e9e0923b727fc0037b083d3434f73480d9473c1e5e39d39c0d41f6b24037acb5" [label="local://context" shape="ellipse"];
  "sha256:2fff8ad60ba20b681b6e35c4ed68332bc6df4faec9c0daa39fc25b1d6b14b609" [label="copy{src=/java.security, dest=/usr/lib/jvm/java-1.8-openjdk/jre/lib/security/}" shape="note"];
  "sha256:2806582eb840022568e9b06e8c35b53ac97b453e0ae0d16fff402f1bd0701162" [label="/bin/sh -c addgroup -g 1001 -S www && adduser -u 1001 -S -G www www && chown -R www:www /usr/local/tomcat" shape="box"];
  "sha256:169bbd5129d53f07b67e6dd698879d239b3e8d4e45bb56175a8abc75516572c0" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:f9a79a7de3ee572796e694c3805ce548cf1d1c9e8792b9855102ae289f63fa42" [label="sha256:f9a79a7de3ee572796e694c3805ce548cf1d1c9e8792b9855102ae289f63fa42" shape="plaintext"];
  "sha256:757343532f82b6fdb8e4e3cfd8e71eb374b421d04a24a417da2f7e8072236399" -> "sha256:2fff8ad60ba20b681b6e35c4ed68332bc6df4faec9c0daa39fc25b1d6b14b609" [label=""];
  "sha256:e9e0923b727fc0037b083d3434f73480d9473c1e5e39d39c0d41f6b24037acb5" -> "sha256:2fff8ad60ba20b681b6e35c4ed68332bc6df4faec9c0daa39fc25b1d6b14b609" [label=""];
  "sha256:2fff8ad60ba20b681b6e35c4ed68332bc6df4faec9c0daa39fc25b1d6b14b609" -> "sha256:2806582eb840022568e9b06e8c35b53ac97b453e0ae0d16fff402f1bd0701162" [label=""];
  "sha256:2806582eb840022568e9b06e8c35b53ac97b453e0ae0d16fff402f1bd0701162" -> "sha256:169bbd5129d53f07b67e6dd698879d239b3e8d4e45bb56175a8abc75516572c0" [label=""];
  "sha256:169bbd5129d53f07b67e6dd698879d239b3e8d4e45bb56175a8abc75516572c0" -> "sha256:f9a79a7de3ee572796e694c3805ce548cf1d1c9e8792b9855102ae289f63fa42" [label=""];
}

