[app/sources/134068580.Dockerfile]
digraph {
  "sha256:da827bf39f6b0d7e746232a5a60c0c3eba75ef84b656589364974b88be675325" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:1c2620e641605d8e6c39d13b745a218be9099f3e03231fc83bab65e48266a62c" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:33aceb6acca4b40ff3cf61c3cfe805db4e1f8dd639cde5a7473f75e15663f172" [label="mkdir{path=/code}" shape="note"];
  "sha256:554b36a4bcf24156704b0adaca35d26b57d547b099f14704ad1e07b9581c8ba4" [label="copy{src=/requirements.txt, dest=/code/requirements.txt}" shape="note"];
  "sha256:51b7dd32fc9507e263d2323901449013eb41e1109cdc818fa765270793315103" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b2fedcac8ffb9cff6bbd630ad891a923eac54531675d2ae9078376428429a14d" [label="copy{src=/app.py, dest=/code/app.py}" shape="note"];
  "sha256:3bf1358500f70453589c4d820fb7e94a5dc3427c686dbe05a614e72c4ad9b4c5" [label="sha256:3bf1358500f70453589c4d820fb7e94a5dc3427c686dbe05a614e72c4ad9b4c5" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:1c2620e641605d8e6c39d13b745a218be9099f3e03231fc83bab65e48266a62c" [label=""];
  "sha256:da827bf39f6b0d7e746232a5a60c0c3eba75ef84b656589364974b88be675325" -> "sha256:1c2620e641605d8e6c39d13b745a218be9099f3e03231fc83bab65e48266a62c" [label=""];
  "sha256:1c2620e641605d8e6c39d13b745a218be9099f3e03231fc83bab65e48266a62c" -> "sha256:33aceb6acca4b40ff3cf61c3cfe805db4e1f8dd639cde5a7473f75e15663f172" [label=""];
  "sha256:33aceb6acca4b40ff3cf61c3cfe805db4e1f8dd639cde5a7473f75e15663f172" -> "sha256:554b36a4bcf24156704b0adaca35d26b57d547b099f14704ad1e07b9581c8ba4" [label=""];
  "sha256:da827bf39f6b0d7e746232a5a60c0c3eba75ef84b656589364974b88be675325" -> "sha256:554b36a4bcf24156704b0adaca35d26b57d547b099f14704ad1e07b9581c8ba4" [label=""];
  "sha256:554b36a4bcf24156704b0adaca35d26b57d547b099f14704ad1e07b9581c8ba4" -> "sha256:51b7dd32fc9507e263d2323901449013eb41e1109cdc818fa765270793315103" [label=""];
  "sha256:51b7dd32fc9507e263d2323901449013eb41e1109cdc818fa765270793315103" -> "sha256:b2fedcac8ffb9cff6bbd630ad891a923eac54531675d2ae9078376428429a14d" [label=""];
  "sha256:da827bf39f6b0d7e746232a5a60c0c3eba75ef84b656589364974b88be675325" -> "sha256:b2fedcac8ffb9cff6bbd630ad891a923eac54531675d2ae9078376428429a14d" [label=""];
  "sha256:b2fedcac8ffb9cff6bbd630ad891a923eac54531675d2ae9078376428429a14d" -> "sha256:3bf1358500f70453589c4d820fb7e94a5dc3427c686dbe05a614e72c4ad9b4c5" [label=""];
}

