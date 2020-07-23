# --------------------------------------------------------------------
# do not edit !
# content created from file test/jijejo.utils.test.json
# content created with "npm run build_feature"
# --------------------------------------------------------------------
Feature: jijejo utils test

    # --------------------------------------------------------------------
    # test["test_jocheck_no_param"]
    # --------------------------------------------------------------------
    @test=test_jocheck_no_param
    @given=jocheck
    @example=1
    Scenario: 

        When i call jocheck()
        Then jocheck return
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
    # test["test_jocheck_one_param"]
    # --------------------------------------------------------------------
    @test=test_jocheck_one_param
    @given=jocheck
    @example=1
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        null
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=2
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {}
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=3
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": null
        }
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=4
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": null
        }
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=5
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {}
        }
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=6
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true
        }
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=7
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": false
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": "missing .out attribut"
            }
        }
        """

    @test=test_jocheck_one_param
    @given=jocheck
    @example=8
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": false,
            "out": null,
            "err": null
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".err attribut not allow"
            }
        }
        """

    @test=test_jocheck_one_param
    @given=jocheck
    @example=9
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": true,
            "out": null
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".iserr==true not allow"
            }
        }
        """

    @test=test_jocheck_one_param
    @given=jocheck
    @example=10
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": false,
            "iserr": false,
            "out": null
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": true,
            "isout": false,
            "err": {
                "message": ".isout==false not allow"
            }
        }
        """

    @test=test_jocheck_one_param
    @given=jocheck
    @example=11
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": false,
            "out": null,
            "unknow": "param"
        }
        """
        Then jocheck return
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

    @test=test_jocheck_one_param
    @given=jocheck
    @example=ok1
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": false,
            "out": null
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """

    @test=test_jocheck_one_param
    @given=jocheck
    @example=ok2
    Scenario: 

        When i call jocheck(param1json)
        * with param1json
        """
        {
            "meta": {},
            "isout": true,
            "iserr": false,
            "out": [
                null,
                true,
                false,
                [],
                {},
                ""
            ]
        }
        """
        Then jocheck return
        """
        {
            "meta": {},
            "iserr": false,
            "isout": true,
            "out": true
        }
        """
