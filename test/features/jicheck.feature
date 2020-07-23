# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jicheck_no_param"]
    # --------------------------------------------------------------------
    @test=test_jicheck_no_param
    @given=jicheck
    @example=1
    Scenario: 

        When i call jicheck()
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing param"
            }
        }
        """

    # --------------------------------------------------------------------
    # test["test_jicheck_one_param"]
    # --------------------------------------------------------------------
    @test=test_jicheck_one_param
    @given=jicheck
    @example=1
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        null
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "first param is not an object"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=3
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "in": null
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .meta attribut"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=4
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "in": null,
            "meta": null
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".meta attribut is not an object"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=5
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "in": null,
            "meta": {},
            "unknow": "attribute"
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".unknow not allow"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=2a
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {}
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .meta attribut"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=2b
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "meta": {}
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .in attribut"
            }
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=ok1
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "in": null,
            "meta": {}
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """

    @test=test_jicheck_one_param
    @given=jicheck
    @example=ok2
    Scenario: 

        When i call jicheck(param1json)
        * with param1json
        """
        {
            "in": [
                null,
                true,
                false,
                [],
                {},
                ""
            ],
            "meta": {}
        }
        """
        Then jicheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """
