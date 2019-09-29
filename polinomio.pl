#!/usr/bin/perl
use strict;
use warnings;

#polinomio.pl - simple script to derivate polynomials
#Copyright (c) 2019 Lucas V. Araujo <lucas.vieira.ar@protonmail.com>

sub derivate
{
    #using regular expressions, it recognizes the format of each monomial
    #and replaces it with the respective derivative

    my $expr = shift;
    $expr =~ s/(\+|\-)(\d*)((\+|\-|\n))/$3/eig;
    $expr =~ s/(\+|\-)(\d*)x(\+|\-|\n)/$1.($2||1).$3/eig;
    $expr =~ s/(\d*)x\^(\d*)/(($1||1)*$2)."X^".($2-1)/eig;
    chomp $expr;
    return $expr;
}

print "Type an expression: ";
my $expression = <>;

my $derivative = derivate($expression);

print "The derivative is : $derivative\n";