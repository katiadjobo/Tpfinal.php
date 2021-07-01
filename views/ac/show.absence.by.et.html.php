<center><h1>liste des absences  de
    <?php
    use ism\lib\Session;
    echo Session::getSession("data"); ?></h1></center>
<table class="table mt-5 container table-bordered">
    <thead>
    <tr>
       
        <th>cours</th>
        <th>date</th>
        <th>Heure Debut</th>
        <th>Heure fin </th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ac as  $info):?>
        <tr>
            <td><?= $info["dateAbsence"] ?></td>
            <td><?= $info["moduleCours"] ?></td>
            <td><?= $info["heureDebutCours"] ?></td>
            <td><?= $info["heureFinCours"] ?></td>
        </tr>
    <?php  endforeach;?>


    </tbody>
</table>