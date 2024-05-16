# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# $origin: Znuny - f7ba891e1b180bdf398d34cedde8543f622851e9 - Kernel/System/Web/UploadCache/DB.pm
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Autoload::WebUploadCacheDB;

use Kernel::System::Web::UploadCache::DB;

use strict;
use warnings;
use utf8;

our @ObjectDependencies = (
    'Kernel::System::Log',
);

# disable redefine warnings in this scope
{
    no warnings 'redefine';  ## no critic

    *Kernel::System::Web::UploadCache::DB::_FormIDValidate = sub { ## no critic
        my ( $Self, $FormID ) = @_;

        return if !$FormID;

# ---
# ITSMConfigurationManagement
# ---
#        if ( $FormID !~ m{^ \d+ \. \d+ \. \d+ $}xms ) {

        # Validate FormID of CIAttachments that contains an additional attachment key.
        if ( $FormID !~ m{^ \d+ \. \d+ \. \d+ (\. CIAttachment \. \w+)? $}xms ) {
# ---
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => 'Invalid FormID!',
            );
            return;
        }

        return 1;
    }

}

1;
