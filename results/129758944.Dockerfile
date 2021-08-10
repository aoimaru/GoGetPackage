[app/sources/129758944.Dockerfile]
digraph {
  "sha256:dcf10a2c17d3d114523e00cf5e7cf200843fac3e7d58f4e100422e2d9addad53" [label="docker-image://docker.io/adoptopenjdk/openjdk8:jre8u212-b03-alpine" shape="ellipse"];
  "sha256:74e9ee42789ef371582dd014489c17a6ea0d5142bd59ba974298dd19138417c0" [label="/bin/sh -c addgroup --system -g ${USER_GROUP_ID} ${USER_GROUP}     && adduser --system --home ${USER_HOME} -g ${USER_GROUP_ID} -u ${USER_ID} ${USER}" shape="box"];
  "sha256:a81bc54a7416d421cc327d07c2918b276fb5e005569be2255980ac300bc5decf" [label="local://context" shape="ellipse"];
  "sha256:4e8870da7283693a67bfd8a46e91bf17d7cc08d9bfc7fc9621fb7741a31c5799" [label="copy{src=/wso2mi, dest=/home/wso2carbon/wso2mi}" shape="note"];
  "sha256:ef0951186b3953c8243715abfa7b9ed7d6aea258d1e0a305949fbbe7c6a08c73" [label="mkdir{path=/home/wso2carbon}" shape="note"];
  "sha256:946d16041d3fa43201c2dda9e5fe5ba9ddf8c9ba8b5b40b0cea78add985c0256" [label="sha256:946d16041d3fa43201c2dda9e5fe5ba9ddf8c9ba8b5b40b0cea78add985c0256" shape="plaintext"];
  "sha256:dcf10a2c17d3d114523e00cf5e7cf200843fac3e7d58f4e100422e2d9addad53" -> "sha256:74e9ee42789ef371582dd014489c17a6ea0d5142bd59ba974298dd19138417c0" [label=""];
  "sha256:74e9ee42789ef371582dd014489c17a6ea0d5142bd59ba974298dd19138417c0" -> "sha256:4e8870da7283693a67bfd8a46e91bf17d7cc08d9bfc7fc9621fb7741a31c5799" [label=""];
  "sha256:a81bc54a7416d421cc327d07c2918b276fb5e005569be2255980ac300bc5decf" -> "sha256:4e8870da7283693a67bfd8a46e91bf17d7cc08d9bfc7fc9621fb7741a31c5799" [label=""];
  "sha256:4e8870da7283693a67bfd8a46e91bf17d7cc08d9bfc7fc9621fb7741a31c5799" -> "sha256:ef0951186b3953c8243715abfa7b9ed7d6aea258d1e0a305949fbbe7c6a08c73" [label=""];
  "sha256:ef0951186b3953c8243715abfa7b9ed7d6aea258d1e0a305949fbbe7c6a08c73" -> "sha256:946d16041d3fa43201c2dda9e5fe5ba9ddf8c9ba8b5b40b0cea78add985c0256" [label=""];
}

