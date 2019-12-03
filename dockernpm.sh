# e.g.
#sh dockernpm.sh install gun
docker run -ti -v $PWD:/work/ -w /work/ partnernetsoftware/auto_alpine_glibc /work/node-latest/bin/node /work/node-latest/lib/node_modules/npm/bin/npm-cli $*
