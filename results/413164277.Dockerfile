[app/sources/413164277.Dockerfile]
digraph {
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" [label="docker-image://gcr.io/distroless/base@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:a3b3289d85043af2bae75e3c3c6fc7a25453d8d158a7efe179bb2fc6251d9e7f" [label="local://context" shape="ellipse"];
  "sha256:25bc9eaab037819c5446ed8ada2800825613af1da7ed04cc740e935a318549c4" [label="copy{src=/slack-welcomer, dest=/}" shape="note"];
  "sha256:b19f5d5ce043dc738979cfed3b0ab8dbfd643599391adff0ad674a53f5dd0835" [label="sha256:b19f5d5ce043dc738979cfed3b0ab8dbfd643599391adff0ad674a53f5dd0835" shape="plaintext"];
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" -> "sha256:25bc9eaab037819c5446ed8ada2800825613af1da7ed04cc740e935a318549c4" [label=""];
  "sha256:a3b3289d85043af2bae75e3c3c6fc7a25453d8d158a7efe179bb2fc6251d9e7f" -> "sha256:25bc9eaab037819c5446ed8ada2800825613af1da7ed04cc740e935a318549c4" [label=""];
  "sha256:25bc9eaab037819c5446ed8ada2800825613af1da7ed04cc740e935a318549c4" -> "sha256:b19f5d5ce043dc738979cfed3b0ab8dbfd643599391adff0ad674a53f5dd0835" [label=""];
}

