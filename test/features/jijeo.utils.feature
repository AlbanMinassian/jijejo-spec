# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jsonin_one_param"]
    # --------------------------------------------------------------------
    # test    : test_jsonin_one_param
    # given   : jsonin
    # example : 1
    Scenario: 

        When i call jsonin(param1)
        * with param1
        -----------------------
        null
        -----------------------
        Then jsonin return
        -----------------------
        {
            "in": null,
            "meta": {}
        }
        -----------------------

    # test    : test_jsonin_one_param
    # given   : jsonin
    # example : 2
    Scenario: 

        When i call jsonin(param1)
        * with param1
        -----------------------
        "aa"
        -----------------------
        Then jsonin return
        -----------------------
        {
            "in": "aa",
            "meta": {}
        }
        -----------------------

    # test    : test_jsonin_one_param
    # given   : jsonin
    # example : 3
    Scenario: 

        When i call jsonin(param1)
        * with param1
        -----------------------
        [
            "aa",
            "bb"
        ]
        -----------------------
        Then jsonin return
        -----------------------
        {
            "in": [
                "aa",
                "bb"
            ],
            "meta": {}
        }
        -----------------------

    # --------------------------------------------------------------------
    # test["test_jsonerr_one_param"]
    # --------------------------------------------------------------------
    # test    : test_jsonerr_one_param
    # given   : jsonerr
    # example : 1
    Scenario: 

        When i call jsonerr(param1)
        * with param1
        -----------------------
        null
        -----------------------
        Then jsonerr return
        -----------------------
        {
            "iserr": true,
            "isout": false,
            "err": null,
            "meta": {}
        }
        -----------------------

    # test    : test_jsonerr_one_param
    # given   : jsonerr
    # example : 2
    Scenario: 

        When i call jsonerr(param1)
        * with param1
        -----------------------
        "aa"
        -----------------------
        Then jsonerr return
        -----------------------
        {
            "iserr": true,
            "isout": false,
            "err": "aa",
            "meta": {}
        }
        -----------------------

    # test    : test_jsonerr_one_param
    # given   : jsonerr
    # example : 3
    Scenario: 

        When i call jsonerr(param1)
        * with param1
        -----------------------
        [
            "aa",
            "bb"
        ]
        -----------------------
        Then jsonerr return
        -----------------------
        {
            "iserr": true,
            "isout": false,
            "err": [
                "aa",
                "bb"
            ],
            "meta": {}
        }
        -----------------------

    # --------------------------------------------------------------------
    # test["test_jsonout_one_param"]
    # --------------------------------------------------------------------
    # test    : test_jsonout_one_param
    # given   : jsonout
    # example : 1
    Scenario: 

        When i call jsonout(param1)
        * with param1
        -----------------------
        null
        -----------------------
        Then jsonout return
        -----------------------
        {
            "iserr": false,
            "isout": true,
            "out": null,
            "meta": {}
        }
        -----------------------

    # test    : test_jsonout_one_param
    # given   : jsonout
    # example : 2
    Scenario: 

        When i call jsonout(param1)
        * with param1
        -----------------------
        "aa"
        -----------------------
        Then jsonout return
        -----------------------
        {
            "iserr": false,
            "isout": true,
            "out": "aa",
            "meta": {}
        }
        -----------------------

    # test    : test_jsonout_one_param
    # given   : jsonout
    # example : 3
    Scenario: 

        When i call jsonout(param1)
        * with param1
        -----------------------
        [
            "aa",
            "bb"
        ]
        -----------------------
        Then jsonout return
        -----------------------
        {
            "iserr": false,
            "isout": true,
            "out": [
                "aa",
                "bb"
            ],
            "meta": {}
        }
        -----------------------
