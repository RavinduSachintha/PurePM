CC            := gcc
APPLICATION		:= test-app

PURE_PKGS_DIR := pure_pkgs
SRC_DIR       := src
DIRS_COMP     := $(PURE_PKGS_DIR) $(SRC_DIR)

.PHONY: compile $(DIRS_COMP)

compile: $(DIRS_COMP)

exec:
	$(CC) -o $(APPLICATION) src/*.o pure_pkgs/*.o
	mv $(APPLICATION) ./dist

clean:
	make clean -C $(SRC_DIR)
	make clean -C $(PURE_PKGS_DIR)
	rm ./dist/$(APPLICATION)

$(DIRS_COMP):
	$(MAKE) -C $@ 

$(SRC_DIR): $(PURE_PKGS_DIR)
