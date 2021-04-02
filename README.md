# jijejo

Jijejo is a universal and easy api for all yours applications or libraries. Jijejo is a human and light alternative of [json:api](https://jsonapi.org/), [json-ld](https://json-ld.org/), [hal](http://stateless.co/hal_specification.html), [OpenAPI](https://swagger.io/specification/), [GraphQL](https://graphql.org/), [joi](https://github.com/hapijs/joi), [zod](https://github.com/vriad/zod), [yup](https://github.com/jquense/yup), [hydra](http://www.markus-lanthaler.com/hydra/) ... Back to basics to get ahead in your business.

jijejo = (**j**)son (**i**)n + (**j**)son (**e**)rr + (**j**)son (**o**)ut

## ji = json in

```json
{
    "in":  [] | {} | "string" | true | false | null, // 'in' payload
    "meta": {}, // optionnal content
}
```

- see [schemas/jijejo.in.schema.json](schemas/jijejo.in.schema.json)

## je = json err

```json
{
    "isout": false, // if err then .isout always 'false'
    "iserr": true,  // if err then .iserr always 'true'
    "err":  [] | {} | "string" | true | false | null, // 'err' payload
    "meta": {}, // optionnal content
}
```

- see [schemas/jijejo.err.schema.json](schemas/jijejo.err.schema.json)
- see [test/features/jsonerr.feature](test/features/jsonerr.feature)

## jo = json out

```json
{
    "iserr": false,  // if ok then .iserr always 'false'
    "isout": true,   // if ok then .isout always 'true'
    "out":  [] | {} | "string" | true | false | null, // 'out' payload
    "meta": {}, // optionnal content
}
```

- see [schemas/jijejo.out.schema.json](schemas/jijejo.out.schema.json)
- see [test/features/jsonout.feature](test/features/jsonout.feature)

## functions

### creates

#### jsonin

helper to create jsonin. See all tests [test/features/jsonin.feature](test/features/jsonin.feature)

```js
jsonin({"hello", "in"}) // return { meta:{}, in: {"hello", "in"}}
jsonin({"hello", "in"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, in: {"hello", "in"}}
```

#### jsonerr

helper to create jsonerr. See all tests [test/features/jsonerr.feature](test/features/jsonerr.feature)

```js
jsonerr({"hello", "err"}) // return { meta:{}, iserr: true, isout: false, err: {"hello", "err"}}
jsonerr({"hello", "err"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, iserr: true, isout: false, out: {"hello", "err"}}
```

#### jsonout

helper to create jsonout. See all tests [test/features/jsonout.feature](test/features/jsonout.feature)

```js
jsonout({"hello", "out"}) // return { meta:{}, iserr: false, isout: true, out: {"hello", "out"}}
jsonout({"hello", "out"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, iserr: false, isout: true, out: {"hello", "out"}}
```

### checks

#### jicheck = (j)son (i)n (check)

This function must verify jsonin basic attributs. See all tests [test/features/jicheck.feature](test/features/jicheck.feature)

```js
jicheck({}) // return error because missing attribut in
jicheck({in: {} }) // return ok, jsonin is valid
```

#### jecheck = (j)son (e)rr (check)

This function must verify jsonerr basic attributs. See all tests [test/features/jecheck.feature](test/features/jecheck.feature)

```js
jecheck({isout: true, iserr: true, err: {} }) // return error because isout==true
jecheck({isout: false, iserr: true, err: {} }) // return ok, jsonerr is valid
```

#### jocheck = (j)son (o)ut (check)

This function must verify jsonout basic attributs. See all tests [test/features/jocheck.feature](test/features/jocheck.feature)

```js
jocheck({isout: true, iserr: true, out: {} }) // return error because iserr==true
jocheck({isout: true, iserr: false, out: {} }) // return ok, jsonout is valid
```

## license

Jijejo's specifications are under license [CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/)

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)
