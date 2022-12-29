---
title: "PlayToonPlayer"
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

<form action="javascript:;" onsubmit="return TestSubmit(this);" id="TestSubmit">
  <fieldset>
    <legend>PlayToon Test:</legend>
    Title: <input type="text" name="name" size="30" id="title"><br>
    Episode: <input type="text" name="episode" size="30" id="episode"><br>
    Token: <input type="text" name="token" size="30" id="token"><br>
    <!-- <input type="submit" value="View PlayToon" size="10"> -->
    <button type="submit" id="show-selected" class="btn btn--info">View PlayToon</button>
  </fieldset>
</form>
<script charset="UTF-8" type="text/javascript">
  function TestSubmit(theForm){
    var token = "token=" + theForm.elements["token"].value;
    var title = "?title=" + theForm.elements["title"].value;
    var episode = "?episode=" + theForm.elements["episode"].value;    
    var url =  "https://secret-angel.speedycdn.net/PlayToonRoot/Test/Player/index.html?" + token + title + episode;
    location.href=url;
  }
</script>