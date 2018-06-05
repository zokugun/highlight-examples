<?php

//! Comments
// Single line comment
/* Multi-line
comment */
/**
 * Doc
 */
# Shell-like comment

//! Strings
'foo \'bar\' baz'
"foo \"bar\" baz"
"a string # containing an hash"
$foo = <<<FOO
    Heredoc strings are supported too!
FOO;
$bar = <<<'BAR'
    And also Nowdoc strings
BAR;

//! Variables
$some_var = 5;
$otherVar = "Some text";
$null = null;
$false = false;
Functions
$json = json_encode($my_object);
$array1 = array("a" => "green", "red", "blue", "red");
$array2 = array("b" => "green", "yellow", "red");
$result = array_diff($array1, $array2);

//! Constants
define('MAXSIZE', 42);
echo MAXSIZE;
json_decode($json, false, 512, JSON_BIGINT_AS_STRING)

//! PHP 5.3+ support
namespace my\name;
$c = new \my\name\MyClass;
$arr = [1,2,3];
trait ezcReflectionReturnInfo {
    function getReturnType() { /*1*/ }
    function getReturnDescription() { /*2*/ }
}
function gen_one_to_three() {
    for ($i = 1; $i <= 3; $i++) {
        // Note that $i is preserved between yields.
        yield $i;
    }
}

gen_one_to_three();

//! PHP embedded in HTML
?>
<div class="<?php echo $a ? 'foo' : 'bar'; ?>">
<?php if($var < 42) {
    echo "Something";
} else {
    echo "Something else";
} ?>
</div>

<?php
//! String interpolation
$str = "This is $great!";
$foobar = "Another example: {${$foo->bar()}}";
$a = <<<FOO
    Hello $world!
FOO;
$b = <<<"FOOBAR"
    Interpolation inside Heredoc strings {$obj->values[3]->name}
FOOBAR;
?>

<div class="content">
    <?php while (have_posts()) : the_post(); $url = get_post_meta($post->ID, '_target_url')[0]; ?>
        <article class="col-12 col-lg-6">
            <div class="thumbnail">
                <?php if ( $url ) : ?>
                <a href="<?php echo esc_url($url); ?>" target="_blank"><?php the_post_thumbnail() ?></a>
                <?php else : ?>
                <?php the_post_thumbnail()) ?>
                <?php endif; ?>
            </div>
            <div class="title">
                <?php if ( $url ) : ?>
                <a href="<?php echo esc_url($url); ?>" target="_blank"><?php the_title(); ?></a>
                <?php else : ?>
                <?php the_title(); ?>
                <?php endif; ?>
            </div>
        </article>
    <?php endwhile; ?>
</div>