---
name: Hello world
---

--- Titles ---
Title 1
=======

Title 2
-------

# Title 1
## Title 2
### Title 3
#### Title 4
##### Title 5
###### Title 6

--- Bold and italic ---
*Italic*
**Bold**
**Bold on
multiple lines**
*Italic on
multiple lines too*
__It also works with underscores__
_It also works with underscores_

__An empty line

is not allowed__

--- Links ---
[Prism](http://www.prismjs.com)
[Prism](http://www.prismjs.com "Prism")

[prism link]: http://www.prismjs.com (Prism)
[Prism][prism link]
[Prism] [prism link]

--- Images ---
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)

--- Lists and quotes ---
* This is
* an unordered list

1. This is an
2. ordered list

* *List item in italic*
* **List item in bold**
* [List item as a link](http://example.com "This is an example")

> This is a quotation
>> With another quotation inside
> _italic here_, __bold there__
> And a [link](http://example.com)

1. First list item
   - First nested list item
     - Second nested list item

--- Code ---
Inline code between backticks `<p>Paragraph</p>`

    some_code(); /* Indented
    with four spaces */

	some_code(); /* Indented
	with a tab */

--- Raw HTML ---
> This is a quotation
> Containing <strong>raw HTML</strong>

<p>*Italic text inside HTML tag*</p>

--- Nesting of elements ---
_ **bold** inside italic DOESN'T work _
__ but *italic* inside bold DOES work __

[Link partially *italic* DOESN'T work](http://example.com)
_ [But link inside italic DOES work](http://example.com) _

[Link partially **bold** DOESN'T work](http://example.com)
__ [But link inside bold DOES work](http://example.com) __

--- Quoting ---
Use `git status` to list all new or modified files that haven't yet been committed.

Some basic Git commands are:
```
git status
git add
git commit
```

```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```

--- Task List ---
- [x] Finish my changes
- [ ] Push my commits to GitHub
- [ ] Open a pull request

--- Table ---
| Command | Description |
| --- | --- |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |


--- Full example ---


# hello world

you can write text [with links](http://example.com) inline or [link references][1].

* one _thing_ has *em*phasis
* two __things__ are **bold**

[1]: http://example.com

---

hello world
===========

<this_is inline="xml"></this_is>

> markdown is so cool

    so are code segments

1. one thing (yeah!)
2. two thing `i can write code`, and `more` wipee!