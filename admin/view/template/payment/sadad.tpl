<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> Merchant id</td>
            <td><input type="text" name="sadad_merchant" value="<?php echo $sadad_merchant; ?>" />
              <?php if ($error_merchant) { ?>
              <span class="error"><?php echo $error_merchant; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> Secret Key</td>
            <td><input type="text" name="sadad_security" size='130' value="<?php echo $sadad_security; ?>" />
              <?php if ($error_security) { ?>
              <span class="error"><?php echo $error_security; ?></span>
              <?php } ?></td>
          </tr>
          
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="sadad_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $sadad_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
                
           <tr>
            <td>Sort Order</td>
            <td>
      <select name="sadad_sort_order">
      <option value="0" selected="selected">Asc</option>
      <option value="1">Desc</option>
      </select>
          </tr>

          <tr>
            <td>Geo Zone</td>
            <td><select name="sadad_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $sadad_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>

<tr>
            <td>Payment Action</td>

<td>
              <select name="sadad_live" id="input-sadad_live" >
                <?php if ($sadad_live=='live') { ?>
                <option value="live" selected="selected">Live</option>
                <option value="test">test</option>
                <?php } else { ?>
                <option value="live">live</option>
                <option value="test" selected="selected">Test</option>
                <?php } ?>
              </select>
         </td>

          </tr>
          <tr>
            <td>Enable</td>
            <td><select name="sadad_status">
                <?php if ($sadad_status==1) { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
         
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 