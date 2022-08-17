QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civil',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Desempregado',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Polícia',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruta',
                payment = 50
            },
			['1'] = {
                name = 'Agente',
                payment = 75
            },
			['2'] = {
                name = 'Chefe',
                payment = 100
            },
			['3'] = {
                name = 'Comissário',
                payment = 125
            },
			['4'] = {
                name = 'Director Nacional',
				isboss = true,
                payment = 150
            },
        },
	},
	['ambulance'] = {
		label = 'SNS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruta',
                payment = 50
            },
			['1'] = {
                name = 'Paramédico',
                payment = 75
            },
			['2'] = {
                name = 'Doutor',
                payment = 100
            },
			['3'] = {
                name = 'Cirurgião',
                payment = 125
            },
			['4'] = {
                name = 'Director Executivo',
				isboss = true,
                payment = 150
            },
        },
	},
	['realestate'] = {
		label = 'Remax',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Temporário',
                payment = 50
            },
			['1'] = {
                name = 'Efectivo',
                payment = 75
            },
			['2'] = {
                name = 'Gerente',
                payment = 100
            },
			['3'] = {
                name = 'Vice-Presidente',
                payment = 125
            },
			['4'] = {
                name = 'Presidente',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxista',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Temporário',
                payment = 50
            },
			['1'] = {
                name = 'Condutor',
                payment = 75
            },
			['2'] = {
                name = 'Gerente',
                payment = 100
            },
			['3'] = {
                name = 'Vice-Presidente',
                payment = 125
            },
			['4'] = {
                name = 'Cidrino Chefão',
				isboss = true,
                payment = 150
            },
        },
	},
     ['bus'] = {
		label = 'Transdev',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Condutor',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vendedor de Carros',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Temporário',
                payment = 50
            },
			['1'] = {
                name = 'Efectivo',
                payment = 75
            },
			['2'] = {
                name = 'Gerente',
                payment = 100
            },
			['3'] = {
                name = 'Vice-Presidente',
                payment = 125
            },
			['4'] = {
                name = 'Presidente',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Mecânico',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Temporário',
                payment = 50
            },
			['1'] = {
                name = 'Efectivo',
                payment = 75
            },
			['2'] = {
                name = 'Gerente',
                payment = 100
            },
			['3'] = {
                name = 'Vice-Presidente',
                payment = 125
            },
			['4'] = {
                name = 'Presidente',
				isboss = true,
                payment = 150
            },
        },
	},
	['judge'] = {
		label = 'Tribunal',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Juiz',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Advogados',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'CNN',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Jornalista',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Camionista',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Condutor',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Reboque',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Lixeiro',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vindimas',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Temporário',
                payment = 50
            },
        },
	},
    ['miner'] = {
		label = 'Mineiro',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
    ['lumberjack'] = {
		label = 'Lenhador',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Efectivo',
                payment = 50
            },
        },
	},
}
