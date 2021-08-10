[app/sources/315973171.Dockerfile]
digraph {
  "sha256:a165644220df003e8db709cf29740aa474830d02ffd8f5ea5bf84b6d04c2f42c" [label="docker-image://docker.io/turkunlp/turku-neural-parser:latest-base-cpu" shape="ellipse"];
  "sha256:f73c3490595b89b1166864401844b867868fe2e2d089cd72247d96b797088390" [label="mkdir{path=/app}" shape="note"];
  "sha256:ea34a490a57effeb162220436ba6ae97c53224f75e1462aa8bc457f70065db58" [label="/bin/bash -c echo \"MODELS: $models\"" shape="box"];
  "sha256:96f0f69cba3f43e9159b193fb4d25f202e1fe6a84d6fae39bf83482de03abd14" [label="/bin/bash -c for m in ${models} ; do echo \"DOWNLOADING $m\" ; python3 fetch_models.py $m ; done" shape="box"];
  "sha256:5072eec604d9584e7491aeece4886d9708f81bf0fd4a502977ffbab309215780" [label="sha256:5072eec604d9584e7491aeece4886d9708f81bf0fd4a502977ffbab309215780" shape="plaintext"];
  "sha256:a165644220df003e8db709cf29740aa474830d02ffd8f5ea5bf84b6d04c2f42c" -> "sha256:f73c3490595b89b1166864401844b867868fe2e2d089cd72247d96b797088390" [label=""];
  "sha256:f73c3490595b89b1166864401844b867868fe2e2d089cd72247d96b797088390" -> "sha256:ea34a490a57effeb162220436ba6ae97c53224f75e1462aa8bc457f70065db58" [label=""];
  "sha256:ea34a490a57effeb162220436ba6ae97c53224f75e1462aa8bc457f70065db58" -> "sha256:96f0f69cba3f43e9159b193fb4d25f202e1fe6a84d6fae39bf83482de03abd14" [label=""];
  "sha256:96f0f69cba3f43e9159b193fb4d25f202e1fe6a84d6fae39bf83482de03abd14" -> "sha256:5072eec604d9584e7491aeece4886d9708f81bf0fd4a502977ffbab309215780" [label=""];
}

