---
title: "Test gentlebreeze"
header:
  teaser: "assets/images/markup-syntax-highlighting-teaser.jpg"
categories:
  - Markup
tags:
  - content
  - css
  - formatting
  - html
  - markup
toc: true
---



## Forms

<form name="frm" method="get" action="/formjsp-get.jsp" id="getJsp">
  <fieldset>
    <legend>Jsp Get:</legend>
    Name: <input type="text" name="name" size="30" id="name"><br>
    Email: <input type="text" name="email" size="30" id="email"><br>
    <input type="submit" value="View PlayToon" size="10">
  </fieldset>
</form>

<form method="post" action="/formjsp-post.jsp" id="postJsp">
  <fieldset>
    <legend>Jsp Post:</legend>
    Name: <input type="text" name="name" size="30" id="name"><br>
    Email: <input type="text" name="email" size="30" id="email"><br>
    <input type="submit" value="View PlayToon" size="10">
  </fieldset>
</form>

<form method="get" action="/formphp-get.php" id="getPhp">
  <fieldset>
    <legend>Php Get:</legend>
    Name: <input type="text" name="name" size="30" id="name"><br>
    Email: <input type="text" name="email" size="30" id="email"><br>
    <input type="submit" value="View PlayToon" size="10">
  </fieldset>
</form>

<form method="get" action="/form-get.html" id="gethtml">
  <fieldset>
    <legend>Html Get:</legend>
    Name: <input type="text" name="name" size="30" id="name"><br>
    Email: <input type="text" name="email" size="30" id="email"><br>
    <input type="submit" value="View PlayToon" size="10">
  </fieldset>
</form>

<form action="javascript:;" onsubmit="return TestSubmit(this);" id="TestSubmit">
  <fieldset>
    <legend>JavaScript OnSumbit:</legend>
    Name: <input type="text" name="name" size="30" id="scriptname"><br>
    Email: <input type="text" name="email" size="30" id="scriptemail"><br>
    <!-- <input type="submit" value="View PlayToon" size="10"> -->
    <button type="submit" id="show-selected" class="btn btn--info">View PlayToon</button>
  </fieldset>
</form>

<form action="javascript:TestSubmitAction(this.TestAction)" id="TestAction">
  <fieldset>
    <legend>JavaScript Action:</legend>
    Name: <input type="text" name="name" size="30" id="scripAtname"><br>
    Email: <input type="text" name="email" size="30" id="scriptAemail"><br>
    <input type="submit" value="View PlayToon" size="10">
  </fieldset>
</form>

<form name="calljavascript">
<input type="button" name="button" value="click" onclick="JavaScript:TestFunction()">
</form>
<script charset="UTF-8" type="text/javascript">
  function TestFunction(){
    console.log("TestFunction");
    console.log(document.getElementById("scriptname").value);
    console.log(document.getElementById("scriptemail").value);
    console.log(document.getElementById("scripAtname").value);
    console.log(document.getElementById("scriptAemail").value);
  }
  function TestSubmit(theForm){
    var name = theForm.elements["scriptname"].value
    var email = theForm.elements["scriptemail"].value
    console.log(name);
    console.log(email);
    console.log(theForm);
  }
  function TestSubmitAction(theForm){
    var name = theForm.elements["scripAtname"].value
    var email = theForm.elements["scriptAemail"].value
    console.log(name);
    console.log(email);
    console.log(theForm);
  }
</script>

## Buttons

Make any link standout more when applying the `.btn` class.

```html
<a href="#" class="btn--success">Success Button</a>
```

[Default Button](#){: .btn}
[Primary Button](#){: .btn .btn--primary}
[Success Button](#){: .btn .btn--success}
[Warning Button](#){: .btn .btn--warning}
[Danger Button](#){: .btn .btn--danger}
[Info Button](#){: .btn .btn--info}
[Inverse Button](#){: .btn .btn--inverse}
[Light Outline Button](#){: .btn .btn--light-outline}

```markdown
[Default Button Text](#link){: .btn}
[Primary Button Text](#link){: .btn .btn--primary}
[Success Button Text](#link){: .btn .btn--success}
[Warning Button Text](#link){: .btn .btn--warning}
[Danger Button Text](#link){: .btn .btn--danger}
[Info Button Text](#link){: .btn .btn--info}
[Inverse Button](#link){: .btn .btn--inverse}
[Light Outline Button](#link){: .btn .btn--light-outline}
```

[X-Large Button](#){: .btn .btn--primary .btn--x-large}
[Large Button](#){: .btn .btn--primary .btn--large}
[Default Button](#){: .btn .btn--primary }
[Small Button](#){: .btn .btn--primary .btn--small}

```markdown
[X-Large Button](#link){: .btn .btn--primary .btn--x-large}
[Large Button](#link){: .btn .btn--primary .btn--large}
[Default Button](#link){: .btn .btn--primary }
[Small Button](#link){: .btn .btn--primary .btn--small}
```

## Notices

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice}` class.
{: .notice}

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice--primary}` class.
{: .notice--primary}

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice--info}` class.
{: .notice--info}

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice--warning}` class.
{: .notice--warning}

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice--success}` class.
{: .notice--success}

**Watch out!** This paragraph of text has been [emphasized](#) with the `{: .notice--danger}` class.
{: .notice--danger}

## HTML Tags

### Address Tag

<address>
  1 Infinite Loop<br /> Cupertino, CA 95014<br /> United States
</address>

### Anchor Tag (aka. Link)

This is an example of a [link](http://apple.com "Apple").

### Abbreviation Tag

The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets

### Cite Tag

"Code is poetry." ---<cite>Automattic</cite>

### Code Tag

You will learn later on in these tests that `word-wrap: break-word;` will be your best friend.

### Strike Tag

This tag will let you <strike>strikeout text</strike>.

### Emphasize Tag

The emphasize tag should _italicize_ text.

### Insert Tag

This tag should denote <ins>inserted</ins> text.

### Keyboard Tag

This scarcely known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the `<code>` tag.

### Preformatted Tag

This tag styles large blocks of code.

<pre>
.post-title {
	margin: 0 0 5px;
	font-weight: bold;
	font-size: 38px;
	line-height: 1.2;
	and here's a line of some really, really, really, really long text, just to see how the PRE tag handles it and to find out how it overflows;
}
</pre>

### Quote Tag

<q>Developers, developers, developers&#8230;</q> &#8211;Steve Ballmer

### Strong Tag

This tag shows **bold text**.

### Subscript Tag

Getting our science styling on with H<sub>2</sub>O, which should push the "2" down.

### Superscript Tag

Still sticking with science and Albert Einstein's E = MC<sup>2</sup>, which should lift the 2 up.

### Variable Tag

This allows you to denote <var>variables</var>.