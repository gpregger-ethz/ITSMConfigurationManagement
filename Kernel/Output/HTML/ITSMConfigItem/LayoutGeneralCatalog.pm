# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Output::HTML::ITSMConfigItem::LayoutGeneralCatalog;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::GeneralCatalog',
    'Kernel::System::Log',
    'Kernel::Output::HTML::Layout',
    'Kernel::System::Web::Request'
);

=head1 NAME

Kernel::Output::HTML::ITSMConfigItem::LayoutGeneralCatalog - layout backend module

=head1 DESCRIPTION

All layout functions of general catalog objects

=head2 new()

create an object

    $BackendObject = Kernel::Output::HTML::ITSMConfigItem::LayoutGeneralCatalog->new(
        %Param,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=head2 OutputStringCreate()

create output string

    my $Value = $BackendObject->OutputStringCreate(
        Value => 11,       # (optional)
        Item => $ItemRef,
    );

=cut

sub OutputStringCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Item} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Item!',
        );
        return;
    }

    $Param{Value} //= '';

    # translate
    if ( $Param{Item}->{Input}->{Translation} ) {
        $Param{Value} = $Kernel::OM->Get('Kernel::Output::HTML::Layout')->{LanguageObject}->Translate( $Param{Value} );
    }

    return $Param{Value};
}

=head2 FormDataGet()

get form data as hash reference

    my $FormDataRef = $BackendObject->FormDataGet(
        Key => 'Item::1::Node::3',
        Item => $ItemRef,
    );

=cut

sub FormDataGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Key Item)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    my %FormData;

    # get form data
    if ( $Param{Item}->{Input}->{Multiselect} ) {
        my @ValueArray = $Kernel::OM->Get('Kernel::System::Web::Request')->GetArray( Param => $Param{Key} );
	use Data::Dump qw(dump);
        $FormData{Value} = join(";", @ValueArray);
    }

    else {
        $FormData{Value} = $Kernel::OM->Get('Kernel::System::Web::Request')->GetParam( Param => $Param{Key} );
    }

    # set invalid param
    if ( $Param{Item}->{Input}->{Required} && !$FormData{Value} ) {
        $FormData{Invalid} = 1;
        $Param{Item}->{Form}->{ $Param{Key} }->{Invalid} = 1;
    }

    return \%FormData;
}

=head2 InputCreate()

create a input string

    my $Value = $BackendObject->InputCreate(
        Key => 'Item::1::Node::3',
        Value => 11,                # (optional)
        Item => $ItemRef,
    );

=cut

sub InputCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Key Item)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    my $CSSClass = 'Modernize';
    my $Required = $Param{Required};
    my $Invalid  = $Param{Invalid};
    my $ItemId   = $Param{ItemId};

    if ($Required) {
        $CSSClass .= ' Validate_Required';
    }

    if ($Invalid) {
        $CSSClass .= ' ServerError';
    }

    # translation on or off
    my $Translation = 0;
    if ( $Param{Item}->{Input}->{Translation} ) {
        $Translation = 1;
    }

    # get class list
    my $ClassList = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemList(
        Class => $Param{Item}->{Input}->{Class} || '',
    );

    # reverse the class list
    my %ReverseClassList = reverse %{$ClassList};

    my @SelectedID;

    # get the current value
    if ( defined $Param{Value} ) {
        @SelectedID = split(";", $Param{Value});
    }


    # get the default id by default value
    else {
	push(@SelectedID, $ReverseClassList{ $Param{Item}->{Input}->{ValueDefault} || '' } || '');
    }

    # get multiple switch
    my $MultiSelect = 0;
    if ( defined $Param{Item}->{Input}->{Multiselect} ) {
       $MultiSelect = 1;
    }

    # generate string
    my $String = $Kernel::OM->Get('Kernel::Output::HTML::Layout')->BuildSelection(
        Data         => $ClassList,
        Name         => $Param{Key},
        ID           => $ItemId,
        PossibleNone => 1,
	Multiple     => $MultiSelect,
        Translation  => $Translation,
        SelectedID   => \@SelectedID,
        Class        => $CSSClass,
    );

    return $String;
}

=head2 SearchFormDataGet()

get search form data

    my $Value = $BackendObject->SearchFormDataGet(
        Key => 'Item::1::Node::3',
    );

=cut

sub SearchFormDataGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Key} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Key!',
        );
        return;
    }

    # get form data
    my @Values;
    if ( $Param{Value} ) {
        @Values = @{ $Param{Value} };
    }
    else {
        @Values = $Kernel::OM->Get('Kernel::System::Web::Request')->GetArray( Param => $Param{Key} );
    }

    return \@Values;
}

=head2 SearchInputCreate()

create a search input string

    my $Value = $BackendObject->SearchInputCreate(
        Key => 'Item::1::Node::3',
        Item => $ItemRef,
    );

=cut

sub SearchInputCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Key Item)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    my $Values = $Self->SearchFormDataGet(%Param);

    # translation on or off
    my $Translation = 0;
    if ( $Param{Item}->{Input}->{Translation} ) {
        $Translation = 1;
    }

    # get class list
    my $ClassList = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemList(
        Class => $Param{Item}->{Input}->{Class} || '',
    );

    # generate string
    my $String = $Kernel::OM->Get('Kernel::Output::HTML::Layout')->BuildSelection(
        Data        => $ClassList,
        Name        => $Param{Key},
        Size        => 5,
        Multiple    => 1,
        Translation => $Translation,
        SelectedID  => $Values,
        Class       => 'Modernize',
    );

    return $String;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
