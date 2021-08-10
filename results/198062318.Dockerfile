[app/sources/198062318.Dockerfile]
digraph {
  "sha256:ffd8a7513c52cf6df3463f5a60f787cd4c17dfd76c63b1f23442a8d5a2bbde04" [label="docker-image://docker.io/jupyter/jupyterhub:0.5.0" shape="ellipse"];
  "sha256:517166dd5f8d8a0287507c421f7e94cdd44cd6aa704cd80ee9f92b41e07cbea0" [label="/bin/sh -c apt-get update &&     apt-get install -y libmysqlclient-dev &&     apt-get autoremove -y &&     pip install mysqlclient" shape="box"];
  "sha256:e7e97067652414b1fdec2741a89f51afeb9f2c9b31d83b5892f23e023823475e" [label="local://context" shape="ellipse"];
  "sha256:126502adf0ce1807b24cbadec18a86a571353d13cc64ce765dab8eefe7fe7211" [label="copy{src=/requirements.txt, dest=/tmp}" shape="note"];
  "sha256:d3c81b4b645ec6398cee28dc795144a47d65e6e375cafe2b84fc7021d65d617a" [label="/bin/sh -c pip install -U -r /tmp/requirements.txt" shape="box"];
  "sha256:f4cf8b06daa2131e0b81a68b8a6ca41afdb933155a714e224f3862586e5ad384" [label="copy{src=/jupyterhub-web, dest=/srv/jupyterhub/share/jupyter/hub}" shape="note"];
  "sha256:6d270730b448f2041e069689130cdba70c4e8495443755180e7b9af78c68ebf9" [label="/bin/sh -c python setup.py js &&     npm install &&     pip install --upgrade --no-deps --force-reinstall . &&     rm -rf node_modules ~/.cache ~/.npm" shape="box"];
  "sha256:440bf6936c10910072a97f5a1b0449a0451d11d94b72ca8b51a1f2526922723e" [label="sha256:440bf6936c10910072a97f5a1b0449a0451d11d94b72ca8b51a1f2526922723e" shape="plaintext"];
  "sha256:ffd8a7513c52cf6df3463f5a60f787cd4c17dfd76c63b1f23442a8d5a2bbde04" -> "sha256:517166dd5f8d8a0287507c421f7e94cdd44cd6aa704cd80ee9f92b41e07cbea0" [label=""];
  "sha256:517166dd5f8d8a0287507c421f7e94cdd44cd6aa704cd80ee9f92b41e07cbea0" -> "sha256:126502adf0ce1807b24cbadec18a86a571353d13cc64ce765dab8eefe7fe7211" [label=""];
  "sha256:e7e97067652414b1fdec2741a89f51afeb9f2c9b31d83b5892f23e023823475e" -> "sha256:126502adf0ce1807b24cbadec18a86a571353d13cc64ce765dab8eefe7fe7211" [label=""];
  "sha256:126502adf0ce1807b24cbadec18a86a571353d13cc64ce765dab8eefe7fe7211" -> "sha256:d3c81b4b645ec6398cee28dc795144a47d65e6e375cafe2b84fc7021d65d617a" [label=""];
  "sha256:d3c81b4b645ec6398cee28dc795144a47d65e6e375cafe2b84fc7021d65d617a" -> "sha256:f4cf8b06daa2131e0b81a68b8a6ca41afdb933155a714e224f3862586e5ad384" [label=""];
  "sha256:e7e97067652414b1fdec2741a89f51afeb9f2c9b31d83b5892f23e023823475e" -> "sha256:f4cf8b06daa2131e0b81a68b8a6ca41afdb933155a714e224f3862586e5ad384" [label=""];
  "sha256:f4cf8b06daa2131e0b81a68b8a6ca41afdb933155a714e224f3862586e5ad384" -> "sha256:6d270730b448f2041e069689130cdba70c4e8495443755180e7b9af78c68ebf9" [label=""];
  "sha256:6d270730b448f2041e069689130cdba70c4e8495443755180e7b9af78c68ebf9" -> "sha256:440bf6936c10910072a97f5a1b0449a0451d11d94b72ca8b51a1f2526922723e" [label=""];
}

