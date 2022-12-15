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