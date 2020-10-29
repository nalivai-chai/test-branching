
function Invoke-Job() {
    param(
        $JobName,
        $JobId,
        $TimeOut
    )

<<<<<<< HEAD
    # Develop over server&client
=======
    # Client change 2
>>>>>>> 8e07055... Add client changes #2

    if ($Timeout) {
        "Run job: $JobName; Timeout: $TimeOut" | Out-Host
    }
    else {
        "Run job: $JobName" | Out-Host
    }

    # Check jobs modules direcotry.
    $JobsDir = Get-ChildItem -Path ./jobs -Directory
    if (-not $JobsDir) {
        "Job modules` directory doesn't exists" | Out-Host
        return $null
    } 
    # TODO: check current job module
    $JobModule = "$JobsDir/$JobName.ps1"

    # Client change
    # TODO: run job module

<<<<<<< HEAD
=======
    # Client change 2

    # Server change
>>>>>>> 8e07055... Add client changes #2
    # Client change

}

function Stop-Job() {
    param(
        $JobName,
        $JobId
    )

    # Develop over serve&client
    #TOTD:get-job status, pid and stopit.

    # Client change 1
    # Client change 2
    
}

function Get-JobStatus() {
    param(
        $JobName,
        $JobId
    )


}
