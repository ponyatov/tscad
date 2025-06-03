RTARGET = wasm32-unknown-unknown

$(NPM):
	sudo aptinstall -uy npm nodejs
$(TSC) $(YO): $(NPM)
	npm i -g typescript yo generator-langium

.PHONY: ts
ts: tmp/$(APP).js
	$(NODE) $<
tmp/%.js: src/%.ts
	$(TSC) $< --outFile $@
