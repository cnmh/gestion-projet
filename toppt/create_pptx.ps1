$PSDefaultParameterValues['*:Encoding'] = 'utf8'
# �  �diter avec Encoding : Windows 1252

function confirm_to_continue($message) {
    $title    = $message 
    $question = "Are you sure you want to proceed?"
    $choices  = '&Yes', '&No'
    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 1) {
        exit
    } 
}

function run_toppt($File_Full_Name) {
    # Cr�ation pr�sentation avec confirmation
    $title    = "Cr�ation pr�sentation pour lab $File_Full_Name "
    $question = "Are you sure you want to proceed?"
    $choices  = '&Yes', '&No'
    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 0) {
        toppt $File_Full_Name -t ..\toppt\template.potx
    } 
}

# Param�tre : Nom de fichier makdown
$File_Full_Name=$args[0]

if($File_Full_Name){
    run_toppt($File_Full_Name)
    exit
}else{
    confirm_to_continue("Cr�ation des fichiers PowserPoint pour tous les fichers Markdown dans ce dossier")
}

# Cr�ation des pr�sentation pwerpoint pour tous les fichiers markdown dans le dossier "."
Get-ChildItem . -Filter *.md | 
Foreach-Object {
    # input
    $FullName = $_.FullName
    $File_Name = $_.Name
    # Write-Host $File_Name 
    run_toppt($File_Name)
}






