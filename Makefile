#INSTALL_DIR		:= /var/www/dbix-class.org/DBIC-Web/pages
INSTALL_DIR		:= /tmp/mytest
STATIC_DIR		:= assets
OWNER			:= dpetrov
GROUP			:= dpetrov

all: build

build:
	@echo: "Use 'make install' to install DBIC website"

install:
	mkdir -p $(INSTALL_DIR)
	tpage pages/index.tt > $(INSTALL_DIR)/index.html
	cp -rf $(STATIC_DIR) $(INSTALL_DIR)/
	chown -R $(OWNER):$(GROUP) $(INSTALL_DIR)/
