all:
	jupyter lab ecFlow_elearning_ep2.ipynb

note:
	jupyter notebook ecFlow_elearning_ep2.ipynb

slides:
slide:
	jupyter nbconvert --to slides ecFlow_elearning_ep2.ipynb

rall:
	jupyter lab DA.ipynb
	jupyter lab kmeans.ipynb
	jupyter lab LMDZ.ipynb
	# jupyter lab NEMO.ipynb
	# jupyter lab WRF.ipynb


build:
	docker build -t ecflow-alpine .
run:
	docker run -t net=host ecflow-alpine ecflow_client --port ${ECF_PORT:=2500} --ping
