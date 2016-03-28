Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '819021428224772', '657888b55419825a151f4993454f75c4'
    provider :twitter, 	'k8qlGUWpCMvgfhCfqeUAy5dcS', '	lzI7iBg92WVWgViID1rbEPpL0sSWNoQORxCjrmgUVokHaJnOKT'
end