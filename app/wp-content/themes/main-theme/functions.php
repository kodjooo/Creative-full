<?php 

add_image_size( 'calc-thumb', 100, 100, true ); // Кадрирование изображения

add_image_size( 'gallery-project-thumb', 360, 250, true ); // Кадрирование изображения

add_image_size( 'gallery-materials-thumb', 165, 165, true ); // Кадрирование изображения

add_image_size( 'serv-details-thumb', 760, 420, true ); // Кадрирование изображения

add_theme_support( 'custom-logo' );

register_nav_menus( array( 

 'main-menu' => __( 'Main menu' ),

 'sidebar-menu' => __( 'Sidebar menu' ),

 ) );

add_theme_support( 'post-thumbnails' );

//Options page

if( function_exists('acf_add_options_page') ) {

    acf_add_options_page(array(
        'page_title'    => 'Основные настройки сайта',
        'menu_title'    => 'Настройки сайта',
        'menu_slug'     => 'site-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
    acf_add_options_sub_page(array(
        'page_title'    => 'Настройка шапки сайта',
        'menu_title'    => 'Шапка',
        'menu_slug'     => 'header-setting',
        'parent_slug'   => 'site-general-settings',
        'capability'    => 'edit_posts',

    ));
    acf_add_options_sub_page(array(
        'page_title'    => 'Настройка подвала сайта',
        'menu_title'    => 'Подвал',
        'menu_slug'     => 'footer-setting',
        'parent_slug'   => 'site-general-settings',
        'capability'    => 'edit_posts'
    ));
    }

 ?>