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

		"corrente_lian":

			Global.adicionar_pista(
				"Corrente de Prata:",
				"A corrente de Lian foi encontrada quebrada na floresta.",
				"Amara"
				
			)
