package Cocoa::NotificationCenter;
use strict;
use warnings;
use 5.008005;
our $VERSION = '0.01';

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

sub new { bless {}, shift }

1;
__END__

=encoding utf8

=head1 NAME

Cocoa::NotificationCenter - ...

=head1 SYNOPSIS

  use Cocoa::NotificationCenter;

=head1 DESCRIPTION

Cocoa::NotificationCenter is

B<THIS IS A DEVELOPMENT RELEASE. API MAY CHANGE WITHOUT NOTICE>.

=head1 AUTHOR

Tokuhiro Matsuno E<lt>tokuhirom AAJKLFJEF@ GMAIL COME<gt>

=head1 SEE ALSO

=head1 LICENSE

Copyright (C) Tokuhiro Matsuno

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
