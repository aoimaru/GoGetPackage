[app/sources/277729570.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:0990706a1024a809ab38ec0b215bb0840ade312c93712c119e5ab9662428b4f2" [label="local://context" shape="ellipse"];
  "sha256:c512ac9af2a9f750ec7427e77486ebde888a82a4f3e92b405d25dffaa1e7c2f4" [label="copy{src=/Gemfile, dest=/src/},copy{src=/Gemfile.lock, dest=/src/}" shape="note"];
  "sha256:e91156932fe4f2e104b767e047be2ed099cf4eaf9c46bee14bf4b3077d4a751d" [label="mkdir{path=/src}" shape="note"];
  "sha256:1bfef3f640c262babab6411b055d9d1252a51f6a0da80ca0c06c39b63404a2d9" [label="/bin/sh -c apt-get update &&     apt-get install -y software-properties-common &&     add-apt-repository -y ppa:malteworld/ppa &&     apt-get update && apt-get install -y --no-install-recommends     build-essential     calibre     pandoc     pdftk     ruby     ruby-dev     wget     wkhtmltopdf     xvfb     zlib1g-dev     && gem install bundler --no-ri --no-rdoc     && bundle install     && apt-get remove -y --purge build-essential     && apt-get clean" shape="box"];
  "sha256:8f731f6a0d24579b20983b8468a0e70cc0afb3128afb927e6607f13c7d6bd9fa" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:8eee3a39296b91bef467fe140dbe496d849079d9aeb70c9bcaf4aaeb891a53fc" [label="sha256:8eee3a39296b91bef467fe140dbe496d849079d9aeb70c9bcaf4aaeb891a53fc" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:c512ac9af2a9f750ec7427e77486ebde888a82a4f3e92b405d25dffaa1e7c2f4" [label=""];
  "sha256:0990706a1024a809ab38ec0b215bb0840ade312c93712c119e5ab9662428b4f2" -> "sha256:c512ac9af2a9f750ec7427e77486ebde888a82a4f3e92b405d25dffaa1e7c2f4" [label=""];
  "sha256:c512ac9af2a9f750ec7427e77486ebde888a82a4f3e92b405d25dffaa1e7c2f4" -> "sha256:e91156932fe4f2e104b767e047be2ed099cf4eaf9c46bee14bf4b3077d4a751d" [label=""];
  "sha256:e91156932fe4f2e104b767e047be2ed099cf4eaf9c46bee14bf4b3077d4a751d" -> "sha256:1bfef3f640c262babab6411b055d9d1252a51f6a0da80ca0c06c39b63404a2d9" [label=""];
  "sha256:1bfef3f640c262babab6411b055d9d1252a51f6a0da80ca0c06c39b63404a2d9" -> "sha256:8f731f6a0d24579b20983b8468a0e70cc0afb3128afb927e6607f13c7d6bd9fa" [label=""];
  "sha256:0990706a1024a809ab38ec0b215bb0840ade312c93712c119e5ab9662428b4f2" -> "sha256:8f731f6a0d24579b20983b8468a0e70cc0afb3128afb927e6607f13c7d6bd9fa" [label=""];
  "sha256:8f731f6a0d24579b20983b8468a0e70cc0afb3128afb927e6607f13c7d6bd9fa" -> "sha256:8eee3a39296b91bef467fe140dbe496d849079d9aeb70c9bcaf4aaeb891a53fc" [label=""];
}

