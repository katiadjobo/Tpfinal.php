<?php 
?>
<h1>liste des cours</h1>
<table class="table mt-5 container table-bordered">
    <thead>
    <tr>
        <th>cours</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ref['data'] as  $info):?>
        <tr>
            <td><?= $info["moduleCours"] ?></td>
        </tr>
    <?php  endforeach;?>


    </tbody>
</table>