
        <form action="index.php?route=payment/sadad/send" method="post">
       
          <input type="hidden" name="hide_billing_details" value="true" />
          <div class="buttons">                
           <img src="image/sadad.png"  style="margin-left:580px;margin-top:20px;">

            <div class="right" style="margin-top:-35px;">
           <input type="text"  placeholder="Enter Sadad Account ID" name="sadad" size="25" />
              <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
            </div>
          </div>
        </form>