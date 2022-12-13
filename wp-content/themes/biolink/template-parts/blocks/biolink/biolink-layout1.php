<?php 
    $bio1_img = get_field('bio1_img');
    $bio1_name = get_field('bio1_name');
    $bio1_desc = get_field('bio1_desc');
    $bio1_border = get_field('bio1_border') ? get_field('bio1_border'): 6;
    $bio1_nameColor = get_field('bio1_nameColor') ? get_field('bio1_nameColor'): '#000';
    $bio1_descColor= get_field('bio1_descColor') ? get_field('bio1_descColor'): '#000';
?>
<div class="biolink-layout1">
    <div class="bio-img">
        <img src="<?php echo $bio1_img; ?>" alt="">
    </div>
    <div class="bio-name" style="color:<?php echo  $bio1_nameColor; ?>">
       <?php echo $bio1_name; ?>
       <span><svg style="margin-bottom: -2px" width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M8 0L9.99182 1.3121L12.3696 1.29622L13.3431 3.48797L15.3519 4.77336L14.9979 7.14888L16 9.32743L14.431 11.1325L14.1082 13.5126L11.8223 14.1741L10.277 16L8 15.308L5.72296 16L4.17772 14.1741L1.89183 13.5126L1.569 11.1325L0 9.32743L1.00206 7.14888L0.648112 4.77336L2.65693 3.48797L3.6304 1.29622L6.00818 1.3121L8 0Z" fill="#0095F6"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M10.4036 5.20536L7.18853 8.61884L6.12875 7.49364C5.8814 7.23102 5.46798 7.21864 5.20536 7.466C4.94274 7.71335 4.93036 8.12677 5.17771 8.38939L6.71301 10.0195C6.9709 10.2933 7.40616 10.2933 7.66405 10.0195L11.3546 6.10111C11.6019 5.83848 11.5896 5.42507 11.3269 5.17771C11.0643 4.93036 10.6509 4.94274 10.4036 5.20536Z" fill="white"></path></svg></span>
    </div>
    <div class="bio-desc" style="color:<?php echo  $bio1_descColor; ?>">
        <?php echo wp_trim_words($bio1_desc,10); ?>
    </div>
    <div class="bio-link">
        <?php if (have_rows('bio1_rp')): while (have_rows('bio1_rp')) : the_row(); 
            $bio1_rpIcon = get_sub_field('bio1_rpIcon');
            $bio1_rpText = get_sub_field('bio1_rpText');
            $bio1_rpLink = get_sub_field('bio1_rpLink');
            switch ($bio1_rpIcon) {
                case "bio1Fb":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/facebook.svg';
                    break;
                case "bio1Ins":
                    $bio1_rpIconItem =  get_template_directory_uri().'/template-parts/blocks/biolink/img/instagram.svg';
                    break;
                case "bio1Yt":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/youtube.svg';
                    break;
                case "bio1Tiktok":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/tiktok.svg';
                    break;
                case "bio1Shopee":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/shopee.svg';
                    break;
                case "bio1Zalo":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/zalo.svg';
                    break;
                case "bio1Twitter":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/twitter.svg';
                    break;
                case "bio1Spotify":
                    $bio1_rpIconItem = get_template_directory_uri().'/template-parts/blocks/biolink/img/spotify.svg';
                    break;
                // case "bio1Tw":
                //     $bio1_rpIconItem =  '';
                //     break;
                // case "bio1Spot":
                //     $bio1_rpIconItem =  '';
                //     break;
                case "bio1None":
                    $bio1_rpIconItem =  '';
                break;
                }
        ?>

        <div class="bio-linkItem" style="border-radius:<?php echo $bio1_border.'px'; ?>">
            <a href="<?php echo $bio1_rpLink; ?>" target="_blank">
                <div class="icon"><img src="<?php echo  $bio1_rpIconItem; ?>" alt=""> </div>
                <span class="bio-linkText"><?php echo $bio1_rpText;?></span>
            </a>
        </div>
        <?php endwhile; endif;?>
    </div>
</div>