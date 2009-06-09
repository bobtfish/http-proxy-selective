#!/usr/bin/env perl
use strict;
use warnings;
use inc::Module::Install;

all_from 'lib/HTTP/Proxy/Selective.pm';
license 'bsd';
requires 'HTTP::Proxy' => 0.22;
requires 'File::Slurp';
requires 'File::MimeInfo';
requires 'Path::Class';
requires 'Config::Tiny';
build_requires 'Test::MockObject';

auto_install();

install_script 'script/selective_proxy';
#build_exe('selective_proxy');

# I don't actually use the remote PAR support,
# but adding par_base magically turns on *all* PAR
# support, and so make par works.
#par_base        'BOBTFISH';

WriteAll();

