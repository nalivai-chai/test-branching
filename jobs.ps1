
function Invoke-Job() {
    param(
        $JobName,
        $JobId,
        $TimeOut
    )

    if ($Timeout) {
        "Run job '$JobName' with timeout '$Timeout'" | Out-Host
    }
    else {
        "Run job '$JobName'" | Out-Host
    }

}
