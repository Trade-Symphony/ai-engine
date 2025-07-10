PACKAGE_NAME := ai-engine-trade-symphony
APP_DIR := src

install:
	uv sync

lint:
	uv run ruff check .

format:
	uv run ruff format .

clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache .ruff_cache .mypy_cache build dist *.egg-info .coverage htmlcov *.log out/
