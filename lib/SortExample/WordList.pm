package SortExample::WordList;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 1,
        args => {
            wordlist => {
                schema => 'perl::wordlist::modname_with_optional_args',
                req => 1,
                pos => 0,
            },
        },
    };
}

sub get_example {
    require Module::Load::Util;
    my %args = @_;

    my $wl = Module::Load::Util::instantiate_class_with_optional_args($args{wordlist});

    [$wl->all_words];
}

1;
# ABSTRACT: Get example for a WordList::* module

=for Pod::Coverage ^(meta|get_example)$

=head1 DESCRIPTION

=cut
