$PSDefaultParameterValues['*:Encoding'] = 'utf8'
# à  éditer avec Encoding : Windows 1252

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
    # Création présentation avec confirmation
    $title    = "Création présentation pour $File_Full_Name "
    $question = "Are you sure you want to proceed?"
    $choices  = '&Yes', '&No'
    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 0) {
        $template_file = "..\toppt\template.potx"
        # if file existe 
        if (-not(Test-Path $template_file )){
            $template = "..\gestion-projet\toppt\template.potx"
        }

        toppt $File_Full_Name -t $template
    } 
}

# Paramètre : Nom de fichier makdown
$File_Full_Name=$args[0]

if($File_Full_Name){
    run_toppt($File_Full_Name)
    exit
}else{
    confirm_to_continue("Création des fichiers PowserPoint pour tous les fichers Markdown dans ce dossier")
}

# Création des présentation pwerpoint pour tous les fichiers markdown dans le dossier "."
Get-ChildItem . -Filter *.md | 
Foreach-Object {
    # input
    $FullName = $_.FullName
    $File_Name = $_.Name
    # Write-Host $File_Name 
    run_toppt($File_Name)
}






