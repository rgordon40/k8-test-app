validate:
	@pre-commit run -a

update:
	@tfupdate terraform -r .
