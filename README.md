# jijejo-spec

Jijejo is a universal and easy api for all yours applications or libraries. Jijejo is a human and light alternative of [json:api](https://jsonapi.org/), [json-ld](https://json-ld.org/), [hal](http://stateless.co/hal_specification.html), [openapi](https://swagger.io/specification/), [graphql](https://graphql.org/), [joi](https://github.com/hapijs/joi), [zod](https://github.com/vriad/zod), [yup](https://github.com/jquense/yup), [hydra](http://www.markus-lanthaler.com/hydra/) ... Back to basics to get ahead in your business.

jijejo = (**j**)son (**i**)n + (**j**)son (**e**)rr + (**j**)son (**o**)ut

<!--<img src="https://cloud.githubusercontent.com/assets/svg/draft.svg" width="50%" height="50%">-->
![https://cloud.githubusercontent.com/assets/svg/draft.svg](assets/svg/draft.png)

## General specification

> jijejo's specifications can be summarized in 3 simple rules, nothing else to learn.

### ji = (j)son (i)n

When you call a function, first param is a json with always/only two attributs **`.in`**=`<any>` and `.meta`=`{...}`.

```js
{
    "in":  [] | {} | "string" | true | false | null, // 'in' payload
    "meta": {}, // optionnal meta content
}
```

- see schema json [schemas/jijejo.in.schema.json](schemas/jijejo.in.schema.json)
- see also [jijejo-node](https://github.com/AlbanMinassian/jijejo-node) to quickly write [jsonin()](https://github.com/AlbanMinassian/jijejo-node#jsonin) or validate [jicheck()](https://github.com/AlbanMinassian/jijejo-node#jicheck--json-in-check) your (j)son (i)n

### je = (j)son (e)rr

When function detect an error then it always/only return a json with 4 attributs **`.err`**=`<any>`, `.meta`=`{...}`, `.isout`=`false` and **`.iserr`=`true`**.

```js
{
    "isout": false, // if error then .isout always 'false'
    "iserr": true,  // if error then .iserr always 'true'
    "err":  [] | {} | "string" | true | false | null, // 'err' payload
    "meta": {}, // optionnal meta content
}
```

- see schema json [schemas/jijejo.err.schema.json](schemas/jijejo.err.schema.json)
- see also [jijejo-node](https://github.com/AlbanMinassian/jijejo-node) to quickly write [jsonerr()](https://github.com/AlbanMinassian/jijejo-node#jsonerr) or validate [jecheck()](https://github.com/AlbanMinassian/jijejo-node#jecheck--json-err-check) your (j)son (e)rr

It is advisable to catch all unpredictable errors like this:

```js
try{ 
    // ...your code with unpredictable error ... 
} catch(error) {  
    return { err: { message: error.message }, iserr: true, isout: false, meta: { } }
}
```

### jo = (j)son (o)ut

When function run without error then it always/only return a json with 4 attributs **`.out`**=`<any>`, `.meta`=`{...}`, **`.isout`=`true`** and `.iserr`=`false`.

```js
{
    "iserr": false,  // if ok then .iserr always 'false'
    "isout": true,   // if ok then .isout always 'true'
    "out":  [] | {} | "string" | true | false | null, // 'out' payload
    "meta": {}, // optionnal meta content
}
```

- see schema json [schemas/jijejo.out.schema.json](schemas/jijejo.out.schema.json)
- see also [jijejo-node](https://github.com/AlbanMinassian/jijejo-node) to quickly write [jsonout()](https://github.com/AlbanMinassian/jijejo-node#jsonout) or validate [jocheck()](https://github.com/AlbanMinassian/jijejo-node#jocheck--json-out-check) your (j)son (o)ut

## toolkit

- [jijejo-node](https://github.com/AlbanMinassian/jijejo-node) which follow specification of jijejo [functions](functions.md).

## license

Jijejo's specifications are under license [CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/)

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)
