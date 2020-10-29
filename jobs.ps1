
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
        #TODO: Error No Dir
    } 
    # TODO: check current job module
    # TODO: run job module

}
