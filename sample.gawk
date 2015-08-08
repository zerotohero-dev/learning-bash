BEGIN {
    print "The Latest List of Users and Shells"
    print " UserID \t Shell"
    print " -------- \t --------"
    FS=":"
} {
    print $1 "        \t " $7
}
END {
    print "This concludes the listing.
}