# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

virtualbox-vm: VIRTUALBOX_CPU_COUNT?=4
virtualbox-vm: VIRTUALBOX_DISK_SIZE?=100000
virtualbox-vm: VIRTUALBOX_MEMORY_SIZE?=4096
virtualbox-vm: check
	@test -n "$(NAME)" || \
		(echo "ERROR: NAME not defined (make help)"; exit 1)
	@docker-machine create -d virtualbox $(NAME)
