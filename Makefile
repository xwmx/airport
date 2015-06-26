BIN ?= airport
PREFIX ?= /usr/local

install:
	install $(BIN) $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
