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

# How to design funtions

Function design usually starts at problem statement, extract/identify the input, output and the purpose of the function from the statement
1. Write **type signature** of function
2. Write **purpose** in one line
3. Write a **stub** that satisfies the *type signature*
4. Write failing tests
   > Data definition/type plays important role in *number of examples and tests required/recommended*, use that for guidance
5. Debug, Refactor until tests pass. *For non primitive data, templates can be useful in this step*

# How to design data

## Data definitions

Information in the problem domain cannot be represented as is inside a program - Ex. when writing a traffic light simulator, the Red, Green, and Yellow colors **can not be represented as is**,
and **instead** need to be represented as a **data definition** 
> Note that this data definition makes use of things available in the program i.e. **builtin and user defined types**
Fist identify the form of the information in problem domain, then write a *Data definition* which consist of
1. Type comment
2. Interpretation comment
3. Examples
4. Template for one arg funtion operating on this type

## Atomic Non-distinct

**Atomic** means the information cannot be broken down further and still make sense in problem domain

Example - in case of the *CityName datadef problem*, Pune cannot be broken down into lets say P or u or n because the broken parts make no sense on their own in this *given problem domain*, thats why the information - "Pune" is atomic

### HTDF with user-defined/non primitive data

Same as the usual HTDF recipe except for step 4, where number of tests/examples will vary based on the type of Datadef and at step 5, for non primitive data, template will be available
> NOTE: The HTDF is **orthogonal** for most part, i.e. it stays the same for all forms of data. This will be useful because we can just pick up a form of data, lets say it comes from a customer requirement, and use the known recipes to work on this data.

## Interval

When the *information* in problem domain is **numbers in a certain range**, use an Interval to represent it in Program


---
![image](https://github.com/hrutvikyadav/oc-x-htc/assets/97113293/cef01a94-a1c4-4ded-a724-2d8020a7f850)

---
