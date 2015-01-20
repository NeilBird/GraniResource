Import-Module xDSCResourceDesigner
$property = @()
$property += New-xDscResourceProperty -Name Uri -Type String -Attribute Key
$property += New-xDscResourceProperty -Name DestinationPath -Type String -Attribute Required
$property += New-xDscResourceProperty -Name Header -Type Hashtable -Attribute Write
$property += New-xDscResourceProperty -Name ContentType -Type String -Attribute Write
$property += New-xDscResourceProperty -Name Credential -Type PSCredential -Attribute Write
$property += New-xDscResourceProperty -Name UserAgent -Type String -Attribute Write
$property += New-xDscResourceProperty -Name AllowRedirect -Type Boolean -Attribute Write

New-xDscResource -Name Grani_Download -Property $property -Path .\ -ModuleName GraniResource -FriendlyName cDownload -Force