<1>
(  folding starts here
123
)  folding ends here

<2>
"("
this is not folded
")"

<3>
R"123(  folding starts here
foo
)"  this doesn't end folding
bar
)123"  folding ends here

this is the part the doesn't work:
<4>
(  folding should start here, but it doesn't
    123
    ()""  folding starts here, but it shouldn't
    456
)  folding ends here