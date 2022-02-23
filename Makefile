CC=g++
SOURCE=wpawordgen.cpp
APP=wpawordgen
BINDIR=/usr/bin

app: $(SOURCE)
	@echo "Compiling Code"
	@$(CC) $(SOURCE) -o $(APP)

install:
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	@echo "Installing to $(BINDIR)"
	@install -m 755 $(APP) $(BINDIR)/
endif

uninstall:
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	@echo "Uninstalling"
	@rm -rf $(BINDIR)/$(APP)
endif

clean:
	@echo "Cleaning"
	@rm -rf $(APP)
