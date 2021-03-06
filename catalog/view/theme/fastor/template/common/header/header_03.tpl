<?php if($theme_options->get( 'fixed_header' ) == 1) { ?>
<!-- HEADER
	================================================== -->
<div class="fixed-header-1 sticky-header header-type-3">
	<div class="background-header"></div>
	<div class="slider-header">
		<!-- Top of pages -->
		<div id="top" class="<?php if($theme_options->get( 'header_layout' ) == 1) { echo 'full-width'; } elseif($theme_options->get( 'header_layout' ) == 4) { echo 'fixed3 fixed2'; } elseif($theme_options->get( 'header_layout' ) == 3) { echo 'fixed2';  } else { echo 'fixed'; } ?>">
			<div class="background-top"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
					<div class="container">
						<div class="row">		
						     <?php if ($logo) { 
						     $nthumb = str_replace(' ', "%20", ($logo));
						     $nthumb = str_replace(HTTP_SERVER, "", $nthumb);
						     $image_size = getimagesize($nthumb); ?>
						     <!-- Header Left -->
						     <div class="col-sm-4" id="header-left">
						          <!-- Logo -->
						          <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" style="
    max-width: 150px;
"/></a></div>
						     </div>
						     <?php } ?>
						     
							<!-- Header Left -->
							<div class="col-sm-4" id="header-center">
	                                    <?php 
	                                    $menu = $modules_old_opencart->getModules('menu');
	                                    if( count($menu) ) { ?>
	                                         <div class="megamenu-background">
	                                              <div class="">
	                                                   <div class="overflow-megamenu container">
	                                    				<?php 
	                                    				if(count($menu) > 1) echo '<div class="row mega-menu-modules">';
	                                    				$i = 0;
	                                    				    
	                                    				foreach ($menu as $module) {
	                                    				     if($i == 0 && count($menu) > 1) echo '<div class="col-md-3">';
	                                    				     if($i == 1 && count($menu) > 1) echo '<div class="col-md-9">';
	                                    					     echo $module;
	                                    					if(count($menu) > 1 && ($i == 0 || $i == 1)) echo '</div>';
	                                    					if(count($menu) > 1 && $i == 1) echo '</div>';
	                                    					$i++;
	                                    				} ?>
	                                    			</div>
	                                    		</div>
	                                    	</div>
	                                    <?php } elseif($categories) { ?>
	                                    <div class="megamenu-background">
	                                         <div class="">
	                                              <div class="overflow-megamenu container">
	                                    			<div class="container-megamenu horizontal">
	                                    				<div class="megaMenuToggle">
	                                    					<div class="megamenuToogle-wrapper">
	                                    						<div class="megamenuToogle-pattern">
	                                    							<div class="container">
	                                    								<div><span></span><span></span><span></span></div>
	                                    								Navigation
	                                    							</div>
	                                    						</div>
	                                    					</div>
	                                    				</div>
	                                    				
	                                    				<div class="megamenu-wrapper">
	                                    					<div class="megamenu-pattern">
	                                    						<div class="container">
	                                    							<ul class="megamenu shift-up">
	                                    								<?php foreach ($categories as $category) { ?>
	                                    								<?php if ($category['children']) { ?>
	                                    								<li class="with-sub-menu hover"><p class="close-menu"></p><p class="open-menu"></p>
	                                    									<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
	                                    								<?php } else { ?>
	                                    								<li>
	                                    									<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
	                                    								<?php } ?>
	                                    									<?php if ($category['children']) { ?>
	                                    									<?php 
	                                    										$width = '100%';
	                                    										$row_fluid = 3;
	                                    										if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
	                                    										if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
	                                    										if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
	                                    									?>
	                                    									<div class="sub-menu" style="width: <?php echo $width; ?>">
	                                    										<div class="content">
	                                    											<p class="arrow"></p>
	                                    											<div class="row hover-menu">
	                                    												<?php for ($i = 0; $i < count($category['children']);) { ?>
	                                    												<div class="col-sm-<?php echo $row_fluid; ?> mobile-enabled">
	                                    													<div class="menu">
	                                    														<ul>
	                                    														  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
	                                    														  <?php for (; $i < $j; $i++) { ?>
	                                    														  <?php if (isset($category['children'][$i])) { ?>
	                                    														  <li><a href="<?php echo $category['children'][$i]['href']; ?>" class="main-menu"><?php echo $category['children'][$i]['name']; ?></a></li>
	                                    														  <?php } ?>
	                                    														  <?php } ?>
	                                    														</ul>
	                                    													</div>
	                                    												</div>
	                                    												<?php } ?>
	                                    											</div>
	                                    										</div>
	                                    									</div>
	                                    									<?php } ?>
	                                    								</li>
	                                    								<?php } ?>
	                                    							</ul>
	                                    						</div>
	                                    					</div>
	                                    				</div>
	                                    			</div>
	                                    		</div>
	                                    	</div>
	                                    </div>
	                                    <?php
	                                    }
	                                    ?>
							</div>
							
							<!-- Header Right -->
							<div class="col-sm-4" id="header-right">
							     <?php 
							     $top_block = $modules_old_opencart->getModules('top_block');
							     if( count($top_block) ) { 
							     	foreach ($top_block as $module) {
							     		echo $module;
							     	}
							     } ?>
							     
							     <!-- Search -->
                                <div class="search_form"><i class="fa fa-search"></i></div>
                                <!-- ThinkDo Wishlist++ -->
                                <a href="wishlist" class="wish-list-icon"><i class="fa fa-heart"></i></a>
                                <!-- ThinkDo Wishlist End-- -->
							     <a href="<?php echo $account; ?>" class="my-account"><i class="fa fa-user"></i></a>
								<?php echo $cart; ?>
							</div>
						</div>
					</div>
					
					<?php 
					$menu2 = $modules_old_opencart->getModules('menu2');
					if( count($menu2) ) { 
					     echo '<div class="overflow-menu2">';
						foreach ($menu2 as $module) {
							echo $module;
						}
						echo '</div>';
					} ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>

<!-- HEADER
	================================================== -->
<header class="header-type-3">
	<div class="background-header"></div>
	<div class="slider-header">
		<!-- Top of pages -->
		<div id="top" class="<?php if($theme_options->get( 'header_layout' ) == 1) { echo 'full-width'; } elseif($theme_options->get( 'header_layout' ) == 4) { echo 'fixed3 fixed2'; } elseif($theme_options->get( 'header_layout' ) == 3) { echo 'fixed2';  } else { echo 'fixed'; } ?>">
			<div class="background-top"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
				     <div class="top-bar hidden-xs">
				          <div class="container">
						       <div class="hidden-xs">
				               <div class="hedertest">
							   <a href="mailto:info@kore-shop.ru"><span style="margin-right: 25px;"><i class="fa fa-envelope-o" aria-hidden="true" style="margin-right: 5px;color: #f9b1b5;"></i>info@kore-shop.ru</span></a>
							   <a href="tel:+79164521224"><span><i class="fa fa-phone " aria-hidden="true" style="margin-right: 5px;color: #f9b1b5;"></i>+7 (916) 452-12-24</span></a>
							   </div>
							   </div>
							   <!-- Links -->
				               <ul class="menu">
								<li><a href="about_us">?? ????????????????</a></li>
								<li><a href="delivery">????????????????</a></li>
								<li><a href="oplata">????????????</a></li>
				               	<li><a href="wishlist" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
				               	<li><a href="checkout"><?php echo $text_checkout; ?></a></li>
				               	<?php if ($logged) { ?>
				               	<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				               	<?php } ?>
				               </ul>
				               
				               <?php echo $currency.$language; ?>
				          </div>
				     </div>
				     
					<div class="container">
						<div class="row thinkDo-mobile-menu-row">
						     <?php if ($logo) { 
						     $nthumb = str_replace(' ', "%20", ($logo));
						     $nthumb = str_replace(HTTP_SERVER, "", $nthumb);
						     $image_size = getimagesize($nthumb); ?>
						     <!-- Header Left -->
						     <div class="col-sm-4" id="header-left">
						          <!-- Logo -->
						          <div class="logo">
                                      <a href="<?php echo $home; ?>">
                                          <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" style="max-width: 150px;"/>
                                      </a>
                                  </div>
			                      <div class="hidden-xs hidden-sm hidden-md hidden-lg hidden-xl" style="margin-top: 10px;">
                                      <a href="tel:+79164521224">
                                          <span>
                                              <i class="fa fa-phone " aria-hidden="true" style="margin-right: 5px;color: #f9b1b5;"></i>
                                              +7 (916) 452-12-24
                                          </span>
                                      </a>
                                  </div>	 
							 </div>
						     <?php } ?>
						     
							<!-- Header Left -->
							<div class="col-sm-4" id="header-center">
                                        <?php 
                                        $menu = $modules_old_opencart->getModules('menu');
                                        if( count($menu) ) { ?>
                                             <div class="megamenu-background">
                                                  <div class="">
                                                       <div class="overflow-megamenu container">
                                        				<?php 
                                        				if(count($menu) > 1) echo '<div class="row mega-menu-modules">';
                                        				$i = 0;
                                        				    
                                        				foreach ($menu as $module) {
                                        				     if($i == 0 && count($menu) > 1) echo '<div class="col-md-3">';
                                        				     if($i == 1 && count($menu) > 1) echo '<div class="col-md-9">';
                                        					     echo $module;
                                        					if(count($menu) > 1 && ($i == 0 || $i == 1)) echo '</div>';
                                        					if(count($menu) > 1 && $i == 1) echo '</div>';
                                        					$i++;
                                        				} ?>
                                        			</div>
                                        		</div>
                                        	</div>
                                        <?php } elseif($categories) { ?>
                                        <div class="megamenu-background">
                                             <div class="">
                                                  <div class="overflow-megamenu container">
                                        			<div class="container-megamenu horizontal">
                                        				<div class="megaMenuToggle">
                                        					<div class="megamenuToogle-wrapper">
                                        						<div class="megamenuToogle-pattern">
                                                                    <div class="container">
                                                                        <div><span></span><span></span><span></span></div>
                                                                        Navigation
                                                                    </div>
                                        						</div>
                                        					</div>
                                        				</div>
                                        				
                                        				<div class="megamenu-wrapper">
                                        					<div class="megamenu-pattern">
                                        						<div class="container">
                                        							<ul class="megamenu shift-up">
                                        								<?php foreach ($categories as $category) { ?>
                                        								<?php if ($category['children']) { ?>
                                        								<li class="with-sub-menu hover"><p class="close-menu"></p><p class="open-menu"></p>
                                        									<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
                                        								<?php } else { ?>
                                        								<li>
                                        									<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
                                        								<?php } ?>
                                        									<?php if ($category['children']) { ?>
                                        									<?php 
                                        										$width = '100%';
                                        										$row_fluid = 3;
                                        										if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
                                        										if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
                                        										if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
                                        									?>
                                        									<div class="sub-menu" style="width: <?php echo $width; ?>">
                                        										<div class="content">
                                        											<p class="arrow"></p>
                                        											<div class="row hover-menu">
                                        												<?php for ($i = 0; $i < count($category['children']);) { ?>
                                        												<div class="col-sm-<?php echo $row_fluid; ?> mobile-enabled">
                                        													<div class="menu">
                                        														<ul>
                                        														  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                        														  <?php for (; $i < $j; $i++) { ?>
                                        														  <?php if (isset($category['children'][$i])) { ?>
                                        														  <li><a href="<?php echo $category['children'][$i]['href']; ?>" class="main-menu"><?php echo $category['children'][$i]['name']; ?></a></li>
                                        														  <?php } ?>
                                        														  <?php } ?>
                                        														</ul>
                                        													</div>
                                        												</div>
                                        												<?php } ?>
                                        											</div>
                                        										</div>
                                        									</div>
                                        									<?php } ?>
                                        								</li>
                                        								<?php } ?>
                                        							</ul>
                                        						</div>
                                        					</div>
                                        				</div>
                                        			</div>
                                        		</div>
                                        	</div>
                                        </div>
                                        <?php
                                        }
                                        ?>
							</div>
						
							<!-- Header Right -->
							<div class="hidden-xs visible-sm-inline-block col-sm-4" id="header-right">
							     <?php 
							     $top_block = $modules_old_opencart->getModules('top_block');
							     if( count($top_block) ) { 
							     	foreach ($top_block as $module) {
							     		echo $module;
							     	}
							     } ?>
							     
							     <!-- Search -->
                                <div class="search_form"><i class="fa fa-search"></i></div>
                                <!-- ThinkDo Wishlist++ -->
                                <a href="wishlist" class="wish-list-icon"><i class="fa fa-heart"></i></a>
                                <!-- ThinkDo Wishlist-- -->
							     <a href="<?php echo $account; ?>" class="my-account"><i class="fa fa-user"></i></a>
								<?php echo $cart; ?>
							</div>
						</div>
					</div>
					
					<?php 
					$menu2 = $modules_old_opencart->getModules('menu2');
					if( count($menu2) ) { 
					     echo '<div class="overflow-menu2">';
						foreach ($menu2 as $module) {
							echo $module;
						}
						echo '</div>';
					} ?>
				</div>
			</div>
		</div>
	</div>
	
	<?php $slideshow = $modules_old_opencart->getModules('slideshow'); ?>
	<?php  if(count($slideshow)) { ?>
	<!-- Slider -->
	<div id="slider" class="<?php if($theme_options->get( 'slideshow_layout' ) == 1) { echo 'full-width'; } elseif($theme_options->get( 'slideshow_layout' ) == 4) { echo 'fixed3 fixed2'; } elseif($theme_options->get( 'slideshow_layout' ) == 3) { echo 'fixed2'; } else { echo 'fixed'; } ?>">
		<div class="background-slider"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<?php foreach($slideshow as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php } ?>
</header>