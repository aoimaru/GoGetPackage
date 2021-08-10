[app/sources/201188149.Dockerfile]
digraph {
  "sha256:81c5dbbfa1a6c972bece895bc530e9f27ec9db026acbb32917e03d4006e8a4dd" [label="docker-image://docker.io/ivories/tensorflow:1.0" shape="ellipse"];
  "sha256:2074de65e71917d74cb3f7d191521eba57503013c79bc4044ef2fb47c1160d35" [label="/bin/sh -c apk add --no-cache build-base python3-dev &&     pip3 --no-cache-dir install -U nltk tqdm django asgi_redis channels && python3 -m nltk.downloader punkt &&     apk del build-base python3-dev && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:abe9c14f34a0619afb93adedd8558327fc6e3349d1933efb14f4f8eadcb45981" [label="/bin/sh -c apk add --no-cache openssl && wget https://github.com/Conchylicultor/DeepQA/archive/master.zip && unzip master.zip && rm master.zip && mv DeepQA-master DeepQA" shape="box"];
  "sha256:67d361f21fef0fca1776c7a147711e131275b75bd5dc8ab507d08c7dca6fd774" [label="mkdir{path=/DeepQA/chatbot_website}" shape="note"];
  "sha256:c043c53b0a5cc45cafb8fedbf40de5d4bb7b173ce1c8bf12f2353b85ddfc2e8c" [label="/bin/sh -c sed -i \"s#ALLOWED_HOSTS = \\[\\]#ALLOWED_HOSTS = \\['*'\\]#g\" /DeepQA/chatbot_website/chatbot_website/settings.py" shape="box"];
  "sha256:39d567b8279fdb126cb2ad894aa51d02cbe9ea4983d0a353fc2d45de4133a35f" [label="/bin/sh -c cat /DeepQA/chatbot_website/chatbot_website/settings.py" shape="box"];
  "sha256:c2b5beb803524a3481a0e264d616596dcfe7e99b41ce86dfa8c4ec21f507e5a6" [label="/bin/sh -c python3 manage.py makemigrations" shape="box"];
  "sha256:f0b8d1146cfea19b7057f6649cd89d064195ffc63494cf424aa3aceced6a460c" [label="/bin/sh -c python3 manage.py migrate" shape="box"];
  "sha256:ac8e770906fb54f16bc27f442cd476c2468bbbddbaa70157b611fa5fc6a46124" [label="sha256:ac8e770906fb54f16bc27f442cd476c2468bbbddbaa70157b611fa5fc6a46124" shape="plaintext"];
  "sha256:81c5dbbfa1a6c972bece895bc530e9f27ec9db026acbb32917e03d4006e8a4dd" -> "sha256:2074de65e71917d74cb3f7d191521eba57503013c79bc4044ef2fb47c1160d35" [label=""];
  "sha256:2074de65e71917d74cb3f7d191521eba57503013c79bc4044ef2fb47c1160d35" -> "sha256:abe9c14f34a0619afb93adedd8558327fc6e3349d1933efb14f4f8eadcb45981" [label=""];
  "sha256:abe9c14f34a0619afb93adedd8558327fc6e3349d1933efb14f4f8eadcb45981" -> "sha256:67d361f21fef0fca1776c7a147711e131275b75bd5dc8ab507d08c7dca6fd774" [label=""];
  "sha256:67d361f21fef0fca1776c7a147711e131275b75bd5dc8ab507d08c7dca6fd774" -> "sha256:c043c53b0a5cc45cafb8fedbf40de5d4bb7b173ce1c8bf12f2353b85ddfc2e8c" [label=""];
  "sha256:c043c53b0a5cc45cafb8fedbf40de5d4bb7b173ce1c8bf12f2353b85ddfc2e8c" -> "sha256:39d567b8279fdb126cb2ad894aa51d02cbe9ea4983d0a353fc2d45de4133a35f" [label=""];
  "sha256:39d567b8279fdb126cb2ad894aa51d02cbe9ea4983d0a353fc2d45de4133a35f" -> "sha256:c2b5beb803524a3481a0e264d616596dcfe7e99b41ce86dfa8c4ec21f507e5a6" [label=""];
  "sha256:c2b5beb803524a3481a0e264d616596dcfe7e99b41ce86dfa8c4ec21f507e5a6" -> "sha256:f0b8d1146cfea19b7057f6649cd89d064195ffc63494cf424aa3aceced6a460c" [label=""];
  "sha256:f0b8d1146cfea19b7057f6649cd89d064195ffc63494cf424aa3aceced6a460c" -> "sha256:ac8e770906fb54f16bc27f442cd476c2468bbbddbaa70157b611fa5fc6a46124" [label=""];
}

