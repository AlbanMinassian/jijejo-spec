import path from 'path';
import * as fs from 'fs';
const __dirname = path.dirname(import.meta.url).replace("file://", "");
// import { default as jijejo_in_schema_json } from './schemas/jijejo.in.schema.json'; // ok if ``node@12`` OR ``node@14 --experimental-json-modules``
// import { default as jijejo_err_schema_json } from './schemas/jijejo.err.schema.json'; // ok if ``node@12`` OR ``node@14 --experimental-json-modules``
// import { default as jijejo_out_schema_json } from './schemas/jijejo.out.schema.json'; // ok if ``node@12`` OR ``node@14 --experimental-json-modules``
const jijejo_in_schema_json = JSON.parse(fs.readFileSync(path.join(__dirname, '../schemas/jijejo.in.schema.json'), 'utf8'));
const jijejo_err_schema_json = JSON.parse(fs.readFileSync(path.join(__dirname, '../schemas/jijejo.err.schema.json'), 'utf8'));
const jijejo_out_schema_json = JSON.parse(fs.readFileSync(path.join(__dirname, '../schemas/jijejo.out.schema.json'), 'utf8'));
const jijejo_utils_test_json = JSON.parse(fs.readFileSync(path.join(__dirname, '../test/jijejo.utils.test.json'), 'utf8'));

export default {
    schemas: {
        "jijejo.in.schema.json": jijejo_in_schema_json,
        "jijejo.err.schema.json": jijejo_err_schema_json,
        "jijejo.out.schema.json": jijejo_out_schema_json,
    },
    tests: {
        "jijejo.utils.test.json": jijejo_utils_test_json,
    }
}
