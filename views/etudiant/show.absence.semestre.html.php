<center><h1>liste des absences  du semestre
    <?php
    use ism\lib\Session;
    echo Session::getSession("data"); ?></h1></center>
<table class="table mt-5 container table-bordered">
    <thead>
    <tr>
        <th>date</th>
        <th>cours</th>
        <th>Heure Debut </th>
        <th>Heure FIn </th>
        <th>Nombre d'heure </th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($etudiant as  $info):?>
        <tr>
            <td><?= $info["dateAbsence"] ?></td>
            <td><?= $info["moduleCours"] ?></td>
            <td><?= $info["heureDebutCours"] ?></td>
            <td><?= $info["heureFinCours"] ?></td>
            <td><?= $info["nbrHeureCours"] ?></td>
           


        </tr>
    <?php  endforeach;?>


    </tbody>
</table>
