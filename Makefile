# +-----+---------------------------------------------------------------+
# | 作者 | xuyuzhi                                                       |
# | 日期 | 2025-04-23 15:38:05 星期三                                     |
# | 网站 | https://xuyuzhi.com                                           |
# | 版权 | Copyright © 2024-2025 xuyuzhi                                 |
# | 软件 | Jetbrains GoLand                                              |
# | 项目 | websites                                                      |
# | 文件 | Makefile                                                      |
# +-----+---------------------------------------------------------------+

# default
.DEFAULT_GOAL = default

default: cxy
	@echo -e "\e[42munzip success ~\033[0m"

cxy: home testing

.PHONY: home
home:
	ls | grep -v .zip |  grep -v .gitignore | grep -v LICENSE | grep -v Makefile | grep -v README.md | xargs rm -rf; \
#	ls | grep .zip | xargs unzip -q

.PHONY: testing
testing:
	cd testing; \
	ls | grep -v .zip | xargs rm -rf; \
	ls | grep .zip | xargs unzip -q

