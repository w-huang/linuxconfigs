(sleep $(($1 * 60));  sed s/NOTIFICATIONTEXT/"$2"/g ~/test.ps1 | powershell.exe; exit;)&
