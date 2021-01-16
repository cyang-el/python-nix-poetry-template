run-cmd = poetry run python ./some_app/__init__.py
test-cmd = poetry run python -m pytest tests

install-poetry: SHELL:=/bin/sh
install-poetry:
	@sh poetry_install.sh

test: install-poetry
	poetry install && $(test-cmd)

run: install-poetry
	poetry install --no-dev && $(run-cmd)

nix-test:
	$(test-cmd)

nix-run:
	$(run-cmd)
