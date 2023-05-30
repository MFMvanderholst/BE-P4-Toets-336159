<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Overzicht van Instructeur Gebruikte Voertuigen</title>
</head>
<body>
    <h3><?= $data['title']; ?></h3>

    <br><table>
        <thead>
            <th>Naam Examinatoren</th>
            <th>Datum Examen</th>
            <th>Rijbewijscategoerie </th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag Examen</th>
        </thead>
        <tbody>
        
        <?= $data['rows']; ?>
        
        </tbody>
    </table>
    
</body>
</html>