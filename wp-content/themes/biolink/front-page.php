<?php get_header(); ?>
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/page/home/home.css">
<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/plugins/aos/aos.css">
<main id="homepage-wrapper">
<?php if (get_field('banner_status') == true): ?>
    <section id="home-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="banner-left d-flex justify-content-center flex-column" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                        <div class="main-title" >
                            <h2><?php the_field('banner_title'); ?></h2>
                        </div>
                        <div class="ff-section-content">
                            <p><?php the_field('banner_subtitle'); ?></p>
                        </div>
                        <div class=" flex-normal" >
                            <a href="" class="common-btn flex-center">Try it demo</a>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6  col-md-6" data-aos-duration="1000" data-aos-delay="400">
                    <img src="<?php the_field('banner_img'); ?>" alt="">
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>  

<?php if (get_field('feature_status') == true): ?>
<section id="home-feature">
    <div class="container">
        <div class="sub-title text-center " data-aos="fade-up"><?php the_field('feature_subtitle'); ?></div>
        <div class="ff-section-title " data-aos="fade-up">
            <h2 class="text-center"><?php the_field('feature_title'); ?></h2>
        </div>
        <div class="row">
            <?php
                if (have_rows('feature_rp')):
                   $i=200; while (have_rows('feature_rp')) : the_row(); ?>
                       <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="<?php echo $i;?>">
                            <img src="<?php the_sub_field('ft_img'); ?>" alt="">
                            <div class="content text-center">
                                <div class="title"><?php the_sub_field('ft_txt'); ?></div>
                                <div class="sub-title"><?php the_sub_field('ft_subtxt'); ?></div>
                            </div>
                       </div>
                <?php $i=$i+200; endwhile;  else :endif;
            ?>
        </div>
    </div>
</section>
<?php endif; ?>

<?php if (get_field('cus_status') == true): ?>
    <section id="home-customize">
        <div class="container">
            <div class="ff-section-title " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <h2 class="text-center"><?php the_field('cus_title'); ?></h2>
            </div>
            <div class="sub-title text-center " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400" style="max-width:760px;margin: 0px auto 40px;">
                <?php the_field('cus_sub'); ?>
            </div>
            <div class="cus-content">
              <div class="row">
                <div class="col-lg-3 col-md-3">
                    <?php
                        if (have_rows('cus_left')):
                            $i=200; while (have_rows('cus_left')) : the_row(); ?>
                            <div class="item" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="<?php echo $i;?>">
                                    <div class="content text-left">
                                        <div class="title fw-bold"><?php the_sub_field('cus_txt'); ?></div>
                                        <div class="sub-title"><?php the_sub_field('cus_subtxt'); ?></div>
                                    </div>
                            </div>
                        <?php $i=$i+200; endwhile;  else :endif;
                    ?>
                </div>
                <div class="col-lg-6 col-md-6">
                    <img  class="cus-img" src="<?php the_field('cus_center'); ?>" alt="">
                </div>
                <div class="col-lg-3 col-md-3">
                    <?php
                        if (have_rows('cus_right')):
                            $i=200; while (have_rows('cus_right')) : the_row(); ?>
                            <div class="item" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="<?php echo $i;?>">
                                    <div class="content text-left">
                                        <div class="title fw-bold"><?php the_sub_field('cus_txt'); ?></div>
                                        <div class="sub-title"><?php the_sub_field('cus_subtxt'); ?></div>
                                    </div>
                            </div>
                        <?php $i=$i+200; endwhile;  else :endif;
                    ?>
                </div>
              </div>
            </div>
        </div>
    </section>
<?php endif; ?>


<!--Begin  Step Biolink -->
<?php if (get_field('step_status') == true): ?>
    <section id="home-step">
        <div class="container">
            <div class="ff-section-title " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <h2 class="text-center"><?php the_field('step_title'); ?></h2>
            </div>
            <div class="sub-title text-center " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400" style="max-width:760px;margin: 0px auto 40px;">
                <?php the_field('step_sub'); ?>
            </div>
            <div class="row">
                <div class="col-lg-9 col-md-12 mx-auto">
                    <div class="row">
                        <?php  if (have_rows('step_rp')): $i=200; while (have_rows('step_rp')) : the_row(); ?>
                            <div class="col-lg-4 col-md-4 mb-3">
                                <div class="step-item " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="<?php echo $i;?>">
                                    <img src="<?php the_sub_field('img'); ?>" alt="">
                                    <div class="content">
                                        <div class="title"><?php the_sub_field('title'); ?></div>
                                        <div class="sub"><?php the_sub_field('sub'); ?></div>
                                    </div>
                                </div>
                            </div>
                        <?php $i=$i+200; endwhile;  else :endif; ?>
                    </div>
                </div>
               
            </div>
        </div>
    </section>
<?php endif; ?>
<!--End  Step Biolink -->

<?php if (get_field('qa_status') == true): ?>
    <section id="home-qa">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="ff-section-title " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                        <h2 class="text-center"><?php the_field('qa_title'); ?></h2>
                    </div>
                    <div class="sub-title text-center " data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400" style="max-width:760px;margin: 0px auto 40px;">
                        <?php the_field('qa_subtitle'); ?>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="home-accordion">
                        <?php
                            if (have_rows('qa_rp')):
                                $i=200; while (have_rows('qa_rp')) : the_row(); ?>
                               <div class="accordion__item">
                                    <div class="item accordion__title">
                                        <span class="accordion__title-text"><?php the_sub_field('question'); ?></span>
                                        <div class="accordion__arrow accordion__rotate">
                                            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 128 128" style="enable-background:new 0 0 512 512" xml:space="preserve" class=""><g><path id="Down_Arrow_3_" d="m64 88c-1.023 0-2.047-.391-2.828-1.172l-40-40c-1.563-1.563-1.563-4.094 0-5.656s4.094-1.563 5.656 0l37.172 37.172 37.172-37.172c1.563-1.563 4.094-1.563 5.656 0s1.563 4.094 0 5.656l-40 40c-.781.781-1.805 1.172-2.828 1.172z" fill="#000000" data-original="#000000"></path></g></svg>
                                        </div> 
                                    </div>
                                    <div class="accordion__content">    
                                        <?php the_sub_field('answer'); ?>                    
                                    </div>
                                </div>
                            <?php $i=$i+200; endwhile;  else :endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>

</main>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/plugins/aos/aos.js"></script>
<script>AOS.init();</script>
<?php get_footer(); ?>


