Import-Module .\jobs.ps1

function Invoke-Main($RunJobList) { 

    if ($RunJobList) {
        foreach ($JobName in $RunJobList) {
            if ($JobName) {
                Invoke-Job -JobName $JobName
            }
        }
    }
    else {
        "No jobs to run" | Out-Host
    }

}

"Run main" | Out-Host

Invoke-Main -RunJobList $args