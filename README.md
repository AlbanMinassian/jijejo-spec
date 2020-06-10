# jijejo

jijejo is a universal and easy api for all yours applications or libraries.

jijejo = (**j**)son (**i**)n + (**j**)son (**e**)rr + (**j**)son (**o**)ut

## ji = json in

```json
{
    "meta": {...},
    "in": null | [...] | {...} | true | false | "..."
}
```

see [schemas/jijejo.in.schema.json](schemas/jijejo.in.schema.json)

## je = json err

```json
{
    "isout": false,
    "iserr": true,
    "err": null | [...] | {...} | true | false | "..."
}
```

see [schemas/jijejo.err.schema.json](schemas/jijejo.err.schema.json)

## jo = json out

```json
{
    "iserr": false,
    "isout": true,
    "out": null | [...] | {...} | true | false | "..."
}
```

see [schemas/jijejo.out.schema.json](schemas/jijejo.out.schema.json)

## license

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/80x15.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)
