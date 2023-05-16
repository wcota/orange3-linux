ROOT_CHECK := $(shell id -u)
ifeq ($(ROOT_CHECK),0)
    ROOT_CMD :=
else
    ROOT_CMD := @echo "Run as root!"; false
endif

install:
	$(ROOT_CMD)
	pip install PyQt5 PyQtWebEngine
	pip install orange3
	chmod +x orange3
	cp orange3 /usr/bin
	cp orange3.desktop /usr/share/applications
	cp orange3.png /usr/share/icons