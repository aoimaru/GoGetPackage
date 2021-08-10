[app/sources/360284747.Dockerfile]
digraph {
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:7234cbb3cc331653fc7c4e681002586dc88d4ae52f06360f06900218fa6e4fc9" [label="/bin/sh -c apt-get install -y   php5-fpm   nginx" shape="box"];
  "sha256:a2785b508e10008580cd7c28bd375760479d73b083f9327a52635c8411affbbc" [label="copy{src=/docker/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:6fe2750b8d5cb4e230c6ee72f8643531991472a76d799bf500759132900997ce" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:0a2e20b3581b23dce5e9334c2be902ce9f2c687d7822759152cdd3192bc0cb0b" [label="copy{src=/docker/nginx/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:d83b42447a03193121385d32e66a9eb8849238f95410f8756ece89d766440d56" [label="copy{src=/docker/php-fpm/php-fpm.conf, dest=/etc/php5/fpm/php-fpm.conf}" shape="note"];
  "sha256:e4a133ba12f0e94915761e6cb596c49b6e1a07acc310f4996dac19643f9d8622" [label="copy{src=/docker/php-fpm/pool.d, dest=/etc/php5/fpm/pool.d}" shape="note"];
  "sha256:b14b7d5f2136cb233080a2c9037595b08520dccf12e8c9612657149d65c11abc" [label="/bin/sh -c mkdir -p /etc/php5/cli; ln -s /etc/php5/fpm/php.ini /etc/php5/cli/php.ini" shape="box"];
  "sha256:4da6064c4455ad3ba54eb3b919039e5f3cf095973900e21ce06ad5ef5c76fbe2" [label="/bin/sh -c sed -i \"s/;date.timezone =/date.timezone = Europe\\/Berlin/\" /etc/php5/fpm/php.ini" shape="box"];
  "sha256:5c48592764d6cb585447ebc4fd9e47065f91ab9ce05ecf8d5028d5be6b04055c" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:5a6e96a086c4152806007e71f9479dd1bf5e695d50d99f5c75e052e27b0449c1" [label="mkdir{path=/app}" shape="note"];
  "sha256:b1d4270b89845343195cd4a84c9745cf5bfd63cf79bdd8fefa4aa498a4e94be6" [label="sha256:b1d4270b89845343195cd4a84c9745cf5bfd63cf79bdd8fefa4aa498a4e94be6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" [label=""];
  "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" -> "sha256:7234cbb3cc331653fc7c4e681002586dc88d4ae52f06360f06900218fa6e4fc9" [label=""];
  "sha256:7234cbb3cc331653fc7c4e681002586dc88d4ae52f06360f06900218fa6e4fc9" -> "sha256:a2785b508e10008580cd7c28bd375760479d73b083f9327a52635c8411affbbc" [label=""];
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" -> "sha256:a2785b508e10008580cd7c28bd375760479d73b083f9327a52635c8411affbbc" [label=""];
  "sha256:a2785b508e10008580cd7c28bd375760479d73b083f9327a52635c8411affbbc" -> "sha256:6fe2750b8d5cb4e230c6ee72f8643531991472a76d799bf500759132900997ce" [label=""];
  "sha256:6fe2750b8d5cb4e230c6ee72f8643531991472a76d799bf500759132900997ce" -> "sha256:0a2e20b3581b23dce5e9334c2be902ce9f2c687d7822759152cdd3192bc0cb0b" [label=""];
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" -> "sha256:0a2e20b3581b23dce5e9334c2be902ce9f2c687d7822759152cdd3192bc0cb0b" [label=""];
  "sha256:0a2e20b3581b23dce5e9334c2be902ce9f2c687d7822759152cdd3192bc0cb0b" -> "sha256:d83b42447a03193121385d32e66a9eb8849238f95410f8756ece89d766440d56" [label=""];
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" -> "sha256:d83b42447a03193121385d32e66a9eb8849238f95410f8756ece89d766440d56" [label=""];
  "sha256:d83b42447a03193121385d32e66a9eb8849238f95410f8756ece89d766440d56" -> "sha256:e4a133ba12f0e94915761e6cb596c49b6e1a07acc310f4996dac19643f9d8622" [label=""];
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" -> "sha256:e4a133ba12f0e94915761e6cb596c49b6e1a07acc310f4996dac19643f9d8622" [label=""];
  "sha256:e4a133ba12f0e94915761e6cb596c49b6e1a07acc310f4996dac19643f9d8622" -> "sha256:b14b7d5f2136cb233080a2c9037595b08520dccf12e8c9612657149d65c11abc" [label=""];
  "sha256:b14b7d5f2136cb233080a2c9037595b08520dccf12e8c9612657149d65c11abc" -> "sha256:4da6064c4455ad3ba54eb3b919039e5f3cf095973900e21ce06ad5ef5c76fbe2" [label=""];
  "sha256:4da6064c4455ad3ba54eb3b919039e5f3cf095973900e21ce06ad5ef5c76fbe2" -> "sha256:5c48592764d6cb585447ebc4fd9e47065f91ab9ce05ecf8d5028d5be6b04055c" [label=""];
  "sha256:4d810cdd1403e9b51d042962e339a9203023e3c3770329306f38af7007f40144" -> "sha256:5c48592764d6cb585447ebc4fd9e47065f91ab9ce05ecf8d5028d5be6b04055c" [label=""];
  "sha256:5c48592764d6cb585447ebc4fd9e47065f91ab9ce05ecf8d5028d5be6b04055c" -> "sha256:5a6e96a086c4152806007e71f9479dd1bf5e695d50d99f5c75e052e27b0449c1" [label=""];
  "sha256:5a6e96a086c4152806007e71f9479dd1bf5e695d50d99f5c75e052e27b0449c1" -> "sha256:b1d4270b89845343195cd4a84c9745cf5bfd63cf79bdd8fefa4aa498a4e94be6" [label=""];
}

