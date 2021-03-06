class phpfpm::conf::php_ini (
  $max_execution_time                       = 30,
  $max_input_time                           = 60,
  $memory_limit                             = '128M',
  $file_uploads                             = 'On',
  $upload_max_filesize                      = '8M',
  $max_file_uploads                         = 20,
  $date_timezone                            = "Europe/Kiev",
  $output_handler                           = undef,
  $zlib_output_compression_level            = undef,
  $zlib_output_handler                      = undef,
  $open_basedir                             = undef,
  $highlight_string                         = undef,
  $highlight_comment                        = undef,
  $highlight_keyword                        = undef,
  $highlight_default                        = undef,
  $highlight_html                           = undef,
  $ignore_user_abort                        = undef,
  $realpath_cache_size                      = undef,
  $realpath_cache_ttl                       = undef,
  $zend_multibyte                           = undef,
  $zend_script_encoding                     = undef,
  $max_input_nesting_level                  = undef,
  $max_input_vars                           = undef,
  $report_zend_debug                        = undef,
  $xmlrpc_errors                            = undef,
  $xmlrpc_error_number                      = undef,
  $docref_root                              = undef,
  $docref_ext                               = undef,
  $error_prepend_string                     = undef,
  $error_append_string                      = undef,
  $error_log                                = undef,
  $arg_separator_output                     = undef,
  $arg_separator_input                      = undef,
  $enable_post_data_reading                 = undef,
  $default_charset                          = undef,
  $always_populate_raw_post_data            = undef,
  $cgi_force_redirect                       = undef,
  $cgi_nph                                  = undef,
  $cgi_redirect_status_env                  = undef,
  $fastcgi_impersonate                      = undef,
  $fastcgi_logging                          = undef,
  $cgi_rfc2616_headers                      = undef,
  $upload_tmp_dir                           = undef,
  $user_agent                               = undef,
  $auto_detect_line_endings                 = undef,
  $date_default_latitude                    = undef,
  $date_default_longitude                   = undef,
  $date_sunrise_zenith                      = undef,
  $date_sunset_zenith                       = undef,
  $filter_default                           = undef,
  $filter_default_flags                     = undef,
  $iconv_iconv_input_encoding               = undef,
  $iconv_iconv_internal_encoding            = undef,
  $iconv_output_encoding                    = undef,
  $intl_default_locale                      = undef,
  $intl_error_level                         = undef,
  $sqlite_assoc_case                        = undef,
  $sqlite3_extension_dir                    = undef,
  $pcre_backtrack_limit                     = undef,
  $pcre_recursion_limit                     = undef,
  $pdo_odbc_connection_pooling              = undef,
  $pdo_odbc_db2_instance_name               = undef,
  $phar_readonly                            = undef,
  $phar_require_hash                        = undef,
  $phar_cache_list                          = undef,
  $sendmail_from                            = undef,
  $mail_force_extra_parameters              = undef,
  $mail_log                                 = undef,
  $odbc_default_db                          = undef,
  $odbc_default_user                        = undef,
  $odbc_default_pw                          = undef,
  $odbc_default_cursortype                  = undef,
  $birdstep_max_links                       = undef,
  $ibase_default_db                         = undef,
  $ibase_default_user                       = undef,
  $ibase_default_password                   = undef,
  $ibase_default_charset                    = undef,
  $mysqli_allow_local_infile                = undef,
  $mysqlnd_net_cmd_buffer_size              = undef,
  $mysqlnd_net_read_buffer_size             = undef,
  $oci8_privileged_connect                  = undef,
  $oci8_max_persistent                      = undef,
  $oci8_persistent_timeout                  = undef,
  $oci8_ping_interval                       = undef,
  $oci8_connection_class                    = undef,
  $oci8_oci8_events                         = undef,
  $oci8_statement_cache_size                = undef,
  $oci8_default_prefetch                    = undef,
  $oci8_old_oci_close_semantics             = undef,
  $sybct_timeout                            = undef,
  $sybct_packet_size                        = undef,
  $sybct_login_timeout                      = undef,
  $sybct_hostname                           = undef,
  $sybct_deadlock_retry_count               = undef,
  $browscap                                 = undef,
  $session_save_path                        = undef,
  $session_cookie_secure                    = undef,
  $session_entropy_length                   = undef,
  $session_entropy_file                     = undef,
  $session_upload_progress_enabled          = undef,
  $session_upload_progress_cleanup          = undef,
  $session_upload_progress_prefix           = undef,
  $session_upload_progress_name             = undef,
  $session_upload_progress_freq             = undef,
  $session_upload_progress_min_freq         = undef,
  $mssql_connect_timeout                    = undef,
  $mssql_timeout                            = undef,
  $mssql_textlimit                          = undef,
  $mssql_textsize                           = undef,
  $mssql_batchsize                          = undef,
  $mssql_datetimeconvert                    = undef,
  $mssql_max_procs                          = undef,
  $mssql_charset                            = undef,
  $assert_active                            = undef,
  $assert_warning                           = undef,
  $assert_bail                              = undef,
  $assert_callback                          = undef,
  $assert_quiet_eval                        = undef,
  $mbstring_language                        = undef,
  $mbstring_internal_encoding               = undef,
  $mbstring_http_input                      = undef,
  $mbstring_http_output                     = undef,
  $mbstring_encoding_translation            = undef,
  $mbstring_detect_order                    = undef,
  $mbstring_substitute_character            = undef,
  $mbstring_func_overload                   = undef,
  $mbstring_strict_detection                = undef,
  $mbstring_http_output_conv_mimetype       = undef,
  $gd_jpeg_ignore_warning                   = undef,
  $exif_encode_unicode                      = undef,
  $exif_decode_unicode_motorola             = undef,
  $exif_decode_unicode_intel                = undef,
  $exif_encode_jis                          = undef,
  $exif_decode_jis_motorola                 = undef,
  $exif_decode_jis_intel                    = undef,
  $tidy_default_config                      = undef,
  $sysvshm_init_mem                         = undef,
  $mcrypt_algorithms_dir                    = undef,
  $mcrypt_modes_dir                         = undef,
  $dba_default_handler                      = undef,
  $curl_cainfo                              = undef,
) {
  file {"/etc/php.ini":
    content     => template('phpfpm/php54.ini.erb'),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }
}