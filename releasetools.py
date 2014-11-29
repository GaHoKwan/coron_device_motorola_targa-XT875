import common
import edify_generator

def AddArgsForFormatSystem(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "format(" in edify.script[i] and "system" in edify.script[i]:
			edify.script[i] = 'delete_recursive("/system");'
			return

def RemoveDeviceAssert(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "unmount" in edify.script[i]:
			edify.script[i] = ''
			return

def FullOTA_InstallEnd(info):
	AddArgsForFormatSystem(info)
