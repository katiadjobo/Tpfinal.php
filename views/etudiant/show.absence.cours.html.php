<<center>h1>liste des absences du cours
    <?php
    use ism\lib\Session;
    echo Session::getSession("data")["moduleCours"]; ?></h1></center>
<table class="table mt-5 container table-bordered">
    <thead>
    <tr>
        <th>date</th>
        <th>nombre Heure Cours </th>
        <th>Semestre</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($etudiant as  $info):?>
        <tr>
            <td><?= $info["dateAbsence"] ?></td>
            <td><?= Session::getSession("data")["nbrHeureCours"] ?></td>
            <td><?= Session::getSession("data")["semestreCours"] ?></td>
        </tr>
    <?php  endforeach;?>


    </tbody>
</table>