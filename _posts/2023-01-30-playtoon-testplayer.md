---
title: "PlayToon Test Player"
categories:
  - PlayToon
tags:  
  - playtoon
  - player
  - test
toc: true
---

# Test Player
<!-- Html 문법과 markdown 문법 섞임 -->
**Watch out!** This is the Playtoon Test Player page. [PlayToon Test Player](#test-player).
{: .notice--danger}

<form id="formPlayerVersion">
  <fieldset>
  <p>Test Player Version:</p>
    <select name="version" >
      <!-- <option value="none">=== Select ===</option> -->
      <!-- <option value="testplayer_020">0.2.0</option> -->
      <option value="testplayer_010" selected>0.1.0</option>
    </select>
  </fieldset>
</form>

<form id="formContentsUrl">
  <fieldset>
    <p>Contents URL:</p>
    <div>
      <input type="radio" id="Default" name="contact" value="Default" onclick="SetTargetRadioCustomUrl('Default')" checked> Default
      <label for="Default"></label>
      <input type="radio" id="Custom" name="contact" value="Custom" onclick="SetTargetRadioCustomUrl('Custom')"> Custom
      <label for="Custom" ></label>
    </div>
  </fieldset>
</form>

<form id="formInputInfo" action="javascript:;" onsubmit="return PlayToonSubmit(this);">
    <input id="custom-url" name="customUrl" type="text" placeholder="Please enter a Conents URL" disabled required />
    <input id="title" type="text" placeholder="Title" list="title-list" required />
    <datalist id="title-list">
        <option value="Title_Sample"></option>
    </datalist>
    <input id="episode" type="text" placeholder="Episode" list="episode-list" required />
    <datalist id="episode-list">
        <option value="Episode1"></option>
    </datalist>
    <input id="token" type="text" placeholder="Tokens issued by the client" required />
    <button type="submit" id="show-selected" class="btn btn--info">View PlayToon</button>
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
  function GetPlayerUrl(playerVersion){
    switch (playerVersion) {
      case "testplayer_010":
        return "{{site.data.playtoon-urls.player.testplayer_010}}";
      case "testplayer_020":
        return "{{site.data.playtoon-urls.player.testplayer_020}}";
      default:
        return "";
    }
  }
  function GetContentsUrl(theForm, selectedCustomUrl, playerVersion){
    if(selectedCustomUrl == "Custom"){
      return theForm.elements["custom-url"].value;
    }
    else{
      switch (playerVersion) {
      case "testplayer_010":
        return "{{site.data.playtoon-urls.contents.contents_010}}";
      case "testplayer_020":
        return "{{site.data.playtoon-urls.contents.contents_020}}";
      default:
        return "";
        }
      }
  }
  function SetTargetRadioCustomUrl(currentRadio){
    let isCustomUrl = currentRadio == "Custom";
    if(isCustomUrl == false){
      formInputInfo.customUrl.value = "";
    }
    formInputInfo.customUrl.disabled = !isCustomUrl;
    formInputInfo.customUrl.required = isCustomUrl;
  }
  function PlayToonSubmit(theForm){
    let playerRootUrl = "{{site.data.playtoon-urls.player.root}}";
    let token = theForm.elements["token"].value;
    let title = theForm.elements["title"].value;
    let episode = theForm.elements["episode"].value;
    for(let i=1; i < formContentsUrl.elements.length; ++i){
      if(formContentsUrl.elements[i].checked){
        var selectedCustomUrl = formContentsUrl.elements[i].value;
      }
    }
    for(let i=1; i < formPlayerVersion.elements.length; ++i){
      var playerVersion = formPlayerVersion.elements[i].value;
      var playerUrl = GetPlayerUrl(playerVersion)
      var contentsUrl = GetContentsUrl(theForm, selectedCustomUrl, playerVersion)
    }
    if(playerVersion == "testplayer_010"){
      var url = "{0}?token={1}?title={2}?episode={3}?c_url={4}".format(playerUrl, token, title, episode, contentsUrl);
    }
    else{
      var url = "{0}?token={1}&title={2}&episode={3}&c_url={4}".format(playerUrl, token, title, episode, contentsUrl);
    }
    // alert(url);
    location.href=url;
  }
</script>
