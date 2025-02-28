function get-epoch {
    [CmdletBinding()]
    param (
        # Parameter help description
        [Parameter(ValueFromPipeline = $true,ValueFromPipelineByPropertyName = $true)]
        [int]$year = (Get-Date).year,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$month = (Get-Date).month,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$day = (Get-Date).day,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$hour = (Get-Date).hour,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$minute = (Get-Date).minute,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$second = (Get-Date).second,
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$millisecond = (Get-Date).Millisecond
    )
    [Math]::Round((Get-Date -Year $year -Month $month -Day $day -Hour $hour -Minute $minute -Second $second -Millisecond $millisecond ).ToFileTime() / 10000000 - 11644473600)
}


#get-epoch -year 2025 -month 1 -day 1 -hour 00 -minute 00 -second 00 -millisecond 00

# Get-Date 17:00 | get-epoch
