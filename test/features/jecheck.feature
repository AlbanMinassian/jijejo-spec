# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jecheck_no_param"]
    # --------------------------------------------------------------------
    @test=test_jecheck_no_param
    @given=jecheck
    @example=1
    Scenario: 

        When i call jecheck()
        Then jecheck return
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
    # test["test_jecheck_one_param"]
    # --------------------------------------------------------------------
    @test=test_jecheck_one_param
    @given=jecheck
    @example=1
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        null
        """
        Then jecheck return
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

    @test=test_jecheck_one_param
    @given=jecheck
    @example=2
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {}
        """
        Then jecheck return
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

    @test=test_jecheck_one_param
    @given=jecheck
    @example=3
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": null
        }
        """
        Then jecheck return
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

    @test=test_jecheck_one_param
    @given=jecheck
    @example=4
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {}
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .isout attribut"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=5
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .iserr attribut"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=6
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": true
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .err attribut"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=7
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": true,
            "err": null,
            "out": true
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".out attribut not allow"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=8
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": true,
            "err": null
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".isout==true not allow"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=9
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": false,
            "err": null
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".iserr==false not allow"
            }
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=10
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": true,
            "err": null,
            "unknow": "attribute"
        }
        """
        Then jecheck return
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

    @test=test_jecheck_one_param
    @given=jecheck
    @example=ok1
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": true,
            "err": null
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """

    @test=test_jecheck_one_param
    @given=jecheck
    @example=ok2
    Scenario: 

        When i call jecheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": true,
            "err": [
                null,
                true,
                false,
                [],
                {},
                ""
            ]
        }
        """
        Then jecheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """
