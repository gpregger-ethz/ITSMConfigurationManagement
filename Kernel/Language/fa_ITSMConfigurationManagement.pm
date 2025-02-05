# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::fa_ITSMConfigurationManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminDynamicFieldConfigItem.tt
    $Self->{Translation}->{'This field is required and the value must be alphanumeric.'} = '';
    $Self->{Translation}->{'Must be unique and only accepts alphanumeric characters.'} = '';
    $Self->{Translation}->{'This is the order in which this field will be shown on the screens where it is active.'} =
        '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminDynamicFieldConfigItem/Config.tt
    $Self->{Translation}->{'Config item class'} = '';
    $Self->{Translation}->{'The selected config item class is invalid or does not exist.'} =
        '';
    $Self->{Translation}->{'Config item deployment states'} = '';
    $Self->{Translation}->{'Config item link type'} = '';
    $Self->{Translation}->{'Select a link type to enable linking between the ticket and the selected config items. Note that linking is only availabe for dynamic fields of tickets.'} =
        '';
    $Self->{Translation}->{'Config item link source'} = '';
    $Self->{Translation}->{'Config item link removal'} = '';
    $Self->{Translation}->{'Activate this option to remove links between the ticket and config items that are removed from this field.'} =
        '';
    $Self->{Translation}->{'Config item key'} = '';
    $Self->{Translation}->{'These dynamic fields will be filled with values of the same selected config item(s).'} =
        '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMConfigItem.tt
    $Self->{Translation}->{'Change class definition'} = 'تغییر تعریف کلاس';
    $Self->{Translation}->{'Config Item Management'} = 'مدیریت CI';
    $Self->{Translation}->{'Config Item Class'} = '';
    $Self->{Translation}->{'Definition'} = 'تعریف';
    $Self->{Translation}->{'Change'} = 'تغییر';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentDashboardITSMConfigItemGeneric.tt
    $Self->{Translation}->{'Incident State'} = 'وضعیت رخداد';
    $Self->{Translation}->{'Deployment State'} = 'وضعیت نصب';
    $Self->{Translation}->{'Class'} = 'کلاس';
    $Self->{Translation}->{'Deployment State Type'} = 'نوع وضعیت نصب';
    $Self->{Translation}->{'Current Incident State'} = 'وضعیت جاری رخداد';
    $Self->{Translation}->{'Current Incident State Type'} = 'نوع وضعیت جاری رخداد';
    $Self->{Translation}->{'Last changed'} = 'آخرین تغییر';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemAdd.tt
    $Self->{Translation}->{'Filter for Classes'} = 'فیلتر برای کلاس‌ها';
    $Self->{Translation}->{'Select a Class from the list to create a new Config Item.'} = 'کلاسی را برای ساخت یک آیتم پبکربندی جدید انتخا کنید.';
    $Self->{Translation}->{'Config Item'} = 'آیتم پیکربندی';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemBulk.tt
    $Self->{Translation}->{'ITSM ConfigItem Bulk Action'} = '';
    $Self->{Translation}->{'Deployment state'} = '';
    $Self->{Translation}->{'Incident state'} = '';
    $Self->{Translation}->{'Link to another'} = '';
    $Self->{Translation}->{'Invalid Configuration Item number!'} = '';
    $Self->{Translation}->{'The number of another Configuration Item to link with.'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemCustomerCIsWidget.tt
    $Self->{Translation}->{'Customer related config items'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemDelete.tt
    $Self->{Translation}->{'Do you really want to delete this config item?'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemEdit.tt
    $Self->{Translation}->{'The name of this config item'} = 'نام این آیتم‌های پیکربندی';
    $Self->{Translation}->{'Name is already in use by the ConfigItems with the following Number(s): %s'} =
        '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemHistory.tt
    $Self->{Translation}->{'History of Config Item: %s'} = '';
    $Self->{Translation}->{'History Content'} = 'محتوای سابقه';
    $Self->{Translation}->{'Createtime'} = 'زمان ایجاد ';
    $Self->{Translation}->{'Zoom view'} = 'نمای کامل';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemOverviewNavBar.tt
    $Self->{Translation}->{'Context Settings'} = 'تنظیمات مفاد';
    $Self->{Translation}->{'Config Items per page'} = 'تعداد آیتم‌های پیکربندی در هر صفحه';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemOverviewSmall.tt
    $Self->{Translation}->{'A generic ITSM Configuration Item table'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemSearch.tt
    $Self->{Translation}->{'Also search in previous versions?'} = 'در ویرایش‌های قبلی هم جستجو انجام شود؟';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMConfigItemZoom.tt
    $Self->{Translation}->{'Configuration Item'} = 'آیتم پیکربندی';
    $Self->{Translation}->{'Configuration Item Information'} = '';
    $Self->{Translation}->{'Current Deployment State'} = 'وضعیت فعلی نصب';
    $Self->{Translation}->{'Last changed by'} = 'آخرین تغییر به وسیله';
    $Self->{Translation}->{'Show one version'} = 'نمایش یک نسخه';
    $Self->{Translation}->{'Show all versions'} = 'نمایش تمام نسخه‌ها';
    $Self->{Translation}->{'Version Incident State'} = 'وضعیت رخداد نسخه';
    $Self->{Translation}->{'Version Deployment State'} = '';
    $Self->{Translation}->{'Version Number'} = 'شماره نسخه';
    $Self->{Translation}->{'Configuration Item Version Details'} = 'جزئیات نسخه آیتم پیکربندی';
    $Self->{Translation}->{'Property'} = 'ویژگی';

    # Perl Module: Kernel/Modules/AgentITSMConfigItem.pm
    $Self->{Translation}->{'No access to Class is given!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemBulk.pm
    $Self->{Translation}->{'No ConfigItemID is given!'} = '';
    $Self->{Translation}->{'You need at least one selected Configuration Item!'} = '';
    $Self->{Translation}->{'You don\'t have write access to this configuration item: %s.'} =
        '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemDelete.pm
    $Self->{Translation}->{'Config item "%s" not found in database!'} = '';
    $Self->{Translation}->{'Was not able to delete the configitem ID %s!'} = '';
    $Self->{Translation}->{'No version found for ConfigItemID %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemEdit.pm
    $Self->{Translation}->{'No ConfigItemID, DuplicateID or ClassID is given!'} = '';
    $Self->{Translation}->{'No access is given!'} = '';
    $Self->{Translation}->{'No definition was defined for class %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemHistory.pm
    $Self->{Translation}->{'Can\'t show history, no ConfigItemID is given!'} = '';
    $Self->{Translation}->{'Can\'t show history, no access rights given!'} = '';
    $Self->{Translation}->{'New ConfigItem (ID=%s)'} = '';
    $Self->{Translation}->{'New version (ID=%s)'} = '';
    $Self->{Translation}->{'Deployment state updated (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'Incident state updated (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'ConfigItem (ID=%s) deleted'} = '';
    $Self->{Translation}->{'Link to %s (type=%s) added'} = '';
    $Self->{Translation}->{'Link to %s (type=%s) deleted'} = '';
    $Self->{Translation}->{'ConfigItem definition updated (ID=%s)'} = '';
    $Self->{Translation}->{'Name updated (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'Attribute %s updated from "%s" to "%s"'} = '';
    $Self->{Translation}->{'Version %s deleted'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemPrint.pm
    $Self->{Translation}->{'No ConfigItemID or VersionID is given!'} = '';
    $Self->{Translation}->{'Can\'t show config item, no access rights given!'} = '';
    $Self->{Translation}->{'ConfigItemID %s not found in database!'} = '';
    $Self->{Translation}->{'VersionID %s not found in database!'} = '';
    $Self->{Translation}->{'ConfigItem'} = 'آیتم پیکربندی';
    $Self->{Translation}->{'printed by %s at %s'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemSearch.pm
    $Self->{Translation}->{'Invalid ClassID!'} = '';
    $Self->{Translation}->{'No ClassID is given!'} = '';
    $Self->{Translation}->{'No access rights for this class given!'} = '';
    $Self->{Translation}->{'No Result!'} = '';
    $Self->{Translation}->{'Config Item Search Results'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemZoom.pm
    $Self->{Translation}->{'Can\'t show item, no access rights for ConfigItem are given!'} =
        '';
    $Self->{Translation}->{'operational'} = '';
    $Self->{Translation}->{'warning'} = '';
    $Self->{Translation}->{'incident'} = '';
    $Self->{Translation}->{'The deployment state of this config item'} = 'وضعیت نصب این CI';
    $Self->{Translation}->{'The incident state of this config item'} = 'وضعیت رخداد این CI';

    # Perl Module: Kernel/Output/HTML/Dashboard/ITSMConfigItemGeneric.pm
    $Self->{Translation}->{'Shown config items'} = '';

    # Perl Module: Kernel/Output/HTML/ITSMConfigItem/LayoutDate.pm
    $Self->{Translation}->{'Between'} = 'بین';

    # Perl Module: Kernel/System/ImportExport/ObjectBackend/ITSMConfigItem.pm
    $Self->{Translation}->{'Maximum number of one element'} = 'حداکثر شماره یک عنصر';
    $Self->{Translation}->{'Empty fields indicate that the current values are kept'} = 'فیلدهای خالی مشخص می‌کند که مقادیر کنونی باقی خواهند ماند';
    $Self->{Translation}->{'Skipped'} = '';

    # Perl Module: var/packagesetup/ITSMConfigurationManagement.pm
    $Self->{Translation}->{'Model'} = 'مدل';
    $Self->{Translation}->{'Customer Company'} = '';
    $Self->{Translation}->{'Serial Number'} = 'شماره سریال';
    $Self->{Translation}->{'CPU'} = 'سی‌پی‌یو';
    $Self->{Translation}->{'Ram'} = 'رم';
    $Self->{Translation}->{'Hard Disk'} = 'هارد دیسک';
    $Self->{Translation}->{'Capacity'} = 'ظرفیت';
    $Self->{Translation}->{'FQDN'} = '';
    $Self->{Translation}->{'Network Adapter'} = 'کارت شبکه';
    $Self->{Translation}->{'IP over DHCP'} = 'IP از طریق DHCP';
    $Self->{Translation}->{'IP Address'} = 'آدرس IP';
    $Self->{Translation}->{'Graphic Adapter'} = 'کارت گرافیک';
    $Self->{Translation}->{'Other Equipment'} = 'تجهیزات متفرقه';
    $Self->{Translation}->{'Warranty Expiration Date'} = 'تاریخ انقضای ضمانت‌نامه';
    $Self->{Translation}->{'Install Date'} = 'تاریخ نصب';
    $Self->{Translation}->{'Phone 1'} = 'تلفن ۱';
    $Self->{Translation}->{'Phone 2'} = 'تلفن ۲';
    $Self->{Translation}->{'E-Mail'} = '';
    $Self->{Translation}->{'Network Address'} = 'آدرس شبکه';
    $Self->{Translation}->{'Subnet Mask'} = 'Subnet Mask';
    $Self->{Translation}->{'Gateway'} = 'Gateway';
    $Self->{Translation}->{'Licence Type'} = 'نوع اجازه‌نامه';
    $Self->{Translation}->{'Licence Key'} = 'کلید اجازه‌نامه';
    $Self->{Translation}->{'Quantity'} = 'تعداد';
    $Self->{Translation}->{'Expiration Date'} = 'تاریخ انقضا';
    $Self->{Translation}->{'Media'} = 'رسانه';

    # XML Definition: ITSMConfigurationManagement.sopm
    $Self->{Translation}->{'Computer'} = '';
    $Self->{Translation}->{'Hardware'} = '';
    $Self->{Translation}->{'Network'} = '';
    $Self->{Translation}->{'Software'} = '';
    $Self->{Translation}->{'Expired'} = 'منقضی شده';
    $Self->{Translation}->{'Maintenance'} = 'پشتیبانی و نگهداری';
    $Self->{Translation}->{'Pilot'} = 'نمونه آزمایشی';
    $Self->{Translation}->{'Planned'} = 'برنامه ریزی شده';
    $Self->{Translation}->{'Production'} = '';
    $Self->{Translation}->{'Repair'} = 'تعمیر';
    $Self->{Translation}->{'Retired'} = 'بازنشسته شده';
    $Self->{Translation}->{'Review'} = 'بازبینی';
    $Self->{Translation}->{'Test/QA'} = 'تست/تضمین کیفیت';
    $Self->{Translation}->{'Laptop'} = 'کیفی';
    $Self->{Translation}->{'Desktop'} = 'رومیزی';
    $Self->{Translation}->{'PDA'} = 'PDA';
    $Self->{Translation}->{'Server'} = 'سرور';
    $Self->{Translation}->{'Other'} = 'غیره';
    $Self->{Translation}->{'Monitor'} = 'صفحه نمایش';
    $Self->{Translation}->{'Printer'} = 'چاپگر';
    $Self->{Translation}->{'Switch'} = 'سویچ';
    $Self->{Translation}->{'Router'} = 'مسیریاب';
    $Self->{Translation}->{'WLAN Access Point'} = 'نقاط دسترسی WLAN';
    $Self->{Translation}->{'Security Device'} = 'وسایل امنیتی';
    $Self->{Translation}->{'Backup Device'} = 'وسایل پشتیبان‌گیری';
    $Self->{Translation}->{'Mouse'} = 'ماوس';
    $Self->{Translation}->{'Keyboard'} = 'صفحه کلید';
    $Self->{Translation}->{'Camera'} = 'دوربین';
    $Self->{Translation}->{'Beamer'} = 'پرتو افکن';
    $Self->{Translation}->{'Modem'} = 'مودم';
    $Self->{Translation}->{'PCMCIA Card'} = 'کارت PCMCIA';
    $Self->{Translation}->{'USB Device'} = 'تجهیزات USB';
    $Self->{Translation}->{'Docking Station'} = 'ایستگاه اتصال';
    $Self->{Translation}->{'Scanner'} = 'اسکنر';
    $Self->{Translation}->{'Building'} = 'ساختمان';
    $Self->{Translation}->{'Office'} = 'محل کار';
    $Self->{Translation}->{'Floor'} = 'طبقه';
    $Self->{Translation}->{'Room'} = 'اتاق';
    $Self->{Translation}->{'Rack'} = 'قفسه';
    $Self->{Translation}->{'Workplace'} = 'محل کار';
    $Self->{Translation}->{'Outlet'} = 'پریز';
    $Self->{Translation}->{'IT Facility'} = 'تسهیلات IT';
    $Self->{Translation}->{'LAN'} = 'LAN';
    $Self->{Translation}->{'WLAN'} = 'WLAN';
    $Self->{Translation}->{'Telco'} = 'Telco';
    $Self->{Translation}->{'GSM'} = 'GSM';
    $Self->{Translation}->{'Client Application'} = 'برنامه‌های کلاینت';
    $Self->{Translation}->{'Middleware'} = 'میان افزار';
    $Self->{Translation}->{'Server Application'} = 'نرم افزار سرور';
    $Self->{Translation}->{'Client OS'} = 'سیستم عامل کلاینت';
    $Self->{Translation}->{'Server OS'} = 'سیستم عامل سرور';
    $Self->{Translation}->{'Admin Tool'} = 'ابزار مدیریتی';
    $Self->{Translation}->{'User Tool'} = 'ابزار کاربر';
    $Self->{Translation}->{'Embedded'} = 'داخلی';
    $Self->{Translation}->{'Single Licence'} = 'اجازه‌نامه تکی';
    $Self->{Translation}->{'Per User'} = 'به ازای کاربر';
    $Self->{Translation}->{'Per Processor'} = 'به ازای پردازشگر';
    $Self->{Translation}->{'Per Server'} = 'به ازای سرور';
    $Self->{Translation}->{'Per Node'} = 'به ازای کامپیوتر';
    $Self->{Translation}->{'Volume Licence'} = 'اجازه‌نامه حجمی';
    $Self->{Translation}->{'Enterprise Licence'} = 'اجازه‌نامه سازمانی';
    $Self->{Translation}->{'Developer Licence'} = 'اجازه‌نامه توسعه دهنده';
    $Self->{Translation}->{'Demo'} = 'نسخه نمایشی';
    $Self->{Translation}->{'Time Restricted'} = 'دارای محدوده زمانی';
    $Self->{Translation}->{'Freeware'} = 'نرم افزار مجانی';
    $Self->{Translation}->{'Open Source'} = 'کد باز';
    $Self->{Translation}->{'Unlimited'} = 'نامحدود';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ConfigItem.Zoom.js
    $Self->{Translation}->{'Ok'} = 'تایید';

    # SysConfig
    $Self->{Translation}->{'AlternativeTo'} = '';
    $Self->{Translation}->{'Assigned CIs'} = '';
    $Self->{Translation}->{'Autoloading of upload cache.'} = '';
    $Self->{Translation}->{'CIs assigned to customer company'} = '';
    $Self->{Translation}->{'CIs assigned to customer user'} = '';
    $Self->{Translation}->{'CMDB Settings'} = '';
    $Self->{Translation}->{'Check for a unique name only within the same ConfigItem class (\'class\') or globally (\'global\'), which means every existing ConfigItem is taken into account when looking for duplicates.'} =
        '';
    $Self->{Translation}->{'Config Items'} = '';
    $Self->{Translation}->{'Config item (Dropdown)'} = '';
    $Self->{Translation}->{'Config item (Multiselect)'} = '';
    $Self->{Translation}->{'Config item add.'} = '';
    $Self->{Translation}->{'Config item edit.'} = '';
    $Self->{Translation}->{'Config item event module that enables logging to history in the agent interface.'} =
        'ماژول رویداد آیتم پیکربندی که ثبت وقایع در تاریخچه را در واسط کاربری کارشناس فعال می‌سازد.';
    $Self->{Translation}->{'Config item history.'} = '';
    $Self->{Translation}->{'Config item print.'} = '';
    $Self->{Translation}->{'Config item zoom.'} = '';
    $Self->{Translation}->{'ConfigItemNumber'} = '';
    $Self->{Translation}->{'Configuration Item Limit'} = 'محدودیت آیتم پیکربندی';
    $Self->{Translation}->{'Configuration Item limit per page.'} = '';
    $Self->{Translation}->{'Configuration Management Database.'} = '';
    $Self->{Translation}->{'Configuration item bulk module.'} = '';
    $Self->{Translation}->{'Configuration item search backend router of the agent interface.'} =
        '';
    $Self->{Translation}->{'Create and manage the definitions for Configuration Items.'} = 'ساخت و مدیریت تعاریف آیتم‌های پیکربندی';
    $Self->{Translation}->{'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.'} =
        '';
    $Self->{Translation}->{'Define a mapping between CI classes and a Fontawesome icons which are shown in the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to create ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to delete ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to get ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to search ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to update ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines an overview module to show the small view of a configuration item list.'} =
        '';
    $Self->{Translation}->{'Defines regular expressions individually for each ConfigItem class to check the ConfigItem name and to show corresponding error messages.'} =
        '';
    $Self->{Translation}->{'Defines the default subobject of the class \'ITSMConfigItem\'.'} =
        '';
    $Self->{Translation}->{'Defines the number of rows for the CI definition editor in the admin interface.'} =
        '';
    $Self->{Translation}->{'Defines the order of incident states from high (e.g. cricital) to low (e.g. functional).'} =
        '';
    $Self->{Translation}->{'Defines the relevant deployment states where linked tickets can affect the status of a CI.'} =
        '';
    $Self->{Translation}->{'Defines the search limit for the AgentITSMConfigItem screen.'} =
        '';
    $Self->{Translation}->{'Defines the search limit for the AgentITSMConfigItemSearch screen.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the config item overview. This option has no effect on the position of the column. Note: Class column is always available if filter \'All\' is selected.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the config item search. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the config item overview depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that are common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown as defined in the setting ITSMConfigItem::Frontend::AgentITSMConfigItem###ShowColumns.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the config item search depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that are common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown as defined in the setting ITSMConfigItem::Frontend::AgentITSMConfigItem###ShowColumns.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the config item widget depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that are common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown as defined in the setting AgentCustomerInformationCenter::Backend###0060-CIC-ITSMConfigItemCustomerCompany (key DefaultColumns).'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the link table complex view for all CI classes. If there is no entry, then the default columns are shown.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the link table complex view, depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown.'} =
        '';
    $Self->{Translation}->{'Defines which type of link (named from the ticket perspective) can affect the status of a linked CI.'} =
        '';
    $Self->{Translation}->{'Defines which type of link (named from the ticket perspective) is used to link tickets and config items.'} =
        '';
    $Self->{Translation}->{'Defines which type of ticket can affect the status of a linked CI.'} =
        '';
    $Self->{Translation}->{'Delete Configuration Item'} = '';
    $Self->{Translation}->{'DependsOn'} = '';
    $Self->{Translation}->{'Deployment State Color'} = '';
    $Self->{Translation}->{'Duplicate'} = 'تکثیر';
    $Self->{Translation}->{'Dynamic fields administration'} = '';
    $Self->{Translation}->{'DynamicFieldConfigItem'} = '';
    $Self->{Translation}->{'Enable search for config items based on the customer id.'} = '';
    $Self->{Translation}->{'Enable search for config items based on the customer user id.'} =
        '';
    $Self->{Translation}->{'Enables configuration item bulk action feature for the agent frontend to work on more than one configuration item at a time.'} =
        '';
    $Self->{Translation}->{'Enables configuration item bulk action feature only for the listed groups.'} =
        '';
    $Self->{Translation}->{'Enables/disables the functionality to check ConfigItems for unique names. Before enabling this option you should check your system for already existing config items with duplicate names. You can do this with the script bin/znuny.Console.pl Admin::ITSM::Configitem::ListDuplicates.'} =
        '';
    $Self->{Translation}->{'Event Module that links a ConfigItem.'} = '';
    $Self->{Translation}->{'Event module to set configitem-status on ticket-configitem-link.'} =
        '';
    $Self->{Translation}->{'Filters the customer company config items by depoyment states into the customer config item widget.'} =
        '';
    $Self->{Translation}->{'Filters the customer config items by depoyment states into the customer config item widget.'} =
        '';
    $Self->{Translation}->{'ITSM config item overview.'} = '';
    $Self->{Translation}->{'Limit for config item search.'} = '';
    $Self->{Translation}->{'List of events that are available for generic interface event object type ITSMConfigItem.'} =
        '';
    $Self->{Translation}->{'Module to check the group responsible for a class.'} = '';
    $Self->{Translation}->{'Module to check the group responsible for a configuration item.'} =
        '';
    $Self->{Translation}->{'Module to generate ITSM config item statistics.'} = '';
    $Self->{Translation}->{'No longer in use. Do not change. Required due to compatibility with previous package versions.'} =
        '';
    $Self->{Translation}->{'Object backend module registration for the import/export module.'} =
        '';
    $Self->{Translation}->{'Overview.'} = '';
    $Self->{Translation}->{'Parameters for the dashboard backend of the customer company config item overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.'} =
        '';
    $Self->{Translation}->{'Parameters for the deployment states color in the preferences view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Parameters for the deployment states in the preferences view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'پارامترهایی برای گروه‌های دسترسی نمونه مربوط به ویژگی‌های فهرست عمومی';
    $Self->{Translation}->{'Parameters for the pages (in which the configuration items are shown).'} =
        '';
    $Self->{Translation}->{'Permission Group'} = '';
    $Self->{Translation}->{'Registers a ITSMConfigItem-EventModule that will save related attachments.'} =
        '';
    $Self->{Translation}->{'Registers an output filter that shows a config item widget.'} = '';
    $Self->{Translation}->{'RelevantTo'} = '';
    $Self->{Translation}->{'Required group permissions to use the customer config item widget in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item search screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item zoom screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the add ITSM configuration item screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the config item dialog in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the edit ITSM configuration item screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the history ITSM configuration item screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required permissions to use the print ITSM configuration item screen in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required privileges to delete config items.'} = '';
    $Self->{Translation}->{'Search config items.'} = '';
    $Self->{Translation}->{'Selects the configuration item number generator module. "AutoIncrement" increments the configuration item number, the SystemID, the ConfigItemClassID and the counter are used. The format is "SystemID.ConfigItemClassID.Counter", e.g. 1205000004, 1205000005.'} =
        '';
    $Self->{Translation}->{'Set the incident state of a CI automatically when a Ticket is Linked to a CI.'} =
        '';
    $Self->{Translation}->{'Sets the deployment state in the configuration item bulk screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Sets the incident state in the configuration item bulk screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a configuration item with another object in the config item zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a configuration item in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to delete a configuration item in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to duplicate a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to duplicate a configuration item in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to edit a configuration item in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to go back in the configuration item zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to print a configuration item in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to zoom into a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows the config item history (reverse ordered) in the agent interface.'} =
        '';
    $Self->{Translation}->{'The identifier for a configuration item, e.g. ConfigItem#, MyConfigItem#. The default is ConfigItem#.'} =
        '';
    $Self->{Translation}->{'This configuration registers a frontend module for the agent interface that provides the AJAX interface for AgentITSMConfigItemCustomerCIsWidget.'} =
        '';
    $Self->{Translation}->{'Ticket event module that creates and removes links between tickets and config items.'} =
        '';
    $Self->{Translation}->{'Ticket event module that updates DynamicFields.'} = '';
    $Self->{Translation}->{'class'} = '';
    $Self->{Translation}->{'global'} = '';
    $Self->{Translation}->{'postproductive'} = '';
    $Self->{Translation}->{'preproductive'} = '';
    $Self->{Translation}->{'productive'} = '';


    push @{ $Self->{JavaScriptStrings} //= [] }, (
    'No',
    'Ok',
    'Please enter at least one search value or * to find anything.',
    'Settings',
    'Submit',
    'Yes',
    'none',
    );

}

1;
