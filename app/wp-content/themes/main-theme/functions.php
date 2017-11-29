<?php 

add_image_size( 'calc-thumb', 100, 100, true ); // Кадрирование изображения

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