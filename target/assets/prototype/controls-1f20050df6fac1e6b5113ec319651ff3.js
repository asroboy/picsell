//# sourceMappingURL=controls.js.map
if("undefined"==typeof Effect)throw"controls.js requires including script.aculo.us' effects.js library";var Autocompleter={};
Autocompleter.Base=Class.create({baseInitialize:function(a,b,c){this.element=a=$(a);this.update=$(b);this.active=this.changed=this.hasFocus=!1;this.entryCount=this.index=0;this.oldElementValue=this.element.value;this.setOptions?this.setOptions(c):this.options=c||{};this.options.paramName=this.options.paramName||this.element.name;this.options.tokens=this.options.tokens||[];this.options.frequency=this.options.frequency||.4;this.options.minChars=this.options.minChars||1;this.options.onShow=this.options.onShow||
function(a,b){b.style.position&&"absolute"!=b.style.position||(b.style.position="absolute",Position.clone(a,b,{setHeight:!1,offsetTop:a.offsetHeight}));Effect.Appear(b,{duration:.15})};this.options.onHide=this.options.onHide||function(a,b){new Effect.Fade(b,{duration:.15})};"string"==typeof this.options.tokens&&(this.options.tokens=Array(this.options.tokens));this.options.tokens.include("\n")||this.options.tokens.push("\n");this.observer=null;this.element.setAttribute("autocomplete","off");Element.hide(this.update);
Event.observe(this.element,"blur",this.onBlur.bindAsEventListener(this));Event.observe(this.element,"keydown",this.onKeyPress.bindAsEventListener(this))},show:function(){if("none"==Element.getStyle(this.update,"display"))this.options.onShow(this.element,this.update);!this.iefix&&Prototype.Browser.IE&&"absolute"==Element.getStyle(this.update,"position")&&(new Insertion.After(this.update,'<iframe id="'+this.update.id+'_iefix" style="display:none;position:absolute;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);" src="javascript:false;" frameborder="0" scrolling="no"></iframe>'),
this.iefix=$(this.update.id+"_iefix"));this.iefix&&setTimeout(this.fixIEOverlapping.bind(this),50)},fixIEOverlapping:function(){Position.clone(this.update,this.iefix,{setTop:!this.update.style.height});this.iefix.style.zIndex=1;this.update.style.zIndex=2;Element.show(this.iefix)},hide:function(){this.stopIndicator();if("none"!=Element.getStyle(this.update,"display"))this.options.onHide(this.element,this.update);this.iefix&&Element.hide(this.iefix)},startIndicator:function(){this.options.indicator&&
Element.show(this.options.indicator)},stopIndicator:function(){this.options.indicator&&Element.hide(this.options.indicator)},onKeyPress:function(a){if(this.active)switch(a.keyCode){case Event.KEY_TAB:case Event.KEY_RETURN:this.selectEntry(),Event.stop(a);case Event.KEY_ESC:this.hide();this.active=!1;Event.stop(a);return;case Event.KEY_LEFT:case Event.KEY_RIGHT:return;case Event.KEY_UP:this.markPrevious();this.render();Event.stop(a);return;case Event.KEY_DOWN:this.markNext();this.render();Event.stop(a);
return}else if(a.keyCode==Event.KEY_TAB||a.keyCode==Event.KEY_RETURN||0<Prototype.Browser.WebKit&&0==a.keyCode)return;this.hasFocus=this.changed=!0;this.observer&&clearTimeout(this.observer);this.observer=setTimeout(this.onObserverEvent.bind(this),1E3*this.options.frequency)},activate:function(){this.changed=!1;this.hasFocus=!0;this.getUpdatedChoices()},onHover:function(a){var b=Event.findElement(a,"LI");this.index!=b.autocompleteIndex&&(this.index=b.autocompleteIndex,this.render());Event.stop(a)},
onClick:function(a){this.index=Event.findElement(a,"LI").autocompleteIndex;this.selectEntry();this.hide()},onBlur:function(a){setTimeout(this.hide.bind(this),250);this.active=this.hasFocus=!1},render:function(){if(0<this.entryCount){for(var a=0;a<this.entryCount;a++)this.index==a?Element.addClassName(this.getEntry(a),"selected"):Element.removeClassName(this.getEntry(a),"selected");this.hasFocus&&(this.show(),this.active=!0)}else this.active=!1,this.hide()},markPrevious:function(){0<this.index?this.index--:
this.index=this.entryCount-1;this.getEntry(this.index).scrollIntoView(!0)},markNext:function(){this.index<this.entryCount-1?this.index++:this.index=0;this.getEntry(this.index).scrollIntoView(!1)},getEntry:function(a){return this.update.firstChild.childNodes[a]},getCurrentEntry:function(){return this.getEntry(this.index)},selectEntry:function(){this.active=!1;this.updateElement(this.getCurrentEntry())},updateElement:function(a){if(this.options.updateElement)this.options.updateElement(a);else{var b=
"";if(this.options.select){var c=$(a).select("."+this.options.select)||[];0<c.length&&(b=Element.collectTextNodes(c[0],this.options.select))}else b=Element.collectTextNodesIgnoreClass(a,"informal");c=this.getTokenBounds();if(-1!=c[0]){var d=this.element.value.substr(0,c[0]),e=this.element.value.substr(c[0]).match(/^\s+/);e&&(d+=e[0]);this.element.value=d+b+this.element.value.substr(c[1])}else this.element.value=b;this.oldElementValue=this.element.value;this.element.focus();this.options.afterUpdateElement&&
this.options.afterUpdateElement(this.element,a)}},updateChoices:function(a){if(!this.changed&&this.hasFocus){this.update.innerHTML=a;Element.cleanWhitespace(this.update);Element.cleanWhitespace(this.update.down());if(this.update.firstChild&&this.update.down().childNodes)for(this.entryCount=this.update.down().childNodes.length,a=0;a<this.entryCount;a++){var b=this.getEntry(a);b.autocompleteIndex=a;this.addObservers(b)}else this.entryCount=0;this.stopIndicator();this.index=0;1==this.entryCount&&this.options.autoSelect?
(this.selectEntry(),this.hide()):this.render()}},addObservers:function(a){Event.observe(a,"mouseover",this.onHover.bindAsEventListener(this));Event.observe(a,"click",this.onClick.bindAsEventListener(this))},onObserverEvent:function(){this.changed=!1;this.tokenBounds=null;this.getToken().length>=this.options.minChars?this.getUpdatedChoices():(this.active=!1,this.hide());this.oldElementValue=this.element.value},getToken:function(){var a=this.getTokenBounds();return this.element.value.substring(a[0],
a[1]).strip()},getTokenBounds:function(){if(null!=this.tokenBounds)return this.tokenBounds;var a=this.element.value;if(a.strip().empty())return[-1,0];for(var b=arguments.callee.getFirstDifferencePos(a,this.oldElementValue),c=b==this.oldElementValue.length?1:0,d=-1,e=a.length,h,f=0,g=this.options.tokens.length;f<g;++f)h=a.lastIndexOf(this.options.tokens[f],b+c-1),h>d&&(d=h),h=a.indexOf(this.options.tokens[f],b+c),-1!=h&&h<e&&(e=h);return this.tokenBounds=[d+1,e]}});
Autocompleter.Base.prototype.getTokenBounds.getFirstDifferencePos=function(a,b){for(var c=Math.min(a.length,b.length),d=0;d<c;++d)if(a[d]!=b[d])return d;return c};
Ajax.Autocompleter=Class.create(Autocompleter.Base,{initialize:function(a,b,c,d){this.baseInitialize(a,b,d);this.options.asynchronous=!0;this.options.onComplete=this.onComplete.bind(this);this.options.defaultParams=this.options.parameters||null;this.url=c},getUpdatedChoices:function(){this.startIndicator();var a=encodeURIComponent(this.options.paramName)+"="+encodeURIComponent(this.getToken());this.options.parameters=this.options.callback?this.options.callback(this.element,a):a;this.options.defaultParams&&
(this.options.parameters+="&"+this.options.defaultParams);new Ajax.Request(this.url,this.options)},onComplete:function(a){this.updateChoices(a.responseText)}});
Autocompleter.Local=Class.create(Autocompleter.Base,{initialize:function(a,b,c,d){this.baseInitialize(a,b,d);this.options.array=c},getUpdatedChoices:function(){this.updateChoices(this.options.selector(this))},setOptions:function(a){this.options=Object.extend({choices:10,partialSearch:!0,partialChars:2,ignoreCase:!0,fullSearch:!1,selector:function(a){for(var c=[],d=[],e=a.getToken(),h=0;h<a.options.array.length&&c.length<a.options.choices;h++)for(var f=a.options.array[h],g=a.options.ignoreCase?f.toLowerCase().indexOf(e.toLowerCase()):
f.indexOf(e);-1!=g;){if(0==g&&f.length!=e.length){c.push("<li><strong>"+f.substr(0,e.length)+"</strong>"+f.substr(e.length)+"</li>");break}else if(e.length>=a.options.partialChars&&a.options.partialSearch&&-1!=g&&(a.options.fullSearch||/\s/.test(f.substr(g-1,1)))){d.push("<li>"+f.substr(0,g)+"<strong>"+f.substr(g,e.length)+"</strong>"+f.substr(g+e.length)+"</li>");break}g=a.options.ignoreCase?f.toLowerCase().indexOf(e.toLowerCase(),g+1):f.indexOf(e,g+1)}d.length&&(c=c.concat(d.slice(0,a.options.choices-
c.length)));return"<ul>"+c.join("")+"</ul>"}},a||{})}});Field.scrollFreeActivate=function(a){setTimeout(function(){Field.activate(a)},1)};
Ajax.InPlaceEditor=Class.create({initialize:function(a,b,c){this.url=b;this.element=a=$(a);this.prepareOptions();this._controls={};arguments.callee.dealWithDeprecatedOptions(c);Object.extend(this.options,c||{});!this.options.formId&&this.element.id&&(this.options.formId=this.element.id+"-inplaceeditor",$(this.options.formId)&&(this.options.formId=""));this.options.externalControl&&(this.options.externalControl=$(this.options.externalControl));this.options.externalControl||(this.options.externalControlOnly=
!1);this._originalBackground=this.element.getStyle("background-color")||"transparent";this.element.title=this.options.clickToEditText;this._boundCancelHandler=this.handleFormCancellation.bind(this);this._boundComplete=(this.options.onComplete||Prototype.emptyFunction).bind(this);this._boundFailureHandler=this.handleAJAXFailure.bind(this);this._boundSubmitHandler=this.handleFormSubmission.bind(this);this._boundWrapperHandler=this.wrapUp.bind(this);this.registerListeners()},checkForEscapeOrReturn:function(a){!this._editing||
a.ctrlKey||a.altKey||a.shiftKey||(Event.KEY_ESC==a.keyCode?this.handleFormCancellation(a):Event.KEY_RETURN==a.keyCode&&this.handleFormSubmission(a))},createControl:function(a,b,c){var d=this.options[a+"Control"];b=this.options[a+"Text"];"button"==d?(c=document.createElement("input"),c.type="submit",c.value=b,c.className="editor_"+a+"_button","cancel"==a&&(c.onclick=this._boundCancelHandler),this._form.appendChild(c),this._controls[a]=c):"link"==d&&(d=document.createElement("a"),d.href="#",d.appendChild(document.createTextNode(b)),
d.onclick="cancel"==a?this._boundCancelHandler:this._boundSubmitHandler,d.className="editor_"+a+"_link",c&&(d.className+=" "+c),this._form.appendChild(d),this._controls[a]=d)},createEditField:function(){var a=this.options.loadTextURL?this.options.loadingText:this.getText(),b;if(1>=this.options.rows&&!/\r|\n/.test(this.getText())){b=document.createElement("input");b.type="text";var c=this.options.size||this.options.cols||0;0<c&&(b.size=c)}else b=document.createElement("textarea"),b.rows=1>=this.options.rows?
this.options.autoRows:this.options.rows,b.cols=this.options.cols||40;b.name=this.options.paramName;b.value=a;b.className="editor_field";this.options.submitOnBlur&&(b.onblur=this._boundSubmitHandler);this._controls.editor=b;this.options.loadTextURL&&this.loadExternalText();this._form.appendChild(this._controls.editor)},createForm:function(){function a(a,d){var e=b.options["text"+a+"Controls"];e&&!1!==d&&b._form.appendChild(document.createTextNode(e))}var b=this;this._form=$(document.createElement("form"));
this._form.id=this.options.formId;this._form.addClassName(this.options.formClassName);this._form.onsubmit=this._boundSubmitHandler;this.createEditField();"textarea"==this._controls.editor.tagName.toLowerCase()&&this._form.appendChild(document.createElement("br"));if(this.options.onFormCustomization)this.options.onFormCustomization(this,this._form);a("Before",this.options.okControl||this.options.cancelControl);this.createControl("ok",this._boundSubmitHandler);a("Between",this.options.okControl&&this.options.cancelControl);
this.createControl("cancel",this._boundCancelHandler,"editor_cancel");a("After",this.options.okControl||this.options.cancelControl)},destroy:function(){this._oldInnerHTML&&(this.element.innerHTML=this._oldInnerHTML);this.leaveEditMode();this.unregisterListeners()},enterEditMode:function(a){this._saving||this._editing||(this._editing=!0,this.triggerCallback("onEnterEditMode"),this.options.externalControl&&this.options.externalControl.hide(),this.element.hide(),this.createForm(),this.element.parentNode.insertBefore(this._form,
this.element),this.options.loadTextURL||this.postProcessEditField(),a&&Event.stop(a))},enterHover:function(a){this.options.hoverClassName&&this.element.addClassName(this.options.hoverClassName);this._saving||this.triggerCallback("onEnterHover")},getText:function(){return this.element.innerHTML.unescapeHTML()},handleAJAXFailure:function(a){this.triggerCallback("onFailure",a);this._oldInnerHTML&&(this.element.innerHTML=this._oldInnerHTML,this._oldInnerHTML=null)},handleFormCancellation:function(a){this.wrapUp();
a&&Event.stop(a)},handleFormSubmission:function(a){var b=this._form,c=$F(this._controls.editor);this.prepareSubmission();b=this.options.callback(b,c)||"";Object.isString(b)&&(b=b.toQueryParams());b.editorId=this.element.id;this.options.htmlResponse?(c=Object.extend({evalScripts:!0},this.options.ajaxOptions),Object.extend(c,{parameters:b,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler}),new Ajax.Updater({success:this.element},this.url,c)):(c=Object.extend({method:"get"},this.options.ajaxOptions),
Object.extend(c,{parameters:b,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler}),new Ajax.Request(this.url,c));a&&Event.stop(a)},leaveEditMode:function(){this.element.removeClassName(this.options.savingClassName);this.removeForm();this.leaveHover();this.element.style.backgroundColor=this._originalBackground;this.element.show();this.options.externalControl&&this.options.externalControl.show();this._editing=this._saving=!1;this._oldInnerHTML=null;this.triggerCallback("onLeaveEditMode")},
leaveHover:function(a){this.options.hoverClassName&&this.element.removeClassName(this.options.hoverClassName);this._saving||this.triggerCallback("onLeaveHover")},loadExternalText:function(){this._form.addClassName(this.options.loadingClassName);this._controls.editor.disabled=!0;var a=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(a,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(a){this._form.removeClassName(this.options.loadingClassName);
a=a.responseText;this.options.stripLoadedTextTags&&(a=a.stripTags());this._controls.editor.value=a;this._controls.editor.disabled=!1;this.postProcessEditField()}.bind(this),onFailure:this._boundFailureHandler});new Ajax.Request(this.options.loadTextURL,a)},postProcessEditField:function(){var a=this.options.fieldPostCreation;if(a)$(this._controls.editor)["focus"==a?"focus":"activate"]()},prepareOptions:function(){this.options=Object.clone(Ajax.InPlaceEditor.DefaultOptions);Object.extend(this.options,
Ajax.InPlaceEditor.DefaultCallbacks);[this._extraDefaultOptions].flatten().compact().each(function(a){Object.extend(this.options,a)}.bind(this))},prepareSubmission:function(){this._saving=!0;this.removeForm();this.leaveHover();this.showSaving()},registerListeners:function(){this._listeners={};var a;$H(Ajax.InPlaceEditor.Listeners).each(function(b){a=this[b.value].bind(this);this._listeners[b.key]=a;this.options.externalControlOnly||this.element.observe(b.key,a);this.options.externalControl&&this.options.externalControl.observe(b.key,
a)}.bind(this))},removeForm:function(){this._form&&(this._form.remove(),this._form=null,this._controls={})},showSaving:function(){this._oldInnerHTML=this.element.innerHTML;this.element.innerHTML=this.options.savingText;this.element.addClassName(this.options.savingClassName);this.element.style.backgroundColor=this._originalBackground;this.element.show()},triggerCallback:function(a,b){if("function"==typeof this.options[a])this.options[a](this,b)},unregisterListeners:function(){$H(this._listeners).each(function(a){this.options.externalControlOnly||
this.element.stopObserving(a.key,a.value);this.options.externalControl&&this.options.externalControl.stopObserving(a.key,a.value)}.bind(this))},wrapUp:function(a){this.leaveEditMode();this._boundComplete(a,this.element)}});Object.extend(Ajax.InPlaceEditor.prototype,{dispose:Ajax.InPlaceEditor.prototype.destroy});
Ajax.InPlaceCollectionEditor=Class.create(Ajax.InPlaceEditor,{initialize:function($super,b,c,d){this._extraDefaultOptions=Ajax.InPlaceCollectionEditor.DefaultOptions;$super(b,c,d)},createEditField:function(){var a=document.createElement("select");a.name=this.options.paramName;a.size=1;this._controls.editor=a;this._collection=this.options.collection||[];this.options.loadCollectionURL?this.loadCollection():this.checkForExternalText();this._form.appendChild(this._controls.editor)},loadCollection:function(){this._form.addClassName(this.options.loadingClassName);
this.showLoadingText(this.options.loadingCollectionText);var a=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(a,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(a){a=a.responseText.strip();if(!/^\[.*\]$/.test(a))throw"Server returned an invalid collection representation.";this._collection=eval(a);this.checkForExternalText()}.bind(this),onFailure:this.onFailure});new Ajax.Request(this.options.loadCollectionURL,a)},
showLoadingText:function(a){this._controls.editor.disabled=!0;var b=this._controls.editor.firstChild;b||(b=document.createElement("option"),b.value="",this._controls.editor.appendChild(b),b.selected=!0);b.update((a||"").stripScripts().stripTags())},checkForExternalText:function(){this._text=this.getText();this.options.loadTextURL?this.loadExternalText():this.buildOptionList()},loadExternalText:function(){this.showLoadingText(this.options.loadingText);var a=Object.extend({method:"get"},this.options.ajaxOptions);
Object.extend(a,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(a){this._text=a.responseText.strip();this.buildOptionList()}.bind(this),onFailure:this.onFailure});new Ajax.Request(this.options.loadTextURL,a)},buildOptionList:function(){this._form.removeClassName(this.options.loadingClassName);this._collection=this._collection.map(function(a){return 2===a.length?a:[a,a].flatten()});var a="value"in this.options?this.options.value:this._text,
b=this._collection.any(function(b){return b[0]==a}.bind(this));this._controls.editor.update("");var c;this._collection.each(function(d,e){c=document.createElement("option");c.value=d[0];c.selected=b?d[0]==a:0==e;c.appendChild(document.createTextNode(d[1]));this._controls.editor.appendChild(c)}.bind(this));this._controls.editor.disabled=!1;Field.scrollFreeActivate(this._controls.editor)}});
Ajax.InPlaceEditor.prototype.initialize.dealWithDeprecatedOptions=function(a){function b(b,d){b in a||void 0===d||(a[b]=d)}a&&(b("cancelControl",a.cancelLink?"link":a.cancelButton?"button":a.cancelLink==a.cancelButton==0?!1:void 0),b("okControl",a.okLink?"link":a.okButton?"button":a.okLink==a.okButton==0?!1:void 0),b("highlightColor",a.highlightcolor),b("highlightEndColor",a.highlightendcolor))};
Object.extend(Ajax.InPlaceEditor,{DefaultOptions:{ajaxOptions:{},autoRows:3,cancelControl:"link",cancelText:"cancel",clickToEditText:"Click to edit",externalControl:null,externalControlOnly:!1,fieldPostCreation:"activate",formClassName:"inplaceeditor-form",formId:null,highlightColor:"#ffff99",highlightEndColor:"#ffffff",hoverClassName:"",htmlResponse:!0,loadingClassName:"inplaceeditor-loading",loadingText:"Loading...",okControl:"button",okText:"ok",paramName:"value",rows:1,savingClassName:"inplaceeditor-saving",
savingText:"Saving...",size:0,stripLoadedTextTags:!1,submitOnBlur:!1,textAfterControls:"",textBeforeControls:"",textBetweenControls:""},DefaultCallbacks:{callback:function(a){return Form.serialize(a)},onComplete:function(a,b){new Effect.Highlight(b,{startcolor:this.options.highlightColor,keepBackgroundImage:!0})},onEnterEditMode:null,onEnterHover:function(a){a.element.style.backgroundColor=a.options.highlightColor;a._effect&&a._effect.cancel()},onFailure:function(a,b){alert("Error communication with the server: "+
a.responseText.stripTags())},onFormCustomization:null,onLeaveEditMode:null,onLeaveHover:function(a){a._effect=new Effect.Highlight(a.element,{startcolor:a.options.highlightColor,endcolor:a.options.highlightEndColor,restorecolor:a._originalBackground,keepBackgroundImage:!0})}},Listeners:{click:"enterEditMode",keydown:"checkForEscapeOrReturn",mouseover:"enterHover",mouseout:"leaveHover"}});Ajax.InPlaceCollectionEditor.DefaultOptions={loadingCollectionText:"Loading options..."};
Form.Element.DelayedObserver=Class.create({initialize:function(a,b,c){this.delay=b||.5;this.element=$(a);this.callback=c;this.timer=null;this.lastValue=$F(this.element);Event.observe(this.element,"keyup",this.delayedListener.bindAsEventListener(this))},delayedListener:function(a){this.lastValue!=$F(this.element)&&(this.timer&&clearTimeout(this.timer),this.timer=setTimeout(this.onTimerEvent.bind(this),1E3*this.delay),this.lastValue=$F(this.element))},onTimerEvent:function(){this.timer=null;this.callback(this.element,
$F(this.element))}});