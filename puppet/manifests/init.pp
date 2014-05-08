stage { 'first':
    before => Stage['main'],
}
stage { 'last': }
Stage['main'] -> Stage['last']

class { 
    'repository':
        stage => first,
}

class {
    'base':
        stage => first,
}

class {
    'custom':
        stage => last,
}

include repository 
include packages 
include base 
include misc
include puppet
include motd
include custom

