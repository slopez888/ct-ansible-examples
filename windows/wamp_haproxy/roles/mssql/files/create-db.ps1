# Create the database
set-psdebug -strict
$error[0]|format-list -force
#[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO') | out-null
Add-Type -AssemblyName "Microsoft.SqlServer.Management.SMO"
$srv = new-Object Microsoft.SqlServer.Management.Smo.Server("(local)")
$db = New-Object Microsoft.SqlServer.Management.Smo.Database($srv, "Ansible Demo DB")
$db.Create()

