#define MyAppName "MiFlashTH"
#define MyAppVersion "6.3.318.42"
#define MyAppPublisher "Xiaomi,By.Nairat"
#define MyAppURL "https://www.facebook.com/groups/xiaomiunlock"
#define MyAppExeName "MiFlashTH.exe"
[Setup]
AppId={{F139A9D5-6F38-494A-9DBE-1A97BE079C90}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
; PrivilegesRequired=lowest
OutputDir=F:\Xiaomi\
OutputBaseFilename=MiFlashTH_v6.3.318.42_Setup
SetupIconFile=F:\Xiaomi\Icon.ico
Password=
Compression=lzma
SolidCompression=yes
WizardStyle=modern
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode
[Files]
Source: "F:\Xiaomi\MiFlashTH\MiFlashTH.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Xiaomi\MiFlashTH\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon
[Run]
 Filename: "{app}\MiFlashTH"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: postinstall shellexec skipifsilent runascurrentuser

