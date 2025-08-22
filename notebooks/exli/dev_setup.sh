set -e

ENV_NAME="exli.dev"

if ! conda info --envs | grep -q "^$ENV_NAME[[:space:]]"; then
    conda create -n $ENV_NAME python=3.12 -y -q
fi

eval "$(conda shell.bash hook)"
conda activate $ENV_NAME

python -m pip install -e ../modules/falcon_exchs
python -m pip install -e ../modules/falcon_utils
