local Translations = {
    error = {
        not_online = 'O jogador não está online',
        wrong_format = 'Formato inválido',
        missing_args = 'Não introduziste todos os argumentos (x, y, z)',
        missing_args2 = 'Todos os argumentos têm de ser preenchidos!',
        no_access = 'Não tens acesso a este comando',
        company_too_poor = 'A tua empresa está falida',
        item_not_exist = 'O item não existe',
        too_heavy = 'Inventário cheio',
        duplicate_license = 'Rockstar License duplicada',
        no_valid_license  = 'Rockstar License não foi encontrada',
        not_whitelisted = 'Não estás whitelisted.'
    },
    success = {},
    info = {
        received_paycheck = 'Recebeste o pagamento de %{value}€',
        job_info = 'Emprego: %{value} | Grau: %{value2} | Serviço: %{value3}',
        gang_info = 'Gang: %{value} | Grau: %{value2}',
        on_duty = 'Agora estás de serviço!',
        off_duty = 'Agora estás fora de serviço!',
        checking_ban = 'Olá %s. Estamos a verificar se estás banido.',
        join_server = 'Bemvindo à NovaEra %s!',
        checking_whitelisted = 'Olá %s. Estamos a verificar a tua prioridade na fila.'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
