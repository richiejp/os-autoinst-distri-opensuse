# SUSE's openQA tests
#
# Copyright © 2016 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

use base "basetest";
use testapi;
use utils;


sub run() {
    my $self = shift;

    assert_script_run "zypper -n --no-gpg-checks in --auto-agree-with-licenses -t pattern SLEPOS_Server_Branch > /dev/$serialdev";
}

sub test_flags() {
    return {fatal => 1};
}


1;
# vim: set sw=4 et:
