<?php
// Projet TraceGPS - version web mobile
// fichier : controleurs/CtrlMenu.php
// Rôle : traiter la demande d'accès au menu
// Dernière mise à jour : 01/11/2021 par dP

// on vérifie si le demandeur de cette action est bien authentifié
if ( $_SESSION['niveauConnexion'] == 0) {
    // si le demandeur n'est pas authentifié, il s'agit d'une tentative d'accès frauduleux
    // dans ce cas, on provoque une redirection vers la page de connexion
    header ("Location: index.php?action=Deconnecter");
}
else {
    // connexion du serveur web à la base MySQL
    include_once ('modele/DAO.php');
    $dao = new DAO();

    // Vérification de la force du mot de passe
    include_once ('modele/Outils.php');
    $mdp = $_SESSION['mdp'];

    // Si le mot de passe n'est pas conforme aux nouvelles règles
    if (!Outils::estUnMdpValide($mdp)) {
        // Préparation des données pour la vue VueChangerDeMdp.php
        $nouveauMdp = '';
        $confirmationMdp = '';
        $afficherMdp = 'off';
        $message = 'Pour des raisons de sécurité, nous vous invitons à changer votre mot de passe. Le nouveau mot de passe doit comporter au moins 8 caractères, dont au moins une lettre minuscule, une lettre majuscule et un chiffre !';
        $typeMessage = 'avertissement';
        $themeFooter = $themeProbleme;

        // Affichage de la vue pour changer le mot de passe
        include_once ('vues/VueChangerDeMdp.php');
    }
    else {
        // Si le mot de passe est conforme, afficher le menu normalement
        include_once ('vues/VueMenu.php');
    }

    unset($dao);  // fermeture de la connexion à MySQL
}