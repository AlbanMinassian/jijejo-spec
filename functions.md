# Specification of the functions

> You can find a nodejs implementation of these specifications on [https://github.com/AlbanMinassian/jijejo-node](https://github.com/AlbanMinassian/jijejo-node)

## jsonin()

This function must help to create jsonin. See all features [test/features.jsonin.feature](test/features.jsonin.feature)

```js
jsonin({"hello", "in"}) // return { meta:{}, in: {"hello", "in"}}
jsonin({"hello", "in"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, in: {"hello", "in"}}
```

## jsonerr()

This function must help to create jsonerr. See all features [test/features.jsonerr.feature](test/features.jsonerr.feature)

```js
jsonerr({"hello", "err"}) // return { meta:{}, iserr: true, isout: false, err: {"hello", "err"}}
jsonerr({"hello", "err"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, iserr: true, isout: false, out: {"hello", "err"}}
```

## jsonout()

This function must help to create jsonout. See all features [test/features.jsonout.feature](test/features.jsonout.feature)

```js
jsonout({"hello", "out"}) // return { meta:{}, iserr: false, isout: true, out: {"hello", "out"}}
jsonout({"hello", "out"}, {"hello", "meta"}) // return { meta:{"hello", "meta"}, iserr: false, isout: true, out: {"hello", "out"}}
```

## jicheck() = (j)son (i)n check

This function must verify json "in" basic attributs. See all tests [test/features.jicheck.feature](test/features.jicheck.feature)

```js
jicheck({}); // throw error because missing attribut .in and .meta
jicheck({ in: {}, meta: {} }); // return ok, json "in" is valid
```

## jecheck() = (j)son (e)rr check

This function must verify json "err" basic attributs. See all tests [test/features.jecheck.feature](test/features.jecheck.feature)

```js
jecheck({ isout: true, iserr: true, err: {} }); // throw error because .isout==true and missing .meta
jecheck({ isout: false, iserr: true, err: {}, meta: {} }); // return ok, json "err" is valid
```

## jocheck() = (j)son (o)ut check

This function must verify json "out" basic attributs. See all tests [test/features.jocheck.feature](test/features.jocheck.feature)

```js
jocheck({ isout: true, iserr: true, out: {} }); // throw error because .iserr==true and missing .meta
jocheck({ isout: true, iserr: false, out: {}, meta: {} }); // return ok, json "out" is valid
```

# license

Jijejo's specifications are under license [CC BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/)

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)
