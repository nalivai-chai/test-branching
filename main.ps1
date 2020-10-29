Import-Module .\jobs.ps1

function Invoke-Main($RunJobList) { 

    if ($RunJobList) {
        foreach ($JobName in $RunJobList) {
            if ($JobName) {
                Invoke-Job -JobName $JobName
            }
        }
        "All jobs is started" | Out-Host
    }
    else {
        "No jobs to run" | Out-Host
    }

}

function Invoke-AddFunc($FuncName) {

    #TODO: invoke addition function by name

}

"Run main" | Out-Host

Invoke-Main -RunJobList $args