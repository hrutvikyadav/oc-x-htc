# How to code simple data

# Bootsrapped with
```sh
cd ocaml/
dune init project htc_sd
cd htc_sd
dune build
git init
echo "# How to code simple data" > README.md
nvim .
echo "_build" > .gitignore
echo "version = `ocamlformat --version`" > .ocamlformat
dune fmt
```

---
