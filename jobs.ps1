
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

}
