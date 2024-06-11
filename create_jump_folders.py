#!/usr/bin/python3
# coding: utf-8
# create_jump_folders.py

import os
jump_file = '/home/duncan/Documents/Jump'
root_folder = '/home/duncan/LINK/'

def main():
	with open(jump_file,'r') as fip:
		for line in fip:
			if line[0:1] != '#':
				tpe,nme,lnk=parse_jump_line(line)
				link_folder, fldr = prepare_link_folder(nme)
				make_jump_link(link_folder, fldr,lnk)
	with open(root_folder + '/README.md', 'w') as fop:
		fop.write('Created from Jump file = ' + jump_file + '\n')
		fop.write('Note that following links keeps LINK name in path - use pwd -P to get actual path\n')
		
			
def prepare_link_folder(nme):
	fldrs = nme.split('.')
	root=fldrs[0]
	fldr=fldrs[1]	
	link_folder= root_folder + root
	full_folder = link_folder + '/' + fldr #+ '/'
	
	ensure_dir(link_folder)
	return link_folder, fldr
					
def make_jump_link(fldr_name, link_name,lnk):
	print('full_linkname=' + fldr_name + '/' + link_name + ', lnk=' + lnk)
	os.chdir(fldr_name)
	os.symlink(lnk, fldr_name + '/' + link_name, dir_fd=None) #, target_is_directory=True)
	
			
def parse_jump_line(line):
	cols=line.split(':')
	tpe = cols[0]
	subcols=cols[1].split('=')
	nme = subcols[0]
	lnk= subcols[1].strip('\n')
	return tpe,nme,lnk

def ensure_dir(d):
	try:
		os.makedirs(d, exist_ok=True)
		print('Making Folder : ' + d)
	except Exception as ex:
		pass # ignore issue on windows
		print ('cant make directory ' + d + ' = ' + str(ex))
			
main()	
	
	
	

