<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/livesearch.css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet" />
<link href="catalog/view/javascript/selecter/src/jquery.fs.selecter.css" rel="stylesheet" />
<?php if(Utilities::isController('product/product')) { ?>
<link href="catalog/view/theme/default/stylesheet/table.css" rel="stylesheet" />
<link href="catalog/view/javascript/gal/jquery.desoslide.min.css" rel="stylesheet" />
<?php } else if(Utilities::isController('checkout/cart') || Utilities::isController('checkout/checkout')) { ?>
<link href="catalog/view/theme/default/stylesheet/table.css" rel="stylesheet" />
<?php } ?>
</head>
<body <?php if(!Utilities::isController('common/home')) { ?>id="niehome"<? } ?>> 
<div id="black"></div>

<div id="header">
	<div class="poziom">
		<div>

		<?php if ($logo) { ?>
			<?php if(Utilities::isController('checkout/checkout')) { ?>
				<div id="logo" class="autowidth padding0" style="text-align:center;width:100%;">
					<a href="./index.php?route=checkout/cart">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
					</a>
					<h2 style="margin:0">Kasse</h2>
				</div>
			<?php } else { ?>
				<div id="logo" class="autowidth padding0">
					<a href="./">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /> 
					</a>
				</div>
		<?php } ?>
		<?php } ?>  
			<?php if(!Utilities::isController('checkout/checkout')) { ?>
			   <div id="search" class="mobilehide">			   
					<div>
						<div> 
							<div class="search-con">
								<input type="text" id="szuk" class="borderb" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
							</div>
							<div class="selectdiv">
								<select name="category_search" >
									<?php if($categories){ ?>
									<option value="xxx"><?php echo $this->language->get('text_category_search'); ?></option>
									<?php foreach($categories as $category){ ?>
									<option value="<?php echo $category['category_id']; ?>" <?php if(isset($category_search) AND $category['category_id']==$category_search){  echo 'selected="selected"';  }?> ><?php echo $category['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select>
							</div>
							<div>
								<div class="button-search <?php if(Utilities::isController('checkout/cart') || Utilities::isController('product/product')) { ?>intense<?php }?>"><?php echo $this->language->get('text_search'); ?></div>
							</div>
						</div>
					</div>
			  </div>
			  <div class="autowidth mobilehide">
				<div id="account">
				<div>
					<i class="fa fa-user headeri"></i><h4><?php echo $this->language->get('text_witaj'); ?> <span><?php if ($logged) { ?> <?php echo $text_logged; ?> <?php } else { echo $text_welcome; } ?></span></h4>
					<div>						
						<div class="rog"></div>
							<div class="bg shadow">
							<?php if (!$logged) { ?>
							<div class="butki">
								<a href="./index.php?route=account/register" class="button action long"><?php echo $this->language->get('text_register'); ?></a>
								<a href="./index.php?route=account/login" class="button long"><?php echo $this->language->get('text_login'); ?></a>
							</div>
							<ul>
								<li><a href="./index.php?route=account/forgotten"><?php echo $this->language->get('text_forgotten'); ?></a></li>
								<li><a href="./index.php?route=account/address"><?php echo $this->language->get('text_address'); ?></a></li>
								<li><a href="./index.php?route=account/transaction"><?php echo $this->language->get('text_order'); ?></a></li>
								<li><a href="./index.php?route=account/return"><?php echo $this->language->get('text_return'); ?></a></li>
								<li><a href="./index.php?route=account/transaction"><?php echo $this->language->get('text_transaction'); ?></a></li>
								<li><a href="./index.php?route=account/newsletter"><?php echo $this->language->get('text_newsletter'); ?></a></li>
							</ul>
							<?php } else { ?>
							<ul class="border-bot">
								<li><a href="./index.php?route=account/edit"><?php echo $this->language->get('text_edit'); ?></a></li>
								<li><a href="./index.php?route=account/password"><?php echo $this->language->get('text_password'); ?></a></li>
								<li><a href="./index.php?route=account/address"><?php echo $this->language->get('text_address'); ?></a></li>
								<li><a href="./index.php?route=account/transaction"><?php echo $this->language->get('text_order'); ?></a></li>
								<li><a href="./index.php?route=account/return"><?php echo $this->language->get('text_return'); ?></a></li>
								<li><a href="./index.php?route=account/transaction"><?php echo $this->language->get('text_transaction'); ?></a></li>
								<li><a href="./index.php?route=account/newsletter"><?php echo $this->language->get('text_newsletter'); ?></a></li>
							</ul>
							<div class="butki bot">
								<a href="./index.php?route=account/logout" class="button long"><?php echo $this->language->get('text_logout'); ?></a>
							</div>
							<?php } ?>						
						</div>
					</div>
				</div>
				</div>
			  </div>
			  
			<?php echo $cart; ?>   
			<?php } ?>
			<div class="autowidth">
				<div class="mobileshow mobilemenu">					
					<?php if(Utilities::isController('checkout/checkout') || Utilities::isController('checkout/cart')) { } else { ?><a <?php if(Utilities::isController('product/category')) { ?> onClick="jumptomobile();" href="javascript:void(0);" <?php } else { ?> href="http://<?php echo $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; ?>#menumobile" <?php } ?>><i class="fa fa-bars"></i></a><?php } ?>
					<a href="<?php if (!$logged) { ?>./index.php?route=account/login<?php } else { ?>./index.php?route=account<?php } ?>"><i class="fa fa-user"></i></a>
					<a href="./index.php?route=checkout/cart" class="cartmobile"><i class="fa fa-shopping-cart <?php if ($this->cart->hasProducts()) { ?>products-in-cart<?php } ?>"></i><?php if ($this->cart->hasProducts()) { ?> <span><?php echo $this->cart->countProducts(); ?></span><?php } ?></a>
				</div>
			</div>
	  
	  </div>
	</div>
</div>
<?php if(!Utilities::isController('checkout/checkout')) { ?>
<div id="header-menu">
	<div class="poziom">
			<?php if ($categories) { ?>
			<div id="menu">
			  <ul>
				<?php foreach ($categories as $category) { ?>
				<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				  <?php /* if ($category['children']) { ?>
				  <div>
					<?php for ($i = 0; $i < count($category['children']);) { ?>
					<ul>
					  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
					  <?php for (; $i < $j; $i++) { ?>
					  <?php if (isset($category['children'][$i])) { ?>
					  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
					  <?php } ?>
					  <?php } ?>
					</ul>
					<?php } ?>
				  </div>
				  <?php } */ ?>
				</li>
				<?php } ?>
				<?php /* foreach($informations as $information){ ?>
				  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['name']; ?></a></li>
				<?php } */ ?>
			  </ul>
			</div>
		<?php } ?>
	</div>
	</div>
	<div id="searchmobile" class="mobileshow searchhome">
		<div>
			<div class="table"> 
				<div class="search-con ">
					<input type="text" id="szuk2" class="borderb" name="search" placeholder="<?php echo $this->language->get('search_foo'); ?>" value="" lang="pl" />
				</div>
				<div class="buttonbg autowidth <?php if(Utilities::isController('checkout/cart') || Utilities::isController('product/product')) { ?>intense<?php }?>">
					<div class="button-search"><?php echo $this->language->get('text_search'); ?> &nbsp;<i class="fa fa-search"></i></div>
				</div>
			</div>
		</div>
	</div>
<?php } ?>

<div id="container">

<div id="notification"></div>
    <div id="translateBox"></div>

<div class="poziom" style="position:relative; <?php if(Utilities::isController('checkout/cart') || Utilities::isController('checkout/checkout')) { ?>padding:0;<?php } ?>">