local Translations = {
    error = {
        not_in_range = 'Estás muito longe.'
    },
    success = {
        recived_license = 'Recebeste %{value} por $50'
    },
    info = {
        bilp_text = 'Instituto do Emprego e Serviços da Cidade',
        city_services_menu = '~g~E~w~ - Menu',
        id_card = 'Cartão de Cidadão',
        driver_license = 'Carta de Condução',
        weaponlicense = 'Licença de porte de arma',
        new_job = 'Parabéns, conseguiste um emprego!(%{job})'
    },
    email = {
        mr = 'Sr',
        mrs = 'Sra',
        sender = 'Township',
        subject = 'Driving lessons request',
        message = 'Ola %{gender} %{lastname}<br /><br />We have just received a message that someone wants to take driving lessons<br />If you are willing to teach, please contact us:<br />Name: <strong>%{firstname} %{lastname}</strong><br />Phone Number: <strong>%{phone}</strong><br/><br/>Kind regards,<br />Township Los Santos'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
