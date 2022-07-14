$system_ports = Get-NetTCPConnection -State Listen

# Edit the location to ports.txt file or just store it in desktop.
$text_port = Get-Content -Path C:\Users\Administrator\Desktop\ports.txt
foreach($port in $text_port){
    if($port -in $system_ports.LocalPort){
        echo $port
     }
}