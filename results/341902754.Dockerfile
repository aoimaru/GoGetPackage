[app/sources/341902754.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8d098bea01f27c4aee901de628f926d48e8eebe36c5ddfc0a620bbe6dc8f65d8" [label="local://context" shape="ellipse"];
  "sha256:7b2694263431a0ddf2b3167d4a5470136947c1aad2a2ad4b2d368b1b879cfa63" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8fc691b68160339fbed4907ace127163f17ef4d8be14c9a739c77ef8ece2463f" [label="pip install logbook" shape="box"];
  "sha256:ca44bb5030360f8e3766c395e22258621c9a94fcc82bcc32b25f495fff0a84da" [label="sha256:ca44bb5030360f8e3766c395e22258621c9a94fcc82bcc32b25f495fff0a84da" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7b2694263431a0ddf2b3167d4a5470136947c1aad2a2ad4b2d368b1b879cfa63" [label=""];
  "sha256:8d098bea01f27c4aee901de628f926d48e8eebe36c5ddfc0a620bbe6dc8f65d8" -> "sha256:7b2694263431a0ddf2b3167d4a5470136947c1aad2a2ad4b2d368b1b879cfa63" [label=""];
  "sha256:7b2694263431a0ddf2b3167d4a5470136947c1aad2a2ad4b2d368b1b879cfa63" -> "sha256:8fc691b68160339fbed4907ace127163f17ef4d8be14c9a739c77ef8ece2463f" [label=""];
  "sha256:8fc691b68160339fbed4907ace127163f17ef4d8be14c9a739c77ef8ece2463f" -> "sha256:ca44bb5030360f8e3766c395e22258621c9a94fcc82bcc32b25f495fff0a84da" [label=""];
}

