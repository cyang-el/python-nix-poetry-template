set -euo pipefail

if ! command -v poetry &> /dev/null
then
    echo "poetry could not be found, installing..."
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
    exit
fi
