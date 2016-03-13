use strict;
use warnings;

use OnAppManagement;

my $app = OnAppManagement->apply_default_middlewares(OnAppManagement->psgi_app);
$app;

