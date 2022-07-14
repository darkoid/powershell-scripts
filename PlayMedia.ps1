# Play any media file already supported by windows 10 default player
#

param( $path )

# Use the default player to play. Hide the window.
$startInfo = new-object System.Diagnostics.ProcessStartInfo
$startInfo.fileName = $path
$startInfo.windowStyle = [System.Diagnostics.ProcessWindowStyle]::Hidden
$process = New-Object System.Diagnostics.Process
$process.startInfo = $startInfo
$process.start( )
