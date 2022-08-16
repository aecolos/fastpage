$pathContent = [Environment]::GetEnvironmentVariable('path', 'Machine')
$myPath = "../../PortableGit/bin"
if ($pathContent -ne $null)
{
  # "Exist in the system!"
  if ($pathContent -split ';'  -contains  $myPath)
  {
    # My path Exists
  }
  else
  {
    sudo setx PATH %PATH%;"../../PortableGit/bin"
  }
}
#
git add .
git commit -m "upload docx"
git pull --rebase origin master
git push origin master