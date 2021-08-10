[app/sources/145759813.Dockerfile]
digraph {
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:dceb47ebb99ae1245c1a84bd7c8985766aeecbb154c9cf1734aa23ca027ff8a5" [label="/bin/sh -c dnf install -y which     python     python3     bash-completion     zsh     git     mercurial     python2-pip     python3-pip     python-devel     python3-devel     gcc" shape="box"];
  "sha256:02ce2f1a167dd46a474634a6fb434cce4bf3ddc38f98b7990dcbf75aabfc1054" [label="local://context" shape="ellipse"];
  "sha256:548916b2bea1edbb8e88094eea22b5e732af79d68c0f9e2ae2fc368e4d5f537e" [label="copy{src=/scripts/bootstrap_dotfiles.sh, dest=/bootstrap_dotfiles.sh}" shape="note"];
  "sha256:755673e901c36645e2d2d6b1adf87d1be312942ca3ee0e3c20d61d280589517c" [label="/bin/sh -c DOTFILES_REPO_REV=\"develop\" bash ./bootstrap_dotfiles.sh -I" shape="box"];
  "sha256:a9dd997e508bb49703e54df002beb1e0d68b7bfc7be123a79c0daca46a632b1b" [label="/bin/sh -c pip3 install --user virtualenv virtualenvwrapper" shape="box"];
  "sha256:c14482b22695485fd39229ddd3d7a37319dd6f9577aa63dc9300ae979db0ce83" [label="sha256:c14482b22695485fd39229ddd3d7a37319dd6f9577aa63dc9300ae979db0ce83" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:dceb47ebb99ae1245c1a84bd7c8985766aeecbb154c9cf1734aa23ca027ff8a5" [label=""];
  "sha256:dceb47ebb99ae1245c1a84bd7c8985766aeecbb154c9cf1734aa23ca027ff8a5" -> "sha256:548916b2bea1edbb8e88094eea22b5e732af79d68c0f9e2ae2fc368e4d5f537e" [label=""];
  "sha256:02ce2f1a167dd46a474634a6fb434cce4bf3ddc38f98b7990dcbf75aabfc1054" -> "sha256:548916b2bea1edbb8e88094eea22b5e732af79d68c0f9e2ae2fc368e4d5f537e" [label=""];
  "sha256:548916b2bea1edbb8e88094eea22b5e732af79d68c0f9e2ae2fc368e4d5f537e" -> "sha256:755673e901c36645e2d2d6b1adf87d1be312942ca3ee0e3c20d61d280589517c" [label=""];
  "sha256:755673e901c36645e2d2d6b1adf87d1be312942ca3ee0e3c20d61d280589517c" -> "sha256:a9dd997e508bb49703e54df002beb1e0d68b7bfc7be123a79c0daca46a632b1b" [label=""];
  "sha256:a9dd997e508bb49703e54df002beb1e0d68b7bfc7be123a79c0daca46a632b1b" -> "sha256:c14482b22695485fd39229ddd3d7a37319dd6f9577aa63dc9300ae979db0ce83" [label=""];
}

