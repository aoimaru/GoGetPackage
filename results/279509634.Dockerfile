[app/sources/279509634.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" [label="mkdir{path=/src}" shape="note"];
  "sha256:e800e01c56a578d44dc393e1a440164eb8790f6d9ed1e73cd6eb8774d4452c13" [label="local://context" shape="ellipse"];
  "sha256:36774a570309f6af6e3ffd4b08ccfa6486947aaa0e62f93d6a92be0712ae1f62" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:d09b59b5f6ab5d5373be18a6b0d43ceb761ef8ccebe31f9b34474a215f0b7332" [label="sha256:d09b59b5f6ab5d5373be18a6b0d43ceb761ef8ccebe31f9b34474a215f0b7332" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" [label=""];
  "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" -> "sha256:36774a570309f6af6e3ffd4b08ccfa6486947aaa0e62f93d6a92be0712ae1f62" [label=""];
  "sha256:e800e01c56a578d44dc393e1a440164eb8790f6d9ed1e73cd6eb8774d4452c13" -> "sha256:36774a570309f6af6e3ffd4b08ccfa6486947aaa0e62f93d6a92be0712ae1f62" [label=""];
  "sha256:36774a570309f6af6e3ffd4b08ccfa6486947aaa0e62f93d6a92be0712ae1f62" -> "sha256:d09b59b5f6ab5d5373be18a6b0d43ceb761ef8ccebe31f9b34474a215f0b7332" [label=""];
}

