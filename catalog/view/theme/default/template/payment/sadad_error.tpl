<?php echo $header; ?>
<div class="container">
  
  </ul>
  <div class="row">
   
    <div id="content" class="<?php echo $class; ?>">
      <h3>Error:</h3>
      <p><?php echo $text_message; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo 'continue'; ?></a></div>
      </div>
     </div>
   </div>
</div>
<?php echo $footer; ?>