# docker image for mrvl-teralynx saiserver

DOCKER_SAISERVER_MRVL_TERALYNX = docker-saiserver$(SAITHRIFT_VER)-mrvl-teralynx.gz
$(DOCKER_SAISERVER_MRVL_TERALYNX)_PATH = $(PLATFORM_PATH)/docker-saiserver-mrvl-teralynx
$(DOCKER_SAISERVER_MRVL_TERALYNX)_DEPENDS += $(SAISERVER)
$(DOCKER_SAISERVER_MRVL_TERALYNX)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE_BOOKWORM)
SONIC_DOCKER_IMAGES += $(DOCKER_SAISERVER_MRVL_TERALYNX)

$(DOCKER_SAISERVER_MRVL_TERALYNX)_CONTAINER_NAME = saiserver$(SAITHRIFT_VER)
$(DOCKER_SAISERVER_MRVL_TERALYNX)_RUN_OPT += --privileged -t
$(DOCKER_SAISERVER_MRVL_TERALYNX)_RUN_OPT += -v /host/machine.conf:/etc/machine.conf
$(DOCKER_SAISERVER_MRVL_TERALYNX)_RUN_OPT += -v /var/run/docker-saiserver:/var/run/sswsyncd
$(DOCKER_SAISERVER_MRVL_TERALYNX)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_SAISERVER_MRVL_TERALYNX)_RUN_OPT += -v /host/warmboot:/var/warmboot