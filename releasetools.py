import common
import edify_generator

def FormatSystem(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "format(" in edify.script[i] and "system" in edify.script[i]:
			edify.script[i] = 'delete_recursive("/system");'
			return

def ShowProgress(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "unmount" in edify.script[i]:
			edify.script[i] = 'show_progress(0.400000, 0);'
			return

def FullOTA_InstallEnd(info):
	ShowProgress(info)
	FormatSystem(info)
