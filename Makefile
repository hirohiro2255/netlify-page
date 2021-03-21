build:
	elm make src/Main.elm --output app.js

open:
	open index.html

form:
	elm make src/FormValidator.elm --output ./prods/form-validator/app.js