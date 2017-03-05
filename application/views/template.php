<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
 
<?php 
foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
 
<style type='text/css'>
body
{
    font-family: Arial;
    font-size: 14px;
}
a {
    color: blue;
    display: none;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
    text-decoration: underline;
}
.link-container {
    margin-top: 3em;
    text-align: center;
}
.link-customized {
    display: block;
}
.button-customized {
    padding: 1em;
}
</style>
</head>
<body>
    <div style='height:20px;'></div>  
    <div>
        <?php echo $output; ?>
    </div>

    <div class="link-container">
        <a class="link-customized" href="/monitor">
            <button class="button-customized"> INICIO </button>
        </a>    
    </div> 
</body>
</html>