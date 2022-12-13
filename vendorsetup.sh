#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2018-2022 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#


	export LC_ALL="C"

	echo -e "\x1b[96mmido: Adding OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=linlinger
	# 设置版本号为日期
	export FOX_VERSION=$(date +%y.%m.%d)

	## 添加功能
	# 使用完整版ps命令
	export FOX_REPLACE_BUSYBOX_PS=1
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
	export FOX_USE_SED_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1

	## 硬件功能设定
	# 没有绿色led
	export OF_USE_GREEN_LED=1

        # Set quick backup items
        export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"

	# 当安装MIUI或者在MIUI上安装橙狐zip，使用magisk处理所有boot和recovery镜像，防止橙狐被MIUI官方recovery替换
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	# 避免在已加密设备上应用强制加密补丁
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# 在MIUI OTA还原期间尝试解密内部存储（而不是错误退出）
	export OF_OTA_RES_DECRYPT=1
	# 防止橙狐在解密后重新运行自启动进程
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# 手动刷入OTA增量包时尝试进入OpenRecoveryScript模式完成更新
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

	# 修复部分设备或者rom的解密问题
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1

	echo -e "\x1b[96mmido: Done！\x1b[m"
