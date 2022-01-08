#Requires -RunAsAdministrator
#Requires -Version 5.1

[CmdletBinding()]
param
(
	[Parameter(Mandatory = $false)]
	[string[]]
	$Functions
)

Clear-Host

$Host.UI.RawUI.WindowTitle = "Sophia Script for Windows 11 v6.0.11 | Made with $([char]::ConvertFromUtf32(0x1F497)) of Windows | $([char]0x00A9) farag & Inestic, 2014$([char]0x2013)2022"
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Manifest\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia -BaseDirectory $PSScriptRoot\Localizations

#region Protection

Checkings -Warning
CreateRestorePoint

#endregion Protection

#region Privacy & Telemetry

DiagTrackService -Disable
DiagnosticDataLevel -Minimal
ErrorReporting -Disable
FeedbackFrequency -Never
ScheduledTasks -Disable
SigninInfo -Disable
LanguageListAccess -Disable
AdvertisingID -Disable
WindowsWelcomeExperience -Show
WindowsTips -Disable
SettingsSuggestedContent -Hide
AppsSilentInstalling -Disable
WhatsNewInWindows -Disable
TailoredExperiences -Disable
BingSearch -Disable

#endregion Privacy & Telemetry

#region UI & Personalization

ThisPC -Show
Windows10FileExplorer -Enable
CheckBoxes -Disable
HiddenItems -Enable
FileExtensions -Show
MergeConflicts -Show
OpenFileExplorerTo -ThisPC
FileExplorerCompactMode -Disable
OneDriveFileExplorerAd -Hide
SnapAssistFlyout -Enable
SnapAssist -Disable
FileTransferDialog -Detailed
RecycleBinDeleteConfirmation -Enable
QuickAccessRecentFiles -Hide
QuickAccessFrequentFolders -Show
TaskbarAlignment -Left
TaskbarSearch -Hide
TaskViewButton -Hide
TaskbarWidgets -Hide
TaskbarChat -Hide
ControlPanelView -LargeIcons
WindowsColorMode -Light
AppColorMode -Light
FirstLogonAnimation -Disable
JPEGWallpapersQuality -Max
TaskManagerWindow -Expanded
RestartNotification -Show
ShortcutsSuffix -Disable
PrtScnSnippingTool -Enable
AppsLanguageSwitch -Disable
AeroShaking -Disable
UnpinTaskbarShortcuts -Shortcuts Edge, Store

#endregion UI & Personalization

#region OneDrive

OneDrive -Uninstall

#endregion OneDrive

#region System

StorageSense -Enable
StorageSenseFrequency -Month
StorageSenseTempFiles -Enable
Hibernation -Enable
TempFolder -Default
Win32LongPathLimit -Enable
BSoDStopError -Enable
AdminApprovalMode -Never
MappedDrivesAppElevatedAccess -Enable
DeliveryOptimization -Disable
WaitNetworkStartup -Disable
WindowsManageDefaultPrinter -Enable
WindowsFeatures -Disable
WindowsCapabilities -Uninstall
UpdateMicrosoftProducts -Enable
LatestInstalled.NET -Disable
NetworkAdaptersSavePower -Disable
IPv6Component -Enable
InputMethod -Default
SetUserShellFolderLocation -Default
WinPrtScrFolder -Desktop
RecommendedTroubleshooting -Default
FoldersLaunchSeparateProcess -Disable
ReservedStorage -Disable
F1HelpPage -Disable
NumLock -Enable
CapsLock -Enable
StickyShift -Disable
Autoplay -Disable
ThumbnailCacheRemoval -Enable
SaveRestartableApps -Disable
NetworkDiscovery -Enable
ActiveHours -Automatically
RestartDeviceAfterUpdate -Enable
DefaultTerminalApp -WindowsTerminal

#endregion System

#region WSL


#endregion WSL

#region Start menu

RunPowerShellShortcut -NonElevated

#endregion Start menu

#region UWP apps

HEIF -Install
CortanaAutostart -Disable
TeamsAutostart -Disable
UninstallUWPApps
CheckUWPAppsUpdates

#endregion UWP apps

#region Gaming

XboxGameBar -Disable
XboxGameTips -Disable
GPUScheduling -Disable
SetAppGraphicsPerformance

#endregion Gaming

#region Scheduled tasks


#endregion Scheduled tasks

#region Microsoft Defender & Security

NetworkProtection -Disable
PUAppsDetection -Enable
DefenderSandbox -Enable
AuditProcess -Enable
CommandLineProcessAudit -Enable
EventViewerCustomView -Enable
PowerShellModulesLogging -Disable
PowerShellScriptsLogging -Disable
AppsSmartScreen -Disable
SaveZoneInformation -Disable
WindowsScriptHost -Enable
WindowsSandbox -Enable
DismissMSAccount
DismissSmartScreenFilter

#endregion Microsoft Defender & Security

#region Context menu

MSIExtractContext -Show
CABInstallContext -Show
RunAsDifferentUserContext -Show
CastToDeviceContext -Show
ShareContext -Show
EditWithPhotosContext -Show
CreateANewVideoContext -Hide
PrintCMDContext -Hide
IncludeInLibraryContext -Show
SendToContext -Show
BitLockerContext -Hide
CompressedFolderNewContext -Show
MultipleInvokeContext -Enable
UseStoreOpenWith -Hide
OpenWindowsTerminalContext -Hide
OpenWindowsTerminalAdminContext -Show
Windows10ContextMenu -Disable

#endregion Context menu

RefreshEnvironment
Errors
