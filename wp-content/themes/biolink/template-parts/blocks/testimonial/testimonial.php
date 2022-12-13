<style>
    .au{
        background:rgb(7,11,30);
        color:#fff;
        padding:20px;
    }
</style>
<?php 
    $author = get_field('author') ?: 'Author name';
?>
<p class="au"><?php echo $author; ?></p>