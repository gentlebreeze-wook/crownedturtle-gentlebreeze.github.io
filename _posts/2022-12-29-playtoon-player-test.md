---
title: "PlayToonPlayer Test"
categories:
  - PlayToon
tags:
  - content
  - css
  - formatting
  - html
  # - markup
toc: true
---

<!-- Html 문법과 markdown 문법 섞임 -->
<form id="targetRadio">
  <fieldset>
    <!-- <p>Please select your preferred contact method:</p> -->
    <div>
      <input type="radio" id="Develop" name="contact" value="Develop" checked> Develop
      <label for="Develop"></label>
      <input type="radio" id="Test" name="contact" value="Test"> Test
      <label for="Test"></label>
      <input type="radio" id="QA" name="contact" value="QA"> QA
      <label for="QA"></label>
      <input type="radio" id="Real" name="contact" value="Real" disabled> Real
      <label for="Real" ></label>
    </div>
  </fieldset>
</form>

<form id="targetSelect">
  <fieldset>
    <select name="language" >
      <!-- <option value="none">=== Select ===</option> -->
      <option value="Develop" selected>Develop</option>
      <option value="Test">Test</option>
      <option value="QA">QA</option>
      <option value="Real" disabled>Real</option>
    </select>
  </fieldset>
</form>

<form>
<div class="notice--info" role="alert">
  Test 문법 짬뽕
</div>
</form>

<form action="#">
    <input placeholder="Name" type="text" required />
    <input placeholder="Email" type="email" required />
    <input placeholder="Subject" type="text" required />
    <!-- <textarea placeholder="Comment"></textarea> -->
    <input class="formBtn" type="submit" />
    <input class="formBtn" type="reset" />
</form>

<form>
  <label for="ice-cream-choice">Choose a flavor:</label>
  <input list="ice-cream-flavors" id="ice-cream-choice" name="ice-cream-choice">
  <datalist id="ice-cream-flavors">
      <option value="Chocolate"></option>
      <option value="Coconut"></option>
      <option value="Mint"></option>
      <option value="Strawberry"></option>
      <option value="Vanilla"></option>
  </datalist>
</form>

<form id="InputInfo" action="javascript:;" onsubmit="return PlayToonSubmit(this);">
    <input id="title" type="text" placeholder="Title" list="title-list" required />
    <datalist id="title-list">
        <option value="Title_Sample"></option>
    </datalist>
    <input id="episode" type="text" placeholder="Episode" list="episode-list" required />
    <datalist id="episode-list">
        <option value="Episode1"></option>
    </datalist>
    <input id="token" type="text" placeholder="Token" required />
    <button type="submit" id="show-selected" class="btn btn--info">View PlayToon</button>
</form>

<form action="javascript:;" onsubmit="return PlayToonSubmit(this);" id="InputInfo">
  <fieldset>
    <legend>PlayToon Test:</legend>
    Title: <input type="text" name="name" size="30" id="title"><br>
    Episode: <input type="text" name="episode" size="30" id="episode"><br>
    Token: <input type="text" name="token" size="30" id="token" value="token"><br>
    <!-- <input type="submit" value="View PlayToon" size="10"> -->
    <button type="submit" id="show-selected" class="btn btn--info">View PlayToon</button>
  </fieldset>
</form>
<script charset="UTF-8" type="text/javascript">
  String.prototype.format = function() {
    var formatted = this;
    for (var i = 0; i < arguments.length; i++) {
        var regexp = new RegExp('\\{'+i+'\\}', 'gi');
        formatted = formatted.replace(regexp, arguments[i]);
    }
    return formatted;
  }
  function PlayToonSubmit(theForm){
    var token = "token=" + theForm.elements["token"].value;
    var title = "?title=" + theForm.elements["title"].value;
    var episode = "?episode=" + theForm.elements["episode"].value;
    var url =  "https://secret-angel.speedycdn.net/PlayToonRoot/Test/Player/index.html?" + token + title + episode;
    // console.log(this.targetRadio);
    // console.log(this.targetRadio.length);
    // console.log(this.targetSelect);
    // console.log(this.targetSelect.length);
    console.log(this.targetRadio.length);
    for(let i=1; i < targetRadio.elements.length; ++i){
      console.log(targetRadio.elements[i].value + " " + targetRadio.elements[i].checked);
    }
    console.log(this.targetSelect.length);
    for(let i=1; i < targetSelect.elements.length; ++i){
      console.log(targetSelect.elements[i].value)
    }
    // location.href=url;
  }
  function TargetLog(){
    // console.log(this.targetRadio);
    // console.log(this.targetRadio.length);
    // console.log(this.targetSelect);
    // console.log(this.targetSelect.length);
    console.log(this.targetRadio.length);
    for(let i=1; i < targetRadio.elements.length; ++i){
      console.log(targetRadio.elements[i].value + " " + targetRadio.elements[i].checked);
    }
    console.log(this.targetSelect.length);
    for(let i=1; i < targetSelect.elements.length; ++i){
      console.log(targetSelect.elements[i].value)
    }
  }
</script>

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


<form>
<div class="alert alert-primary" role="alert">
  This is a primary alert—check it out!
</div>
<div class="alert alert-secondary" role="alert">
  This is a secondary alert—check it out!
</div>
<div class="alert alert-success" role="alert">
  This is a success alert—check it out!
</div>
<div class="alert alert-danger" role="alert">
  This is a danger alert—check it out!
</div>
<div class="alert alert-warning" role="alert">
  This is a warning alert—check it out!
</div>
<div class="alert alert-info" role="alert">
  This is a info alert—check it out!
</div>
<div class="alert alert-light" role="alert">
  This is a light alert—check it out!
</div>
<div class="alert alert-dark" role="alert">
  This is a dark alert—check it out!
</div>
</form>

<form>
<div class="alert alert-primary" role="alert">
  This is a primary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-secondary" role="alert">
  This is a secondary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-success" role="alert">
  This is a success alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-danger" role="alert">
  This is a danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-warning" role="alert">
  This is a warning alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-info" role="alert">
  This is a info alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-light" role="alert">
  This is a light alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-dark" role="alert">
  This is a dark alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
</form>

<form>
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Well done!</h4>
  <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
  <hr>
  <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
</div>
</form>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Holy guacamole!</strong> You should check in on some of those fields below.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</form>
