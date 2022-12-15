<?php function create_shortcode_itemblog()
{ ?>
    <div class="section-blog-box">
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
                <div class="head-item">
                    <div class="item author-name"><?= get_the_author(  ); ?></div>
                    <div class="item date"><?= get_the_date('d/m/Y'); ?></div>
                    <div class="item post-view"><?= getPostViews(get_the_ID()); ?> views</div>
                </div>
               
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
                <!-- <a href="<?php //the_permalink(); ?>" class="btn-read-more" title="<?php //the_title(); ?>">read more </a> -->
            </div>
        </div>
    </div>
<?php }

add_shortcode('itemblog', 'create_shortcode_itemblog'); 