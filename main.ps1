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

    # TODO: parce args
    # Get params as:
    # --Jobs=Job1,Job2...
    # --Timeout=5 

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

function Invoke-Feature1() {

}

"Run main" | Out-Host

$MainParams = Get-ParamsData -ArgArray $args

Invoke-Main -RunJobList $MainParams.Jobs
