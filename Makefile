build:
	elm make src/Main.elm --output app.js

build-p:
	elm make src/Main.elm --output app.js --optimize



open:
	open index.html

form:
	elm make src/FormValidator.elm --output ./prods/form-validator/app.js

form-p:
	elm make src/FormValidator.elm --output ./prods/form-validator/app.js --optimize