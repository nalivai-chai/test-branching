Import-Module .\jobs.ps1

function Invoke-Main($RunJobList) {

    if ($RunJobList) {
        foreach ($JobName in $RunJobList) {
            Invoke-Job -JobName $JobName
        }
    }

}

"Run main" | Out-Host

Invoke-Main -RunJobList $args