---
title: "PlayToonPlayer Launcher(Develop)"
categories:
  - PlayToon
tags:  
  - playtoon
  - player
  - launcher
  - develop
toc: true
---

# PlayToonPlayer(Develop)
<!-- Html 문법과 markdown 문법 섞임 -->
**Watch out!** This is the PlayToonPlayer Launcher(develop) page. [PlayToonPlayer(Develop)](#playToonPlayer(develop)).
{: .notice--danger}

<form id="formTargetRadio">
  <fieldset>
    <p>Please select target:</p>
    <div>
      <input type="radio" id="Develop" name="contact" value="Develop" onclick="SetTargetRadioCustomUrl('Develop')" checked> Develop
      <label for="Develop"></label>
      <input type="radio" id="Test" name="contact" value="Test" onclick="SetTargetRadioCustomUrl('Test')"> Test
      <label for="Test"></label>
      <input type="radio" id="QA" name="contact" value="QA" onclick="SetTargetRadioCustomUrl('QA')"> QA
      <label for="QA"></label>
      <input type="radio" id="Real" name="contact" value="Real" onclick="SetTargetRadioCustomUrl('Real')" disabled> Real
      <label for="Real" ></label>
      <input type="radio" id="Custom" name="contact" value="Custom" onclick="SetTargetRadioCustomUrl('Custom')"> Custom
      <label for="Custom" ></label>
    </div>
  </fieldset>
</form>

<form id="formInputInfo" action="javascript:;" onsubmit="return PlayToonSubmit(this);">
    <input id="custom-url" name="customUrl" type="text" placeholder="Please enter a Conents Root URL" disabled required />
    <input id="title" type="text" placeholder="Title" list="title-list" required />
    <datalist id="title-list">
        <option value="Title_Sample"></option>
        <option value="Title_Sample_JP"></option>
    </datalist>
    <input id="episode" type="text" placeholder="Episode" list="episode-list" required />
    <datalist id="episode-list">
        <option value="Episode1"></option>
    </datalist>
    <input id="token" type="text" placeholder="Tokens issued by the platform" list="token-list" required />
    <datalist id="token-list">
        <!-- <option value="2Q+XL16sTtE="></option> -->
    </datalist>
    <button type="submit" id="show-selected" class="btn btn--info">Play</button>
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
  function GetContentsUrl(theForm, target){
    switch (target) {
      case "Develop":
        return "{{site.data.playtoon-urls.contents.develop}}";
      case "Test":
        return "{{site.data.playtoon-urls.contents.test}}";
      case "QA":
        return "{{site.data.playtoon-urls.contents.qa}}";
      case "Real":
        return "{{site.data.playtoon-urls.contents.real}}";
      case "Custom":
        return theForm.elements["custom-url"].value;
      default:
        return "";
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
    for(let i=1; i < formTargetRadio.elements.length; ++i){
      if(formTargetRadio.elements[i].checked){
        var target = formTargetRadio.elements[i].value;
        var contentsUrl = GetContentsUrl(theForm, target)
      }
    }
    var url = "{0}/{1}/Player/index.html?token={2}&title={3}&episode={4}&c_url={5}".format(playerRootUrl, target, token, title, episode, contentsUrl);
    // alert(url);
    location.href=url;
  }
</script>
