<h1>liste des cours du professeur
    <?php
    use ism\lib\Session;
    echo Session::getSession("data");
    ?></h1>
<table class="table mt-5 container table-bordered">
    <thead>
    <tr>
        <th>cours</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ref as  $info):?>
        <tr>
            <td><?= $info ?></td>
        </tr>
    <?php  endforeach;?>


    </tbody>
</table>