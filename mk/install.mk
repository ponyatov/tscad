.PHONY : install update ref gz
install: $(WS)_install $(RUSTUP) doc ref gz
	$(RUSTUP) component add rustfmt
	$(RUSTUP) target    add $(RTARGET)
	$(RUSTUP) component add rust-src --toolchain nightly
	$(MAKE) update

update : $(WS)_update $(RUSTUP) $(NPM) $(TSC) $(YO)
	$(RUSTUP) self update
	$(RUSTUP)      update
ref    : $(RF)
gz     : $(GZ)

Debian_install: Debian_update
# sudo dpkg --add-architecture i386
Debian_update:
	sudo apt update
	sudo apt install -uy `cat apt.$(WS)` $(APT)
