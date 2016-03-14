use strict;
use warnings;
use Test::More;


use Catalyst::Test 'OnAppManagement';
use OnAppManagement::Controller::VirtualMachines;

ok( request('/virtualmachines')->is_success, 'Request should succeed' );
done_testing();
