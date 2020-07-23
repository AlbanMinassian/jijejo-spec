# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jsonerr_no_param"]
    # --------------------------------------------------------------------
    @test=test_jsonerr_no_param
    @given=jsonerr
    @example=1
    Scenario: 

        When i call jsonerr()
        Then jsonerr return error with message
        """
        "missing param"
        """

    # --------------------------------------------------------------------
    # test["test_jsonerr_one_param"]
    # --------------------------------------------------------------------
    @test=test_jsonerr_one_param
    @given=jsonerr
    @example=1
    Scenario: 

        When i call jsonerr(param1json)
        * with param1json
        """
        null
        """
        Then jsonerr return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": null
        }
        """

    @test=test_jsonerr_one_param
    @given=jsonerr
    @example=2
    Scenario: 

        When i call jsonerr(param1json)
        * with param1json
        """
        "aa"
        """
        Then jsonerr return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": "aa"
        }
        """

    @test=test_jsonerr_one_param
    @given=jsonerr
    @example=3
    Scenario: 

        When i call jsonerr(param1json)
        * with param1json
        """
        [
            "aa",
            "bb"
        ]
        """
        Then jsonerr return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": [
                "aa",
                "bb"
            ]
        }
        """

    # --------------------------------------------------------------------
    # test["test_jsonerr_two_param"]
    # --------------------------------------------------------------------
    @test=test_jsonerr_two_param
    @given=jsonerr
    @example=1
    Scenario: 

        When i call jsonerr(param1json, param2json)
        * with param1json
        """
        {}
        """
        * with param2json
        """
        null
        """
        Then jsonerr return error with message
        """
        "meta is not an object"
        """

    @test=test_jsonerr_two_param
    @given=jsonerr
    @example=2
    Scenario: 

        When i call jsonerr(param1json, param2json)
        * with param1json
        """
        {}
        """
        * with param2json
        """
        {
            "hello": "meta"
        }
        """
        Then jsonerr return
        """
        {
            "meta": {
                "hello": "meta"
            },
            "iserr": true,
            "isout": false,
            "err": {}
        }
        """
