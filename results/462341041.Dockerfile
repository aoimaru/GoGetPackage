[app/sources/462341041.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c686b85a2f48be4cc98e72c699c222c4b4306eee3c5a1c283480ce2fe8e46938" [label="/bin/sh -c adduser --disabled-password --gecos '' evething" shape="box"];
  "sha256:4282a569670c25bfa43c00ac10290eddbaba5b3fab9ab0552061a11bf33ce8bc" [label="local://context" shape="ellipse"];
  "sha256:242c4ae62537261f9baf4105edc917969a7b66363c226f412b177923fb48f96b" [label="copy{src=/, dest=/evething}" shape="note"];
  "sha256:ccf6e03af015c858bb924fb262a25cd527da74fd69793a7b3834a69a414d07ef" [label="/bin/sh -c chown -R evething:evething /evething" shape="box"];
  "sha256:8a84f15f8615a5895cf506959c7c409a1efae5d24eab47c6e832b1271079b722" [label="sha256:8a84f15f8615a5895cf506959c7c409a1efae5d24eab47c6e832b1271079b722" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c686b85a2f48be4cc98e72c699c222c4b4306eee3c5a1c283480ce2fe8e46938" [label=""];
  "sha256:c686b85a2f48be4cc98e72c699c222c4b4306eee3c5a1c283480ce2fe8e46938" -> "sha256:242c4ae62537261f9baf4105edc917969a7b66363c226f412b177923fb48f96b" [label=""];
  "sha256:4282a569670c25bfa43c00ac10290eddbaba5b3fab9ab0552061a11bf33ce8bc" -> "sha256:242c4ae62537261f9baf4105edc917969a7b66363c226f412b177923fb48f96b" [label=""];
  "sha256:242c4ae62537261f9baf4105edc917969a7b66363c226f412b177923fb48f96b" -> "sha256:ccf6e03af015c858bb924fb262a25cd527da74fd69793a7b3834a69a414d07ef" [label=""];
  "sha256:ccf6e03af015c858bb924fb262a25cd527da74fd69793a7b3834a69a414d07ef" -> "sha256:8a84f15f8615a5895cf506959c7c409a1efae5d24eab47c6e832b1271079b722" [label=""];
}

