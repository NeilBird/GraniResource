Import-Module xDSCResourceDesigner
$property = @()
$property += New-xDscResourceProperty -Name Ensure -Type String -Attribute Key -ValidateSet "Present", "Absent"
$property += New-xDscResourceProperty -Name Execute -Type String -Attribute Write
$property += New-xDscResourceProperty -Name Argument -Type String -Attribute Write
$property += New-xDscResourceProperty -Name TaskName -Type String -Attribute Key
$property += New-xDscResourceProperty -Name TaskPath -Type String -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledAt -Type DateTime[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledTimeSpanDay -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledTimeSpanHour -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledTimeSpanMin -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledDurationDay -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledDurationHour -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name ScheduledDurationMin -Type Sint32[] -Attribute Write
$property += New-xDscResourceProperty -Name Daily -Type Boolean[] -Attribute Write
$property += New-xDscResourceProperty -Name Once -Type Boolean[] -Attribute Write
$property += New-xDscResourceProperty -Name Description -Type String -Attribute Write
$property += New-xDscResourceProperty -Name Credential -Type PSCredential -Attribute Write
$property += New-xDscResourceProperty -Name Disable -Type Boolean -Attribute Write
$property += New-xDscResourceProperty -Name Hidden -Type Boolean -Attribute Write
$property += New-xDscResourceProperty -Name ExecuteTimeLimitTicks -Type Sint64 -Attribute Write
$property += New-xDscResourceProperty -Name Compatibility -Type String -Attribute Write -ValidateSet "At", "Win8", "Win7", "Vista", "V1"
$property += New-xDscResourceProperty -Name Runlevel -Type String -Attribute Write -ValidateSet "Highest", "Limited"
$property += New-xDscResourceProperty -Name Force -Type Boolean -Attribute Write

New-xDscResource -Name Grani_ScheduleTask -Property $property -Path .\ -ModuleName GraniResource -FriendlyName cScheduleTask -Force