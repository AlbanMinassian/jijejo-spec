import path from 'path';
import * as fs from 'fs';
import indent_string from 'indent-string';
const __dirname = path.dirname(import.meta.url).replace("file://", "");
import jijejo_spec from '../src/index.mjs'

const contents = [];
contents.push(`# --------------------------------------------------------------------`)
contents.push(`# do not edit !`)
contents.push(`# content created from file test/jijejo.utils.test.json`)
contents.push(`# content created with "npm run build_feature"`)
contents.push(`# --------------------------------------------------------------------`)
contents.push(`Feature: jijejo utils test`)
contents.push(``)

// each test
for (let [key_test, item_test] of Object.entries(jijejo_spec.tests["jijejo.utils.test.json"])) {

    contents.push(`    # --------------------------------------------------------------------`)
    contents.push(`    # test["${key_test}"]`)
    contents.push(`    # --------------------------------------------------------------------`)

    // each example (of this key_test)
    for (let [key_example, item_example] of Object.entries(item_test.examples)) {

        let params = []
        const with_param1 = item_example.hasOwnProperty("param1");
        if ( with_param1 === true) { params.push("param1") }

        contents.push(`    # test    : ${key_test}`)
        contents.push(`    # given   : ${item_test.given}`)
        contents.push(`    # example : ${key_example}`)
        contents.push(`    Scenario: `)
        contents.push(``)
        contents.push(`        When i call ${item_test.given}(${params.join(", ")})`)
        if (with_param1 === true) {
            contents.push(`        * with param1`)
            contents.push(`        -----------------------`)
            contents.push(indent_string(JSON.stringify(item_example.param1, null, 4), 8))
            contents.push(`        -----------------------`)
        }
        contents.push(`        Then ${item_test.given} return`)
        contents.push(`        -----------------------`)
        contents.push(indent_string(JSON.stringify(item_example.expect, null, 4), 8))
        contents.push(`        -----------------------`)
        contents.push(``)

    }

}

const filepath = path.join(__dirname, '../test/features/jijeo.utils.feature');
fs.writeFileSync(filepath, contents.join("\n"), 'utf8');
