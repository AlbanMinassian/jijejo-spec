# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jsonin_no_param"]
    # --------------------------------------------------------------------
    @test=test_jsonin_no_param
    @given=jsonin
    @example=1
    Scenario: 

        When i call jsonin()
        Then jsonin return error with message
        """
        "missing param"
        """

    # --------------------------------------------------------------------
    # test["test_jsonin_one_param"]
    # --------------------------------------------------------------------
    @test=test_jsonin_one_param
    @given=jsonin
    @example=1
    Scenario: 

        When i call jsonin(param1json)
        * with param1json
        """
        null
        """
        Then jsonin return
        """
        {
            "meta": {},
            "in": null
        }
        """

    @test=test_jsonin_one_param
    @given=jsonin
    @example=2
    Scenario: 

        When i call jsonin(param1json)
        * with param1json
        """
        "aa"
        """
        Then jsonin return
        """
        {
            "meta": {},
            "in": "aa"
        }
        """

    @test=test_jsonin_one_param
    @given=jsonin
    @example=3
    Scenario: 

        When i call jsonin(param1json)
        * with param1json
        """
        [
            "aa",
            "bb"
        ]
        """
        Then jsonin return
        """
        {
            "meta": {},
            "in": [
                "aa",
                "bb"
            ]
        }
        """

    # --------------------------------------------------------------------
    # test["test_jsonin_two_param"]
    # --------------------------------------------------------------------
    @test=test_jsonin_two_param
    @given=jsonin
    @example=1
    Scenario: 

        When i call jsonin(param1json, param2json)
        * with param1json
        """
        {}
        """
        * with param2json
        """
        null
        """
        Then jsonin return error with message
        """
        "meta is not an object"
        """

    @test=test_jsonin_two_param
    @given=jsonin
    @example=2
    Scenario: 

        When i call jsonin(param1json, param2json)
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
        Then jsonin return
        """
        {
            "meta": {
                "hello": "meta"
            },
            "in": {}
        }
        """
