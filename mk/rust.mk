# RTARGET = x86_64-unknown-linux-gnu
RTARGET = thumbv7em-none-eabihf
# RTARGET = wasm32-unknown-unknown

.PHONY: rust
rust: $(RUSTUP)
	$< self update
$(RUSTUP) $(CARGO):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
