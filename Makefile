ifndef save
$(error save is not set)
endif


power:
	python train_tabular.py --data power --nonlinearity tanh --nhidden 3 --hdim_factor 10 --num_blocks 5 --batch_size 10000 --save $(save)


gas:
	python train_tabular.py --data gas --nonlinearity tanh --nhidden 3 --hdim_factor 20 --num_blocks 5 --batch_size 1000 --save $(save)

