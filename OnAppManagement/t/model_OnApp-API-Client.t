use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'OnAppManagement::Model::OnApp::API::Client' }

INTEGRATION_TESTS: {
  subtest "get-template-store" => sub {
    ok(
      OnAppManagement::Model::OnApp::API::Client->new()->call("template_store")
    );
  };
SKIP: {
    skip "ISE/non-repeatable test" => 1;
    subtest "add-user"             => sub {
      if ( not $OnAppManagement::Model::OnApp::API::Client::DEBUG ) {
        $OnAppManagement::Model::OnApp::API::Client::DEBUG = 1;
      }
      ok(
        OnAppManagement::Model::OnApp::API::Client->new()->call(
          "users",
          {
            user => {
              email    => 'fo11o@example.org',
              password => "hkdhk!323H",
              login    => "fo11o-example"
            }
          }
        )
      );
    };
  }
}
done_testing();
