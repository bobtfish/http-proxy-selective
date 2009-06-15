perl Makefile.PL
nmake install
pp -M HTTP::Proxy::Selective -M File::Temp -M Net::SSLeay -M IO::Socket::SSL -M IO::Socket:::INET -M HTTP::Proxy -M Config::Tiny -M HTTP::Proxy::Engine::NoFork -M File::Slurp -M File::stat -M Path::Class::File -o selective_proxy.exe script/selective_proxy
