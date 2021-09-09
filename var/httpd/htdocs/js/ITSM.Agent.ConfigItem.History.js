// --
// Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
// Copyright (C) 2021 Znuny GmbH, https://znuny.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (GPL). If you
// did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
// --

/*eslint-disable no-window*/

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};
ITSM.Agent.ConfigItem = ITSM.Agent.ConfigItem || {};

/**
 * @namespace ITSM.Agent.ConfigItem.History
 * @memberof ITSM.Agent.ConfigItem
 * @author OTRS AG
 * @description
 *      This namespace contains the special module functions for the config item history.
 */
ITSM.Agent.ConfigItem.History = (function (TargetNS) {

    /*
    * @name Init
    * @memberof ITSM.Agent.ConfigItem.History
    * @function
    * @description
    *      This function initializes the popup.
    */
    TargetNS.Init = function () {
        $('a.LinkZoomView').on('click', function () {
            window.opener.Core.UI.Popup.FirePopupEvent('URL', { URL: $(this).attr('href')});
            Core.UI.Popup.ClosePopup();
        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ConfigItem.History || {}));
