// --
// Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
// Copyright (C) 2021 Znuny GmbH, https://znuny.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (GPL). If you
// did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};
ITSM.Agent.ConfigItem = ITSM.Agent.ConfigItem || {};

/**
 * @namespace
 * @exports TargetNS as ITSM.Agent.ConfigItem.Search
 * @description
 *      This namespace contains the special module functions for the search.
 */
ITSM.Agent.ConfigItem.CustomerSearch = (function (TargetNS) {

    /**
     * @name Init
     * @memberof ITSM.Agent.CustomerSearch
     * @function
     * @param {jQueryObject} $Element - The jQuery object of the input field with autocomplete.
     * @description
     *      Initializes the special module functions.
     */
    TargetNS.Init = function () {

        var CustomerSearchItemIDs = Core.Config.Get('CustomerSearchItemIDs'),
            i;

        if (typeof CustomerSearchItemIDs !== 'undefined' && Array.isArray(CustomerSearchItemIDs) && CustomerSearchItemIDs.length) {

            for (i = 0; i < CustomerSearchItemIDs.length; i++) {
                // escape possible colons (:) in element id because jQuery can not handle it in id attribute selectors
                ITSM.Agent.CustomerSearch.Init($("#" + Core.App.EscapeSelector(CustomerSearchItemIDs[i])));
            }
        }
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ConfigItem.CustomerSearch || {}));
