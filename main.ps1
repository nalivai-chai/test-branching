Import-Module .\jobs.ps1

function Invoke-Main($RunJobList) { 

    if ($RunJobList) {
        foreach ($JobName in $RunJobList) {
            if ($JobName) {
                Invoke-Job -JobName $JobName
            }
        }
        "Jobs is started" | Out-Host
    }
    else {
        "No jobs to run" | Out-Host
    }

}

function Get-ParamsData($ArgArray) {

    $Jobs = @()
    foreach ($Job in $ArgArray) {
        if ($Job) {
            $Jobs += $Job
        }
    }

    $params = @{
        Jobs = $Jobs;
        JobsParams = $null
    }

    return $params
}

"Run main" | Out-Host

$MainParams = Get-ParamsData -ArgArray $args

Invoke-Main -RunJobList $MainParams.Jobs
