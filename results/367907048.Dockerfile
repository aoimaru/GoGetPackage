[app/sources/367907048.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a1385aab2fc01fcbf39bebffd3cecfa8ab9b916abbee26e8c1693fb0c3b6cc7b" [label="/bin/sh -c apt-get update     && apt-get install -y python-dev python-pip scons npm git netcat     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:04880388235d0acbe240206febd709bbc70f45596694a75182969f1c34916efa" [label="/bin/sh -c pip install PyXB defusedxml psycopg2-binary django==1.8.18 python-social-auth==0.2.21 python-openid python-oauth2 django-require django-robots django-configurations requests_oauthlib" shape="box"];
  "sha256:9d163df89dbce82ff2ca486bf531cc460d1172cf7bb23a6d9a79c5948e93838c" [label="/bin/sh -c pip install git+git://github.com/django-tastypie/django-tastypie.git@256ebe1de9a78dfb5d4d6e938b813cf4c5c4ac1b" shape="box"];
  "sha256:5e834e3a5cfc4f18c6cc74c052bc8caedc43172f514d0f52449f185a6a4fc1e6" [label="/bin/sh -c npm install -g less mocha-phantomjs" shape="box"];
  "sha256:28f37d6813441e3d433beeeae7ba4a5b787b911858f81d8f185c4ef8fb2e0fb5" [label="local://context" shape="ellipse"];
  "sha256:2354b1170189f96c590414db0c127e0e9490205908145f61124d50483542ce99" [label="copy{src=/frontend/docker/startup.sh, dest=/startup.sh}" shape="note"];
  "sha256:75dce18a25d405570b88650dc0141c6fe12e961a4b232be7fe7a212cd490d3bb" [label="sha256:75dce18a25d405570b88650dc0141c6fe12e961a4b232be7fe7a212cd490d3bb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a1385aab2fc01fcbf39bebffd3cecfa8ab9b916abbee26e8c1693fb0c3b6cc7b" [label=""];
  "sha256:a1385aab2fc01fcbf39bebffd3cecfa8ab9b916abbee26e8c1693fb0c3b6cc7b" -> "sha256:04880388235d0acbe240206febd709bbc70f45596694a75182969f1c34916efa" [label=""];
  "sha256:04880388235d0acbe240206febd709bbc70f45596694a75182969f1c34916efa" -> "sha256:9d163df89dbce82ff2ca486bf531cc460d1172cf7bb23a6d9a79c5948e93838c" [label=""];
  "sha256:9d163df89dbce82ff2ca486bf531cc460d1172cf7bb23a6d9a79c5948e93838c" -> "sha256:5e834e3a5cfc4f18c6cc74c052bc8caedc43172f514d0f52449f185a6a4fc1e6" [label=""];
  "sha256:5e834e3a5cfc4f18c6cc74c052bc8caedc43172f514d0f52449f185a6a4fc1e6" -> "sha256:2354b1170189f96c590414db0c127e0e9490205908145f61124d50483542ce99" [label=""];
  "sha256:28f37d6813441e3d433beeeae7ba4a5b787b911858f81d8f185c4ef8fb2e0fb5" -> "sha256:2354b1170189f96c590414db0c127e0e9490205908145f61124d50483542ce99" [label=""];
  "sha256:2354b1170189f96c590414db0c127e0e9490205908145f61124d50483542ce99" -> "sha256:75dce18a25d405570b88650dc0141c6fe12e961a4b232be7fe7a212cd490d3bb" [label=""];
}

