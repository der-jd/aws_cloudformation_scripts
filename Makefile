lint: lint-python typecheck-python

lint-python:
	for file in $$(find . -name "*.py"); do \
		echo "lint $$file..."; \
		pylint "$$file" || exit; # Use 'exit' here to return immediately after an error. Otherwise the for loop may ignore the error. \
	done

typecheck-python:
	pyright
