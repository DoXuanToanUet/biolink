<?php 
    $obj = get_queried_object();
    $categories = get_the_category();
    // echo "<pre>";
    // var_dump($obj);
   
    // echo "<pre>";
?>
<div class="row">
    <div class="col col-lg-8 col-md-12 mx-auto py-4">
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item " aria-current="page">
                    <a href="<?php  echo home_url();?>">Trang chủ</a>
                </li>
                <li><span>/</span></li>
                <li class="breadcrumb-item active" aria-current="page">
                    <a href="<?php  echo home_url().'/'.$categories[0]->slug;?>"><?php echo wp_trim_words($obj->post_title , 10);?></a>
                </li>
            </ul>
        </nav>
        <h1 class="post-title  mb-4" >
            <?php the_title();?>
        </h1>
        <div class="post-time d-flex mb-2" >
            <div class="item"> <?php echo get_the_date('d/m/Y');?></div>
            <div class="item view">  <?php echo getPostViews(get_the_ID()); ?><?php _e(' views') ?></div>
            <div class="item author-name">  <?php the_author_meta( 'display_name', $obj->post_author );?></div>
        </div>
        <div class="post-content">
            <?php the_content();?>
        </div>
       
    </div>
  
</div>
<div class="row">
<div class="col col-lg-12 col-md-12">
        <div class="post-related my-4">
            <h2 class="text-center"><?php _e('Tin liên quan','biolink'); ?></h2>
            <div class="post-relate-wrap row">
                <?php
                    $rl_args = array(
                        'post_type'     => 'post',
                        'post_status'   => 'publish',
                        'order'         => 'DESC',
                        'orderby'       => 'rand',
                        'posts_per_page'     => 3,// Số bài viết bạn muốn hiển thị.
                        'post__not_in'    => array($obj->ID),
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field'    => 'id',
                                'terms'    => 8,
                            ),
                        ),
                    );
                    $relatePost = new WP_Query($rl_args);
                ?>
                <?php if ($relatePost->have_posts()):
                    while ($relatePost->have_posts()): $relatePost->the_post(); ?>
                        <div class="section-blog-box col-lg-4">
                            <div class="section-blog-box-item">
                                <div class="item-img">
                                    <a href="<?php the_permalink(); ?>" class="imgc"
                                    title="<?php the_title(); ?>">
                                        <?php
                                        if (has_post_thumbnail()):
                                            the_post_thumbnail();
                                        else:?>
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/image-none.png"
                                                alt="<?php the_title(); ?>">
                                        <?php endif; ?>
                                    </a>
                                </div>
                                <div class="item-body">
                                    <div class="item-body-box">
                                        <h3 class="item-body-title">
                                            <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
                                                <?php the_title() ?>
                                            </a>
                                        </h3>
                                        <div class="item-body-text">
                                            <?php echo wp_trim_words(get_the_content(),15); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php
                    endwhile;
                endif;wp_reset_postdata(); ?>
            </div>  
        </div>
    </div>
</div>