package Number::Zero;
use strict;
use warnings;
use parent 'Exporter';

our $VERSION = '0.02';
our @EXPORT  = qw/is_zero/;

sub is_zero($) {
    my $num = $_[0];
    return if $num =~ /^$/;
    1 if defined $num && not $num;
}
1;

__END__

=head1 NAME

Number::Zero - make sure of the number zero

=head1 SYNOPSIS

    # Export type functions by default
    use Number::Zero;
    
    is_zero 0;        # 1
    is_zero 1326      # undef
    is_zero 'umeyuki' # undef
    
    
    # Non export interface
    use Number::Zero ();
    
    Number::Zero::is_zero 0;        # 1
    Number::Zero::is_zero 1326      # undef
    Number::Zero::is_zero 'umeyuki' # undef

DESCRIPTION
    Number::Zero is very simple perl module for numeric.
    The number zero and undef are difficult to determine in Perl.
    If you want to find zero instead of undef,
    Number::Zero can make sure of the number zero.

=head1 FUNCTIONS

There is only a function and the function is exported by default.

If you don't want this exported functions, pass empty list to use line:

    use Nubmer::Zero ();

=head2 is_zero

This code returns 1 if variable is only zero.

=head1 AUTHOR

Hiromitsu Ito <umeyuki@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2012 Hiromitsu Ito. All rights reserved.

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=cut
