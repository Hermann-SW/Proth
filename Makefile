
all:
	@echo "[" > aux
	@./conv riesel1  >> aux
	@./conv riesel1a >> aux
	@./conv riesel1b >> aux
	@./conv riesel1c >> aux
	@./oneline aux > Proth.json

clean:
	@rm -f riesel*txt riesel*xml aux
