[app/sources/389671330.Dockerfile]
digraph {
  "sha256:205f76462bd951ac722dac104da28efc46a46e81b0d9d515e9f1633711be6412" [label="local://context" shape="ellipse"];
  "sha256:c7fc35949665e4b81fe2256aea59b911df83b8af93e1182080bb652ecd1fb369" [label="docker-image://docker.io/library/ruby:2.6.3@sha256:358f16e92d0f66599103318f7a8528d449b0973fd89e46a1a5c47cec7479f09b" shape="ellipse"];
  "sha256:b1561a25f9f763a0de51b5c06d38a688fde002a266e30bfd6d1e55439de8e164" [label="/bin/sh -c apt-get update -qq && apt-get upgrade -y" shape="box"];
  "sha256:bfddfe66188420a338cbd5764801c27573b2e671122d37370315c746e0c44c5e" [label="/bin/sh -c apt-get install -y build-essential nodejs && apt-get clean" shape="box"];
  "sha256:c121a8b33f9a48edb87a8c3a3781b0c8d9fd8c73aeb561f0a736e280a102c08c" [label="/bin/sh -c gem install foreman" shape="box"];
  "sha256:6d81a024d46443d478918642b5684f89d58bcdeda58654862a1025525830e564" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:3ea0dcace150dc7944acba0457b96021ec9ea0797e69f783103e71cbf6d8b653" [label="mkdir{path=/app}" shape="note"];
  "sha256:c819ce618071242e6fa98ea9361f15ab8e4cf26e1cbf1ef1ac11d6b8fe26a16e" [label="copy{src=/Gemfile*, dest=/app/},copy{src=/.ruby-version, dest=/app/}" shape="note"];
  "sha256:f101ffa6524690fae5213820f966445fc0b1caf314f2e12d67f714fae4ee2f21" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:fa9550abf099d3201d249a4aebfdfb6c5a9a834d1b87ff89c54843cfd9ed0e79" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d05ba9b935b2a14eacc120ee4e0aeed0b223155400a0cbc981f3d743fd35063b" [label="/bin/sh -c GOVUK_APP_DOMAIN=www.gov.uk RAILS_ENV=production   DEVISE_PEPPER=`openssl rand -base64 40`   DEVISE_SECRET_KEY=`openssl rand -base64 40`   GOVUK_WEBSITE_ROOT=https://www.gov.uk   bundle exec rails assets:clean assets:precompile" shape="box"];
  "sha256:16ff3779933f187cfaee624e78c3c9333a3e91c9ba43686f069dcd3b76381e3a" [label="sha256:16ff3779933f187cfaee624e78c3c9333a3e91c9ba43686f069dcd3b76381e3a" shape="plaintext"];
  "sha256:c7fc35949665e4b81fe2256aea59b911df83b8af93e1182080bb652ecd1fb369" -> "sha256:b1561a25f9f763a0de51b5c06d38a688fde002a266e30bfd6d1e55439de8e164" [label=""];
  "sha256:b1561a25f9f763a0de51b5c06d38a688fde002a266e30bfd6d1e55439de8e164" -> "sha256:bfddfe66188420a338cbd5764801c27573b2e671122d37370315c746e0c44c5e" [label=""];
  "sha256:bfddfe66188420a338cbd5764801c27573b2e671122d37370315c746e0c44c5e" -> "sha256:c121a8b33f9a48edb87a8c3a3781b0c8d9fd8c73aeb561f0a736e280a102c08c" [label=""];
  "sha256:c121a8b33f9a48edb87a8c3a3781b0c8d9fd8c73aeb561f0a736e280a102c08c" -> "sha256:6d81a024d46443d478918642b5684f89d58bcdeda58654862a1025525830e564" [label=""];
  "sha256:6d81a024d46443d478918642b5684f89d58bcdeda58654862a1025525830e564" -> "sha256:3ea0dcace150dc7944acba0457b96021ec9ea0797e69f783103e71cbf6d8b653" [label=""];
  "sha256:3ea0dcace150dc7944acba0457b96021ec9ea0797e69f783103e71cbf6d8b653" -> "sha256:c819ce618071242e6fa98ea9361f15ab8e4cf26e1cbf1ef1ac11d6b8fe26a16e" [label=""];
  "sha256:205f76462bd951ac722dac104da28efc46a46e81b0d9d515e9f1633711be6412" -> "sha256:c819ce618071242e6fa98ea9361f15ab8e4cf26e1cbf1ef1ac11d6b8fe26a16e" [label=""];
  "sha256:c819ce618071242e6fa98ea9361f15ab8e4cf26e1cbf1ef1ac11d6b8fe26a16e" -> "sha256:f101ffa6524690fae5213820f966445fc0b1caf314f2e12d67f714fae4ee2f21" [label=""];
  "sha256:f101ffa6524690fae5213820f966445fc0b1caf314f2e12d67f714fae4ee2f21" -> "sha256:fa9550abf099d3201d249a4aebfdfb6c5a9a834d1b87ff89c54843cfd9ed0e79" [label=""];
  "sha256:205f76462bd951ac722dac104da28efc46a46e81b0d9d515e9f1633711be6412" -> "sha256:fa9550abf099d3201d249a4aebfdfb6c5a9a834d1b87ff89c54843cfd9ed0e79" [label=""];
  "sha256:fa9550abf099d3201d249a4aebfdfb6c5a9a834d1b87ff89c54843cfd9ed0e79" -> "sha256:d05ba9b935b2a14eacc120ee4e0aeed0b223155400a0cbc981f3d743fd35063b" [label=""];
  "sha256:d05ba9b935b2a14eacc120ee4e0aeed0b223155400a0cbc981f3d743fd35063b" -> "sha256:16ff3779933f187cfaee624e78c3c9333a3e91c9ba43686f069dcd3b76381e3a" [label=""];
}

