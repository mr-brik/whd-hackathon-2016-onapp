use strict;
use warnings;
use Test::More;


use Catalyst::Test 'OnAppManagement';
use OnAppManagement::Controller::Logout;

ok( request('/logout')->is_redirect, 'Request should redirect' );
done_testing();
