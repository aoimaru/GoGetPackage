[app/sources/333950031.Dockerfile]
digraph {
  "sha256:e7f4786f4cf6cfab6a70f66d0d4ac80e8f6ef8f0d4421ede5351d855be93be0e" [label="local://context" shape="ellipse"];
  "sha256:d8602b7483045e1479c50d22db535ca988181f9872dfc39e505f1b2861fbdb5b" [label="copy{src=/liveness, dest=/server}" shape="note"];
  "sha256:c71d253a661d6f52ff682becd77d9ae975fcf56a4ea5501fcf714a19da9bebb2" [label="sha256:c71d253a661d6f52ff682becd77d9ae975fcf56a4ea5501fcf714a19da9bebb2" shape="plaintext"];
  "sha256:e7f4786f4cf6cfab6a70f66d0d4ac80e8f6ef8f0d4421ede5351d855be93be0e" -> "sha256:d8602b7483045e1479c50d22db535ca988181f9872dfc39e505f1b2861fbdb5b" [label=""];
  "sha256:d8602b7483045e1479c50d22db535ca988181f9872dfc39e505f1b2861fbdb5b" -> "sha256:c71d253a661d6f52ff682becd77d9ae975fcf56a4ea5501fcf714a19da9bebb2" [label=""];
}

