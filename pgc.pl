#!/usr/bin/perl -w
use FindBin qw($Bin);
use Cwd qw(getcwd);
use File::Path qw(make_path);

if ($#ARGV < 0) {
    help();
    die;
}

$dir = getcwd;
$std = "c99";
$build = "exe";
$flag = 0;

$i = 0;
for (; $i < $#ARGV + 1; $i++) {
    $c = substr $ARGV[$i], 0, 1;
    if ($c eq "-") {
        $opt = substr $ARGV[$i], 1;
        if ($opt eq "c11") {
            $std = "c11";
        } elsif ($opt eq "lib") {
            $build = "lib";
        } elsif ($opt eq "h") {
            help();
            die;
        }
    } else {
        $dir .= "/$ARGV[$i]";
        $flag = 1;
        last;
    }
}
if (! $flag) {
    help();
    die;
}

if (-d $dir) {
    print "Directory already exists($dir). Do you want to proceed? (y/n) :";
    $key = substr <STDIN>, 0, 1;
    die if ($key eq "n");

    while (not ($key eq "y")) {
        print "Please answer by y or n: ";
        $key = substr <STDIN>, 0, 1;
        die if ($key eq "n");
    }
} else {
    make_path $dir;
}

if (not -d "$dir/src") {
    make_path "$dir/src";
}
if (not -d "$dir/inc") {
    make_path "$dir/inc";
}
open CML, "<$Bin/CMakeLists.txt";
open OUT, ">$dir/CMakeLists.txt";
while ($line = <CML>) {
    $line =~ s/<proj_name>/$ARGV[$i]/g;
    if ($std eq "c99") {
        $line =~ s/<std>/99/g;
    } elsif($std eq "c11") {
        $line =~ s/<std>/11/g;
    }
    print OUT $line;
}
if ($build eq "exe") {
    print OUT "add_executable ( $ARGV[$i].out \${SRC_FILES} )";
} elsif ($build eq "lib") {
    print OUT "add_library ( $ARGV[$i] main.c \${SRC_FILES} )";
}

close CML;
close OUT;

open OUT, ">$dir/src/main.c";
print OUT "#include <stdio.h>\n\n";
print OUT "int main (int argc, char *argv[]) {\n";
print OUT "\treturn 0\;\n";
print OUT "}";
close OUT;

open OUT, ">$dir/build.sh";
print OUT "#!/bin/bash\n";
print OUT "cmake -Bbuild -H.\n";
print OUT "cd build\n";
print OUT "make\n";
if ($build eq "exe") {
    print OUT "../$ARGV[$i].out";
}
close OUT;
chmod 0777, "$dir/build.sh";

sub help {
    print "\n";
    print "Usage : project-c create [-option -option ...] input\n";
    print "\n";
    print "Possible options\n";
    print "-------------------------------------\n";
    print "c99            C99 standard (default)\n";
    print "c11            C11 standard\n";
    print "exe            Output is executable (default)\n";
    print "bin            Output is library \n";
    print "h              help (ignore other opts)\n";
    print "\n";
}

