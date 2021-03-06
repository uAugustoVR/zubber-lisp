(defun Ler_dados_viagem()
	(terpri)
	(princ "Local do usuario: ")
	(setq Loc_usuario (read-line))
	(terpri)
	(princ "Destino do usuario: ")
	(setq Destino_servico (read-line))
	(terpri)
)

(defun Ler_dados_compras()
	(terpri)
	(princ "Local da compra: ")
	(setq Loc_compras (read-line))
	(terpri)
	(setq Pos_compra (Verif_pos Loc_compras))
	(setq Aux_compra (nth Pos_compra List_local))
	(setq Aux_tipo (Local_rua-Tipo Aux_compra))
	(when (< Aux_tipo 2)
		(princ "O local nao e comercial, digite outro: ")
		(setq Loc_compras (read-line))
		(setq Pos_compra (Verif_pos Loc_compras))
		(setq Aux_compra (nth Pos_compra List_local))
		(setq Aux_tipo (Local_rua-Tipo Aux_compra))
	)
	(terpri)
	(princ "Local de entrega: ")
	(setq Destino_compra (read-line))
	(terpri)
	(princ "Itens vendidos no local: ")
	(terpri)
	(setq Tam_livraria (Tam_lista List_item_livra))
	(setq Tam_supermercado (Tam_lista List_item_super))
	(setq Tam_farmacia (Tam_lista List_item_farm))
	(setq Tam_restaurante (Tam_lista List_item_rest))
	(setq i 0)
	(if (= Aux_tipo 2)
		(dotimes (i (- Tam_livraria 1))
			(setq x (nth i List_item_livra))
			(setq Aux_item_nome (Item_-Nome x))
			(setq Aux_item_preco (Item_-Preco x))
			(princ Aux_item_nome)
			(princ " --------- RS ")
			(princ Aux_item_preco)
			(terpri)
		)
	)
	(if (= Aux_tipo 3)
		(dotimes (i (- Tam_supermercado 1))
			(setq x (nth i List_item_super))
			(setq Aux_item_nome (Item_-Nome x))
			(setq Aux_item_preco (Item_-Preco x))
			(princ Aux_item_nome)
			(princ " --------- RS ")
			(princ Aux_item_preco)
			(terpri)
		)
	)
	(if (= Aux_tipo 4)
		(dotimes (i (- Tam_farmacia 1))
			(setq x (nth i List_item_farm))
			(setq Aux_item_nome (Item_-Nome x))
			(setq Aux_item_preco (Item_-Preco x))
			(princ Aux_item_nome)
			(princ " --------- RS ")
			(princ Aux_item_preco)
			(terpri)
		)
	)
	(if (= Aux_tipo 5)
		(dotimes (i (- Tam_restaurante 1))
			(setq x (nth i List_item_rest))
			(setq Aux_item_nome (Item_-Nome x))
			(setq Aux_item_preco (Item_-Preco x))
			(princ Aux_item_nome)
			(princ " --------- RS ")
			(princ Aux_item_preco)
			(terpri)
		)
	)
	(princ "Numero de itens na lista de compra: ")
	(setq Num_pedidos (read))
	(setq Lista_compras (make-array Num_pedidos :initial-element 0))
	(setq i 0)
	(terpri)
	(princ "Lista de compra:")
	(terpri)
	(setq Valor_total 0)
	(dotimes (i Num_pedidos)
		(setq x (+ i 1))
		(princ x)
		(princ ": ")
		(setq Item (read-line))
		(setf (aref Lista_compras i) Item)
		(setq Pos_preco (Verif_pos_item Item Aux_tipo))
		(if (= Aux_tipo 5)
			(setq Aux_item (nth Pos_preco List_item_rest))
		)
		(if (= Aux_tipo 4)
			(setq Aux_item (nth Pos_preco List_item_farm))
		)
		(if (= Aux_tipo 3)
			(setq Aux_item (nth Pos_preco List_item_super))
		)
		(if (= Aux_tipo 2)
			(setq Aux_item (nth Pos_preco List_item_livra))
		)
		(setq Aux_valor (Item_-preco Aux_item))
		(setq Valor_total (+ Valor_total Aux_valor))
	)
	(terpri)
	(format t "Valor da compra:  ~A" Valor_total)
)

(defun Pedir_servico()
	(terpri)
	(princ "Escolha seu servico:")
	(terpri)
	(princ "1 - Viagem")
	(terpri)
	(princ "2 - Compras")
	(terpri)
	(princ "Opcao: ")
	(setq Tipo_servico (read))
	(if (= Tipo_servico 1)
		(Pedir_viagem)
	)
	(if (= Tipo_servico 2)
		(Pedir_compra)
	)
)
