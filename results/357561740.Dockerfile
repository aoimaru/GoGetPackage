[app/sources/357561740.Dockerfile]
digraph {
  "sha256:2b81db8485395c2164fa20b71c3c7e733676569a5c6ed0d93927c264046bedba" [label="docker-image://docker.io/bpuchala/casm-base:err_condagcc" shape="ellipse"];
  "sha256:c216e2ed7e3db4fdd67560a9be676cca2521e72bfeab5dfe8428e243296ca5d6" [label="/bin/sh -c conda create -n $CASM_ENV_NAME -y   -c $CASM_CONDA_CHANNEL -c defaults -c conda-forge -c prisms-center    \"python =$CASM_PYTHON_VERSION\"   \"casm-boost $CASM_BOOST_VERSION $CASM_BOOST_CONDAGCC_BUILD_STR\"    && conda clean -y -a" shape="box"];
  "sha256:f5001f38fd7d98bdca1b527aeb78ed9c754c74892b5f8d550ba21572fb07839b" [label="mkdir{path=/home/casmuser}" shape="note"];
  "sha256:10e36e362d0eb77454ec5ddde97b77d5fc43fbca9c74890e21f8102e5061bfb4" [label="sha256:10e36e362d0eb77454ec5ddde97b77d5fc43fbca9c74890e21f8102e5061bfb4" shape="plaintext"];
  "sha256:2b81db8485395c2164fa20b71c3c7e733676569a5c6ed0d93927c264046bedba" -> "sha256:c216e2ed7e3db4fdd67560a9be676cca2521e72bfeab5dfe8428e243296ca5d6" [label=""];
  "sha256:c216e2ed7e3db4fdd67560a9be676cca2521e72bfeab5dfe8428e243296ca5d6" -> "sha256:f5001f38fd7d98bdca1b527aeb78ed9c754c74892b5f8d550ba21572fb07839b" [label=""];
  "sha256:f5001f38fd7d98bdca1b527aeb78ed9c754c74892b5f8d550ba21572fb07839b" -> "sha256:10e36e362d0eb77454ec5ddde97b77d5fc43fbca9c74890e21f8102e5061bfb4" [label=""];
}

