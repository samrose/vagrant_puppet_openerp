node "local.openerp" {
  include linux_common
  #include h TODO create this manifest and modules
  include devel
  include python
  add_user { samrose:
    email    => 'samuel.rose@gmail.com',
    uid      => 5001,
    password => 'samuel74',
  }
  add_ssh_key { samrose:
    pubkey => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDuOPx1G7muEJ7junfgGR3n4ZwO2SadUqXpZvQm5rXMuUOJ4bS54A4+50qGAJBA2R1YxDamjERT/tUq2OH8PmyC2zIHJrzSMfdEDebKNJlSAeFbO+/9yyIKIgTqHqZSqlfy+cYQI6oHAQWCiE0tdlN/qo2SyFqiiiTjAlWoVLbYPU6Azakj7N7WwR1ObVG1lowrfNVV1muegud/s4ov0ZRokDvR96ydElgVHkhQ+u8ssmhcp5/3JX4MhqBdGhnVMTWyOs9yFc70q1pUr4oqsuxvNE4cYhyLvqFYGdDz+qVsKe7+RloPEtfDZX45UYm9aFceA43EMCYQuo68vokG2d/P",
    type => "ssh-rsa",
  }

  file {"/home/samrose/.gitconfig":
    ensure  => present,
    content => "",
    owner   => samrose,
    group   => samrose,
    mode    => 600,
    require => File["/home/samrose"]
  }
}

