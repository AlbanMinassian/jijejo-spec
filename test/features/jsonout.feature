# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jsonout_no_param"]
    # --------------------------------------------------------------------
    @test=test_jsonout_no_param
    @given=jsonout
    @example=1
    Scenario: 

        When i call jsonout()
        Then jsonout return error with message
        """
        "missing param"
        """

    # --------------------------------------------------------------------
    # test["test_jsonout_one_param"]
    # --------------------------------------------------------------------
    @test=test_jsonout_one_param
    @given=jsonout
    @example=1
    Scenario: 

        When i call jsonout(param1json)
        * with param1json
        """
        null
        """
        Then jsonout return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": null
        }
        """

    @test=test_jsonout_one_param
    @given=jsonout
    @example=2
    Scenario: 

        When i call jsonout(param1json)
        * with param1json
        """
        "aa"
        """
        Then jsonout return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": "aa"
        }
        """

    @test=test_jsonout_one_param
    @given=jsonout
    @example=3
    Scenario: 

        When i call jsonout(param1json)
        * with param1json
        """
        [
            "aa",
            "bb"
        ]
        """
        Then jsonout return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": [
                "aa",
                "bb"
            ]
        }
        """

    # --------------------------------------------------------------------
    # test["test_jsonout_two_param"]
    # --------------------------------------------------------------------
    @test=test_jsonout_two_param
    @given=jsonout
    @example=1
    Scenario: 

        When i call jsonout(param1json, param2json)
        * with param1json
        """
        {}
        """
        * with param2json
        """
        null
        """
        Then jsonout return error with message
        """
        "meta is not an object"
        """

    @test=test_jsonout_two_param
    @given=jsonout
    @example=2
    Scenario: 

        When i call jsonout(param1json, param2json)
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
        Then jsonout return
        """
        {
            "meta": {
                "hello": "meta"
            },
            "iserr": false,
            "isout": true,
            "out": {}
        }
        """
