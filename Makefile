install:
	@python setup.py install && rm -rf build

release:
	@rm -rf dist && python setup.py sdist

upload_test:
	@twine upload --repository-url https://test.pypi.org/legacy/ dist/*

upload_pypi:
	@twine upload dist/*

help:
	@echo '	install'
	@echo '		Builds and installs MiraiML'
	@echo '		Cleans build files'
	@echo '	release'
	@echo '		Creates a dist directory for release'
	@echo '	upload_test'
	@echo '		Uploads the release to TestPyPI (requires password)'
	@echo '	upload_pypi'
	@echo '		Uploads the release to PyPI (requires password)'
