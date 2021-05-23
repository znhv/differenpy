install:
	poetry install

clean:
	 rm -rf /home/notabu/python-project-lvl2/dist/*

build: clean
	poetry build

lint:
	poetry run flake8 gendiff

test:
	poetry run pytest

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

gendiff:
	poetry run gendiff