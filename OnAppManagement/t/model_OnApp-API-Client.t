use strict;
use warnings;
use Test::More;


BEGIN { use_ok 'OnAppManagement::Model::OnApp::API::Client' }

INTEGRATION_TESTS: {
  subtest "get-template-store" => sub {
   #curl -i -X GET -H 'Accept: application/json' -H 'Content-type: application/json' -u 'admin:WHDHack12345!' --url 'http://185.42.223.169/template_store.json'

    ok( OnAppManagement::Model::OnApp::API::Client->new( )->call( "template_store" ) );
  };
  SKIP: {
  skip "ISE/non-repeatable test"=>1;
  subtest "add-user" => sub {
     if (not $OnAppManagement::Model::OnApp::API::Client::DEBUG  ) {
        $OnAppManagement::Model::OnApp::API::Client::DEBUG=1;
     }
    ok( OnAppManagement::Model::OnApp::API::Client->new( )
      ->call( "users", { user => { email => 'fo11o@example.org', password => "hkdhk!323H", login => "fo11o-example" } } ) );
  };
  }
}
done_testing();
