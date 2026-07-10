extends Node

var conectado = false

func _process(delta):

	if conectado:
		return

	var dialog_node = get_tree().root.find_node(
		"DialogNode",
		true,
		false
	)

	if dialog_node:

		dialog_node.connect(
			"dialogic_signal",
			self,
			"_receber_sinal"
		)

		conectado = true

		print("CONECTADO AO DIALOGIC")


func _receber_sinal(valor):

	print("SINAL:", valor)

	match valor:

		"silencio_cabana":

			Global.adicionar_pista(
				"O Silêncio da Cabana",
				"Voltar para casa sempre significou segurança. Hoje encontrei apenas silêncio. A porta estava aberta, a lareira apagada e manchas de sangue levavam até a floresta. Nunca imaginei que sentiria medo de atravessar o lugar onde cresci.\n\nPistas registradas:\n• A cabana foi abandonada às pressas.\n• O rastro de sangue segue para a floresta.\n• Não havia sinais de Lian.",
				"Amara"
			)

		"corrente_lian":

			Global.adicionar_pista(
				"A Corrente de Lian",
				"Encontrei a corrente de prata de Lian caída entre as árvores. O fecho havia sido arrancado à força. Quero acreditar que ele ainda esteja vivo... mas aquela corrente parecia mais um pedido de socorro do que um simples objeto perdido.\n\nPistas registradas:\n• A corrente pertence a Lian.\n• O fecho foi rompido por força.\n• Lian passou por esse caminho.",
				"Amara"
			)

		"sangue_demais":

			Global.adicionar_pista(
				"Sangue Demais",
				"O galpão ainda está gravado na minha memória. Havia sangue suficiente para convencer qualquer pessoa de que era tarde demais. Mesmo assim, encontrei Aslan respirando. Nunca fiquei tão aliviada e tão assustada ao mesmo tempo.\n\nPistas registradas:\n• O ataque aconteceu dentro do galpão.\n• Aslan sobreviveu.\n• O corpo de Lian não foi encontrado.",
				"Amara"
			)

		"tres_meses":

			Global.adicionar_pista(
				"Três Meses Depois",
				"Três meses se passaram, mas parece que aquela noite nunca terminou. A neve desapareceu, mas as respostas continuaram enterradas junto com o inverno.\n\nPistas registradas:\n• Nenhuma informação sobre Lian surgiu durante três meses.\n• A investigação permaneceu estagnada.\n• Ainda existem perguntas sem resposta.",
				"Amara"
			)

		"viajante_errante":

			Global.adicionar_pista(
				"O Viajante Errante",
				"O Viajante Errante não parece uma estalagem comum. As pessoas entram e saem como se compartilhassem segredos que eu ainda desconheço. Todos observam... mas poucos realmente falam.\n\nPistas registradas:\n• Muitos viajantes passam por aqui.\n• O ambiente parece esconder informações.\n• Alguns clientes evitam chamar atenção.",
				"Amara"
			)

		"voz_familiar":

			Global.adicionar_pista(
				"Uma Voz Familiar",
				"Hoje percebi algo mudar em Aslan. Bastou ouvir uma voz para que lembranças daquela noite começassem a voltar. Pela primeira vez, parecia que a memória havia encontrado o caminho de volta até ele.\n\nPistas registradas:\n• Aslan reconheceu a voz de um dos homens.\n• As lembranças começaram a retornar espontaneamente.\n• Os suspeitos estão vivos.",
				"Amara"
			)

		"entrega":

			Global.adicionar_pista(
				"A Entrega",
				"Aslan conseguiu lembrar de fragmentos da conversa entre os homens. Eles falavam sobre uma entrega, um pagamento incompleto e uma antiga rota pela floresta. Pela primeira vez, temos algo concreto para seguir.\n\nPistas registradas:\n• Os homens receberam dinheiro por uma entrega.\n• O pagamento foi apenas parcial.\n• A rota utilizada passa pela floresta.",
				"Amara"
			)

		"tres_homens":

			Global.adicionar_pista(
				"Os Três Homens",
				"Agora sei que aqueles homens não estavam na estalagem por acaso. Aslan os reconheceu imediatamente. Eles podem ser a ligação entre o desaparecimento de Lian e quem está por trás de tudo isso.\n\nPistas registradas:\n• Os três participaram dos acontecimentos daquela noite.\n• Eles frequentam o Viajante Errante.\n• Conhecem mais do que demonstram.",
				"Amara"
			)

		"seguindo_suspeitos":

			Global.adicionar_pista(
				"Seguindo os Suspeitos",
				"Pela primeira vez desde o desaparecimento de Lian, deixamos de seguir rumores. Estamos seguindo pessoas que realmente sabem alguma coisa. Isso assusta... mas também traz esperança.\n\nPistas registradas:\n• Os suspeitos deixaram a estalagem.\n• Decidimos segui-los discretamente.\n• Eles caminham em direção à floresta.",
				"Amara"
			)

		"chamado_vento":

			Global.adicionar_pista(
				"O Chamado do Vento",
				"Quando parei diante da floresta, o vento voltou a soprar daquela forma estranha. Não era apenas uma brisa. Era como se tentasse me mostrar um caminho que meus olhos ainda não conseguiam enxergar.\n\nPistas registradas:\n• O vento mudou ao nos aproximarmos da floresta.\n• A sensação voltou exatamente como antes.\n• Ainda não consigo explicar por que isso acontece.",
				"Amara"
			)
