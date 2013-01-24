# This is a test to plug into os-autoinst (FIXME URL)
# 
# 
use base "basetest";
use bmwqemu;

sub is_applicable()
{
	return ($ENV{AUTOYAST});
}

sub run()
{
	my $self=shift;
	my $payload_dir = "http://10.0.2.2:8000/";
        my $main = "main";
	# TODO get a new working directory
        script_run("wget -r --no-host-directories $payload_dir");
        script_run("chmod +x $main");
	script_run("./$main");
        # shell $?, not perl $?
	script_run("echo autoyast_assertions: \$? > /dev/$serialdev");
}

# no screenshot based checklist
# sub checklist ...
1;
