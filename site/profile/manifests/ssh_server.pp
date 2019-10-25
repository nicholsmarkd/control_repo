class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtxmjp5hiBA+KtVsZfwPfo+K7gO/Pb8enZXwBshOoKRo6kgjwxwE6qUBZbGLmIGXi7lzWiM4T25u2/snjxDRzoLXwA1OHCJFhafFN+5dzPkhzjulHc6sevBbtVJGCa4KXVoNK7yNY883OmCid3ORoMc0zgtdKIuLXiiqbf+q9lyLAWgSn19FSkgEnAsKJggy2Khmkpwkr9sbsDIfx3jaYMqQGWC4jP2UOyFPsXwBWyUw4SiMvAcfcBY/eOcnWwb45uLs60mqgIU+fFmBwi+6SwpjBQH4JhcuRtOwjbtY1YzB7eaggSNVLszqirAL04Sac+REGZNf19U6cC8rnO+uBN',
	}  
}
