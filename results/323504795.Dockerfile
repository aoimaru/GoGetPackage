[app/sources/323504795.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:a453f38c858357b2a449585b76ba4cf9ce203adc125bddd351dd66e09f2c503c" [label="local://context" shape="ellipse"];
  "sha256:f0473d695a503241d3f6569452e0d9f8792c5abe6282ae425401f55a2b05c9a4" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:303ae14dedf5c15d04f947e10c12ace597842ed199f51e8d9cae3ab1d81592f0" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ac46249a1fea8cbd272b8d1892deb948c59883dbad669a7b8229ef27e028f4ab" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:4d9b6ecc71682809f35e1977f902158c962f6e5acc544b1fe6d421f65164e5b0" [label="sha256:4d9b6ecc71682809f35e1977f902158c962f6e5acc544b1fe6d421f65164e5b0" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:f0473d695a503241d3f6569452e0d9f8792c5abe6282ae425401f55a2b05c9a4" [label=""];
  "sha256:a453f38c858357b2a449585b76ba4cf9ce203adc125bddd351dd66e09f2c503c" -> "sha256:f0473d695a503241d3f6569452e0d9f8792c5abe6282ae425401f55a2b05c9a4" [label=""];
  "sha256:f0473d695a503241d3f6569452e0d9f8792c5abe6282ae425401f55a2b05c9a4" -> "sha256:303ae14dedf5c15d04f947e10c12ace597842ed199f51e8d9cae3ab1d81592f0" [label=""];
  "sha256:303ae14dedf5c15d04f947e10c12ace597842ed199f51e8d9cae3ab1d81592f0" -> "sha256:ac46249a1fea8cbd272b8d1892deb948c59883dbad669a7b8229ef27e028f4ab" [label=""];
  "sha256:a453f38c858357b2a449585b76ba4cf9ce203adc125bddd351dd66e09f2c503c" -> "sha256:ac46249a1fea8cbd272b8d1892deb948c59883dbad669a7b8229ef27e028f4ab" [label=""];
  "sha256:ac46249a1fea8cbd272b8d1892deb948c59883dbad669a7b8229ef27e028f4ab" -> "sha256:4d9b6ecc71682809f35e1977f902158c962f6e5acc544b1fe6d421f65164e5b0" [label=""];
}

