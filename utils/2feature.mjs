import path from 'path';
import * as fs from 'fs';
import indent_string from 'indent-string';
const __dirname = path.dirname(import.meta.url).replace("file://", "");
import jijejo_spec from '../src/index.mjs'

// givengrps
const givengrps = [];
for (let [key_test, item_test] of Object.entries(jijejo_spec.tests["jijejo.utils.test.json"])) {
    if (givengrps.includes(item_test.given) === false) { givengrps.push(item_test.given); }
}


// each test (group by given)
for (const givengrp of givengrps) {

    const filename = `${givengrp}.feature`

    const contents = [];
    contents.push(`# --------------------------------------------------------------------`)
    contents.push(`# do not edit !`)
    contents.push(`# content created from file test/jijejo.utils.test.json`)
    contents.push(`# content created with "npm run build_feature"`)
    contents.push(`# --------------------------------------------------------------------`)
    contents.push(`Feature: jijejo utils test`)
    contents.push(``)

    for (let [key_test, item_test] of Object.entries(jijejo_spec.tests["jijejo.utils.test.json"])) {

        if (item_test.given === givengrp) {

            contents.push(`    # --------------------------------------------------------------------`)
            contents.push(`    # test["${key_test}"]`)
            contents.push(`    # --------------------------------------------------------------------`)

            // each example (of this key_test)
            for (let [key_example, item_example] of Object.entries(item_test.examples)) {

                const with_param1json = item_example.hasOwnProperty("param1json");
                const with_param2json = item_example.hasOwnProperty("param2json");
                const with_param3json = item_example.hasOwnProperty("param3json");
                const with_expectjson = item_example.hasOwnProperty("expectjson");
                const with_expecterror = item_example.hasOwnProperty("expecterror");

                let params = []
                if ( with_param1json === true) { params.push("param1json") }
                if ( with_param2json === true) { params.push("param2json") }
                if ( with_param3json === true) { params.push("param3json") }

                contents.push(`    @test=${key_test}`)
                contents.push(`    @given=${item_test.given}`)
                contents.push(`    @example=${key_example}`)
                contents.push(`    Scenario: `)
                contents.push(``)
                contents.push(`        When i call ${item_test.given}(${params.join(", ")})`)

                if (with_param1json === true) {
                    contents.push(`        * with param1json`)
                    contents.push(`        """`)
                    contents.push(indent_string(JSON.stringify(item_example.param1json, null, 4), 8))
                    contents.push(`        """`)
                }
                if (with_param2json === true) {
                    contents.push(`        * with param2json`)
                    contents.push(`        """`)
                    contents.push(indent_string(JSON.stringify(item_example.param2json, null, 4), 8))
                    contents.push(`        """`)
                }
                if (with_param3json === true) {
                    contents.push(`        * with param3json`)
                    contents.push(`        """`)
                    contents.push(indent_string(JSON.stringify(item_example.param2json, null, 4), 8))
                    contents.push(`        """`)
                }

                if (with_expectjson === true) {
                    contents.push(`        Then ${item_test.given} return`)
                    contents.push(`        """`)
                    contents.push(indent_string(JSON.stringify(item_example.expectjson, null, 4), 8))
                    contents.push(`        """`)
                } else if (with_expecterror === true) {
                    contents.push(`        Then ${item_test.given} return error with message`)
                    contents.push(`        """`)
                    contents.push(indent_string(JSON.stringify(item_example.expecterror.message, null, 4), 8))
                    contents.push(`        """`)
                } else  {
                    console.log('@TODO expectXXXX ...');
                    process.exit(1)
                }

                contents.push(``)

            }

        }

    }

    const filepath = path.join(__dirname, `../test/features/${filename}`);
    fs.writeFileSync(filepath, contents.join("\n"), 'utf8');

}
