
function Invoke-Job() {
    param(
        $JobName,
        $JobId,
        $TimeOut
    )

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

    # TODO: run job module

}

function Stop-Job() {
    param(
        $JobName,
        $JobId
    )

    #TOTD:get-job status, pid and stopit.

}

function Get-JobStatus() {
    param(
        $JobName,
        $JobId
    )


}
