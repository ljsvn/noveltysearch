/*
This file is part of Ext JS 3.4

Copyright (c) 2011-2013 Sencha Inc

Contact:  http://www.sencha.com/contact

Commercial Usage
Licensees holding valid commercial licenses may use this file in accordance with the Commercial
Software License Agreement provided with the Software or, alternatively, in accordance with the
terms contained in a written agreement between you and Sencha.

If you are unsure which license is appropriate for your use, please contact the sales department
at http://www.sencha.com/contact.

Build date: 2013-11-19 14:40:42
*/
window.undefined=window.undefined;Ext={version:"3.4.1.1",versionDetail:{major:3,minor:4,patch:1.1}};Ext.apply=function(d,e,b){if(b){Ext.apply(d,b)}if(d&&e&&typeof e=="object"){for(var a in e){d[a]=e[a]}}return d};(function(){var g=0,f=Object.prototype.toString,y=navigator.userAgent.toLowerCase(),n=function(e){return e.test(y)},s=document,q=s.documentMode,u=s.compatMode=="CSS1Compat",a=n(/opera/),H=n(/\bchrome\b/),z=n(/webkit/),d=!H&&n(/safari/),F=d&&n(/applewebkit\/4/),D=d&&n(/version\/3/),B=d&&n(/version\/4/),j=!a&&n(/msie/),G=j&&((n(/msie 7/)&&q!=8&&q!=9&&q!=10)||q==7),E=j&&((n(/msie 8/)&&q!=7&&q!=9&&q!=10)||q==8),C=j&&((n(/msie 9/)&&q!=7&&q!=8&&q!=10)||q==9),i=j&&((n(/msie 10/)&&q!=7&&q!=8&&q!=9)||q==10),J=j&&n(/msie 6/),K=j&&(J||G||E||C),c=!z&&n(/gecko/),M=c&&n(/rv:1\.8/),L=c&&n(/rv:1\.9/),m=K&&!u,h=n(/windows|win32/),A=n(/macintosh|mac os x/),p=n(/adobeair/),v=n(/linux/),r=/^https/i.test(window.location.protocol),b=[],w=[],o=Ext.emptyFn,x=Ext.apply({},{constructor:o,toString:o,valueOf:o}),l=function(){var e=l.caller.caller;return e.$owner.prototype[e.$name].apply(this,arguments)};if(x.constructor!==o){w.push("constructor")}if(x.toString!==o){w.push("toString")}if(x.valueOf!==o){w.push("valueOf")}if(!w.length){w=null}function k(){}Ext.apply(k,{$isClass:true,callParent:function(e){var t;return(t=this.callParent.caller)&&(t.$previous||((t=t.$owner?t:t.caller)&&t.$owner.superclass.self[t.$name])).apply(this,e||b)}});k.prototype={constructor:function(){},callParent:function(t){var N,e=(N=this.callParent.caller)&&(N.$previous||((N=N.$owner?N:N.caller)&&N.$owner.superclass[N.$name]));return e.apply(this,t||b)}};if(J){try{s.execCommand("BackgroundImageCache",false,true)}catch(I){}}Ext.apply(Ext,{SSL_SECURE_URL:r&&j?'javascript:""':"about:blank",isStrict:u,isSecure:r,isReady:false,enableForcedBoxModel:false,enableGarbageCollector:true,enableListenerCollection:false,enableNestedListenerRemoval:false,USE_NATIVE_JSON:false,applyIf:function(t,N){if(t){for(var e in N){if(!Ext.isDefined(t[e])){t[e]=N[e]}}}return t},id:function(e,t){e=Ext.getDom(e,true)||{};if(!e.id){e.id=(t||"ext-gen")+(++g)}return e.id},extend:function(){var t=function(O){for(var N in O){this[N]=O[N]}};var e=Object.prototype.constructor;return function(S,P,R){if(typeof P=="object"){R=P;P=S;S=R.constructor!=e?R.constructor:function(){P.apply(this,arguments)}}var O=function(){},Q,N=P.prototype;O.prototype=N;Q=S.prototype=new O();Q.constructor=S;S.superclass=N;if(N.constructor==e){N.constructor=P}S.override=function(T){Ext.override(S,T)};Q.superclass=Q.supr=(function(){return N});Q.override=t;Ext.override(S,R);S.extend=function(T){return Ext.extend(S,T)};return S}}(),global:(function(){return this})(),Base:k,namespaceCache:{},createNamespace:function(R,O){var e=Ext.namespaceCache,P=O?R.substring(0,R.lastIndexOf(".")):R,U=e[P],S,N,t,Q,T;if(!U){U=Ext.global;if(P){T=[];Q=P.split(".");for(S=0,N=Q.length;S<N;++S){t=Q[S];U=U[t]||(U[t]={});T.push(t);e[T.join(".")]=U}}}return U},getClassByName:function(N){var O=N.split("."),e=Ext.global,P=O.length,t;for(t=0;e&&t<P;++t){e=e[O[t]]}return e||null},addMembers:function(t,Q,N,e){var P,O,R;for(O in N){if(N.hasOwnProperty(O)){R=N[O];if(typeof R=="function"){R.$owner=t;R.$name=O}Q[O]=R}}if(e&&w){for(P=w.length;P-->0;){O=w[P];if(N.hasOwnProperty(O)){R=N[O];if(typeof R=="function"){R.$owner=t;R.$name=O}Q[O]=R}}}},define:function(R,P,N){var t=P.override,T,Q,e,O;if(t){delete P.override;T=Ext.getClassByName(t);Ext.override(T,P)}else{if(R){O=Ext.createNamespace(R,true);e=R.substring(R.lastIndexOf(".")+1)}T=function S(){this.constructor.apply(this,arguments)};if(R){T.displayName=R}T.$isClass=true;T.callParent=Ext.Base.callParent;if(typeof P=="function"){P=P(T)}Q=P.extend;if(Q){delete P.extend;if(typeof Q=="string"){Q=Ext.getClassByName(Q)}}else{Q=k}Ext.extend(T,Q,P);if(T.prototype.constructor===T){delete T.prototype.constructor}if(!T.prototype.$isClass){Ext.applyIf(T.prototype,k.prototype)}T.prototype.self=T;if(P.xtype){Ext.reg(P.xtype,T)}T=P.singleton?new T():T;if(R){O[e]=T}}if(N){N.call(T)}return T},override:function(P,R){var N,Q;if(R){if(P.$isClass){Q=R.statics;if(Q){delete R.statics}Ext.addMembers(P,P.prototype,R,true);if(Q){Ext.addMembers(P,P,Q)}}else{if(typeof P=="function"){N=P.prototype;Ext.apply(N,R);if(Ext.isIE&&R.hasOwnProperty("toString")){N.toString=R.toString}}else{var e=P.self,t,O;if(e&&e.$isClass){for(t in R){if(R.hasOwnProperty(t)){O=R[t];if(typeof O=="function"){if(e.$className){O.displayName=e.$className+"#"+t}O.$name=t;O.$owner=e;O.$previous=P.hasOwnProperty(t)?P[t]:l}P[t]=O}}}else{Ext.apply(P,R);if(!P.constructor.$isClass){P.constructor.prototype.callParent=k.prototype.callParent;P.constructor.callParent=k.callParent}}}}}},namespace:function(){var O=arguments.length,P=0,t,N,e,R,Q,S;for(;P<O;++P){e=arguments[P];R=arguments[P].split(".");S=window[R[0]];if(S===undefined){S=window[R[0]]={}}Q=R.slice(1);t=Q.length;for(N=0;N<t;++N){S=S[Q[N]]=S[Q[N]]||{}}}return S},urlEncode:function(Q,P){var N,t=[],O=encodeURIComponent;Ext.iterate(Q,function(e,R){N=Ext.isEmpty(R);Ext.each(N?e:R,function(S){t.push("&",O(e),"=",(!Ext.isEmpty(S)&&(S!=e||!N))?(Ext.isDate(S)?Ext.encode(S).replace(/"/g,""):O(S)):"")})});if(!P){t.shift();P=""}return P+t.join("")},urlDecode:function(N,t){if(Ext.isEmpty(N)){return{}}var Q={},P=N.split("&"),R=decodeURIComponent,e,O;Ext.each(P,function(S){S=S.split("=");e=R(S[0]);O=R(S[1]);Q[e]=t||!Q[e]?O:[].concat(Q[e]).concat(O)});return Q},urlAppend:function(e,t){if(!Ext.isEmpty(t)){return e+(e.indexOf("?")===-1?"?":"&")+t}return e},toArray:function(){return j?function(N,Q,O,P){P=[];for(var t=0,e=N.length;t<e;t++){P.push(N[t])}return P.slice(Q||0,O||P.length)}:function(e,N,t){return Array.prototype.slice.call(e,N||0,t||e.length)}}(),isIterable:function(e){if(Ext.isArray(e)||e.callee){return true}if(/NodeList|HTMLCollection/.test(f.call(e))){return true}return((typeof e.nextNode!="undefined"||e.item)&&Ext.isNumber(e.length))},each:function(P,O,N){if(Ext.isEmpty(P,true)){return}if(!Ext.isIterable(P)||Ext.isPrimitive(P)){P=[P]}for(var t=0,e=P.length;t<e;t++){if(O.call(N||P[t],P[t],t,P)===false){return t}}},iterate:function(N,t,e){if(Ext.isEmpty(N)){return}if(Ext.isIterable(N)){Ext.each(N,t,e);return}else{if(typeof N=="object"){for(var O in N){if(N.hasOwnProperty(O)){if(t.call(e||N,O,N[O],N)===false){return}}}}}},getDom:function(N,t){if(!N||!s){return null}if(N.dom){return N.dom}else{if(typeof N=="string"){var O=s.getElementById(N);if(O&&j&&t){if(N==O.getAttribute("id")){return O}else{return null}}return O}else{return N}}},getBody:function(){return Ext.get(s.body||s.documentElement)},getHead:function(){var e;return function(){if(e==undefined){e=Ext.get(s.getElementsByTagName("head")[0])}return e}}(),removeNode:j&&!E?function(){var e;return function(t){if(t&&t.tagName!="BODY"){(Ext.enableNestedListenerRemoval)?Ext.EventManager.purgeElement(t,true):Ext.EventManager.removeAll(t);e=e||s.createElement("div");e.appendChild(t);e.innerHTML="";delete Ext.elCache[t.id]}}}():function(e){if(e&&e.parentNode&&e.tagName!="BODY"){(Ext.enableNestedListenerRemoval)?Ext.EventManager.purgeElement(e,true):Ext.EventManager.removeAll(e);e.parentNode.removeChild(e);delete Ext.elCache[e.id]}},isEmpty:function(t,e){return t===null||t===undefined||((Ext.isArray(t)&&!t.length))||(!e?t==="":false)},isArray:function(e){return f.apply(e)==="[object Array]"},isDate:function(e){return f.apply(e)==="[object Date]"},isObject:function(e){return !!e&&Object.prototype.toString.call(e)==="[object Object]"},isPrimitive:function(e){return Ext.isString(e)||Ext.isNumber(e)||Ext.isBoolean(e)},isFunction:function(e){return f.apply(e)==="[object Function]"},isNumber:function(e){return typeof e==="number"&&isFinite(e)},isString:function(e){return typeof e==="string"},isBoolean:function(e){return typeof e==="boolean"},isElement:function(e){return e?!!e.tagName:false},isDefined:function(e){return typeof e!=="undefined"},isOpera:a,isWebKit:z,isChrome:H,isSafari:d,isSafari3:D,isSafari4:B,isSafari2:F,isIE:j,isIE6:J,isIE7:G,isIE8:E,isIE9:C,isIE10:i,isIE9m:K,isIE10p:j&&!(J||G||E||C),isIEQuirks:j&&(!u&&(J||G||E||C)),isGecko:c,isGecko2:M,isGecko3:L,isBorderBox:m,isLinux:v,isWindows:h,isMac:A,isAir:p});Ext.ns=Ext.namespace})();Ext.ns("Ext.util","Ext.lib","Ext.data","Ext.supports");Ext.elCache={};Ext.apply(Function.prototype,{createInterceptor:function(b,a){var c=this;return !Ext.isFunction(b)?this:function(){var e=this,d=arguments;b.target=e;b.method=c;return(b.apply(a||e||window,d)!==false)?c.apply(e||window,d):null}},createCallback:function(){var a=arguments,b=this;return function(){return b.apply(window,a)}},createDelegate:function(c,b,a){var d=this;return function(){var f=b||arguments;if(a===true){f=Array.prototype.slice.call(arguments,0);f=f.concat(b)}else{if(Ext.isNumber(a)){f=Array.prototype.slice.call(arguments,0);var e=[a,0].concat(b);Array.prototype.splice.apply(f,e)}}return d.apply(c||window,f)}},defer:function(c,e,b,a){var d=this.createDelegate(e,b,a);if(c>0){return setTimeout(d,c)}d();return 0}});Ext.applyIf(String,{format:function(b){var a=Ext.toArray(arguments,1);return b.replace(/\{(\d+)\}/g,function(c,d){return a[d]})}});Ext.applyIf(Array.prototype,{indexOf:function(b,c){var a=this.length;c=c||0;c+=(c<0)?a:0;for(;c<a;++c){if(this[c]===b){return c}}return -1},remove:function(b){var a=this.indexOf(b);if(a!=-1){this.splice(a,1)}return this}});Ext.util.TaskRunner=function(e){e=e||10;var f=[],a=[],b=0,g=false,d=function(){g=false;clearInterval(b);b=0},h=function(){if(!g){g=true;b=setInterval(i,e)}},c=function(j){a.push(j);if(j.onStop){j.onStop.apply(j.scope||j)}},i=function(){var l=a.length,n=new Date().getTime();if(l>0){for(var p=0;p<l;p++){f.remove(a[p])}a=[];if(f.length<1){d();return}}for(var p=0,o,k,m,j=f.length;p<j;++p){o=f[p];k=n-o.taskRunTime;if(o.interval<=k){m=o.run.apply(o.scope||o,o.args||[++o.taskRunCount]);o.taskRunTime=n;if(m===false||o.taskRunCount===o.repeat){c(o);return}}if(o.duration&&o.duration<=(n-o.taskStartTime)){c(o)}}};this.start=function(j){f.push(j);j.taskStartTime=new Date().getTime();j.taskRunTime=0;j.taskRunCount=0;h();return j};this.stop=function(j){c(j);return j};this.stopAll=function(){d();for(var k=0,j=f.length;k<j;k++){if(f[k].onStop){f[k].onStop()}}f=[];a=[]}};Ext.TaskMgr=new Ext.util.TaskRunner();(function(){var e,a=Prototype.Version.split("."),h=(parseInt(a[0],10)>=2)||(parseInt(a[1],10)>=7)||(parseInt(a[2],10)>=1),g={},d=function(i,j){if(i&&i.firstChild){while(j){if(j===i){return true}j=j.parentNode;if(j&&(j.nodeType!=1)){j=null}}}return false},b=function(i){return !d(i.currentTarget,Ext.lib.Event.getRelatedTarget(i))};Ext.lib.Dom={getViewWidth:function(i){return i?this.getDocumentWidth():this.getViewportWidth()},getViewHeight:function(i){return i?this.getDocumentHeight():this.getViewportHeight()},getDocumentHeight:function(){var i=(document.compatMode!="CSS1Compat")?document.body.scrollHeight:document.documentElement.scrollHeight;return Math.max(i,this.getViewportHeight())},getDocumentWidth:function(){var i=(document.compatMode!="CSS1Compat")?document.body.scrollWidth:document.documentElement.scrollWidth;return Math.max(i,this.getViewportWidth())},getViewportHeight:function(){var i=self.innerHeight;var j=document.compatMode;if((j||Ext.isIE)&&!Ext.isOpera){i=(j=="CSS1Compat")?document.documentElement.clientHeight:document.body.clientHeight}return i},getViewportWidth:function(){var i=self.innerWidth;var j=document.compatMode;if(j||Ext.isIE){i=(j=="CSS1Compat")?document.documentElement.clientWidth:document.body.clientWidth}return i},isAncestor:function(j,k){var i=false;j=Ext.getDom(j);k=Ext.getDom(k);if(j&&k){if(j.contains){return j.contains(k)}else{if(j.compareDocumentPosition){return !!(j.compareDocumentPosition(k)&16)}else{while(k=k.parentNode){i=k==j||i}}}}return i},getRegion:function(i){return Ext.lib.Region.getRegion(i)},getY:function(i){return this.getXY(i)[1]},getX:function(i){return this.getXY(i)[0]},getXY:function(k){var j,o,r,s,n=(document.body||document.documentElement);k=Ext.getDom(k);if(k==n){return[0,0]}if(k.getBoundingClientRect){r=k.getBoundingClientRect();s=f(document).getScroll();return[Math.round(r.left+s.left),Math.round(r.top+s.top)]}var t=0,q=0;j=k;var i=f(k).getStyle("position")=="absolute";while(j){t+=j.offsetLeft;q+=j.offsetTop;if(!i&&f(j).getStyle("position")=="absolute"){i=true}if(Ext.isGecko){o=f(j);var u=parseInt(o.getStyle("borderTopWidth"),10)||0;var l=parseInt(o.getStyle("borderLeftWidth"),10)||0;t+=l;q+=u;if(j!=k&&o.getStyle("overflow")!="visible"){t+=l;q+=u}}j=j.offsetParent}if(Ext.isSafari&&i){t-=n.offsetLeft;q-=n.offsetTop}if(Ext.isGecko&&!i){var m=f(n);t+=parseInt(m.getStyle("borderLeftWidth"),10)||0;q+=parseInt(m.getStyle("borderTopWidth"),10)||0}j=k.parentNode;while(j&&j!=n){if(!Ext.isOpera||(j.tagName!="TR"&&f(j).getStyle("display")!="inline")){t-=j.scrollLeft;q-=j.scrollTop}j=j.parentNode}return[t,q]},setXY:function(i,j){i=Ext.fly(i,"_setXY");i.position();var k=i.translatePoints(j);if(j[0]!==false){i.dom.style.left=k.left+"px"}if(j[1]!==false){i.dom.style.top=k.top+"px"}},setX:function(j,i){this.setXY(j,[i,false])},setY:function(i,j){this.setXY(i,[false,j])}};Ext.lib.Event={getPageX:function(i){return Event.pointerX(i.browserEvent||i)},getPageY:function(i){return Event.pointerY(i.browserEvent||i)},getXY:function(i){i=i.browserEvent||i;return[Event.pointerX(i),Event.pointerY(i)]},getTarget:function(i){return Event.element(i.browserEvent||i)},resolveTextNode:Ext.isGecko?function(j){if(!j){return}var i=HTMLElement.prototype.toString.call(j);if(i=="[xpconnect wrapped native prototype]"||i=="[object XULElement]"){return}return j.nodeType==3?j.parentNode:j}:function(i){return i&&i.nodeType==3?i.parentNode:i},getRelatedTarget:function(j){j=j.browserEvent||j;var i=j.relatedTarget;if(!i){if(j.type=="mouseout"){i=j.toElement}else{if(j.type=="mouseover"){i=j.fromElement}}}return this.resolveTextNode(i)},on:function(k,i,j){if((i=="mouseenter"||i=="mouseleave")&&!h){var l=g[k.id]||(g[k.id]={});l[i]=j;j=j.createInterceptor(b);i=(i=="mouseenter")?"mouseover":"mouseout"}Event.observe(k,i,j,false)},un:function(k,i,j){if((i=="mouseenter"||i=="mouseleave")&&!h){var m=g[k.id],l=m&&m[i];if(l){j=l.fn;delete m[i];i=(i=="mouseenter")?"mouseover":"mouseout"}}Event.stopObserving(k,i,j,false)},purgeElement:function(i){},preventDefault:function(i){i=i.browserEvent||i;if(i.preventDefault){i.preventDefault()}else{i.returnValue=false}},stopPropagation:function(i){i=i.browserEvent||i;if(i.stopPropagation){i.stopPropagation()}else{i.cancelBubble=true}},stopEvent:function(i){Event.stop(i.browserEvent||i)},onAvailable:function(n,j,i){var m=new Date(),l;var k=function(){if(m.getElapsed()>10000){clearInterval(l)}var o=document.getElementById(n);if(o){clearInterval(l);j.call(i||window,o)}};l=setInterval(k,50)}};Ext.lib.Ajax=function(){var k=function(l){return l.success?function(m){l.success.call(l.scope||window,i(l,m))}:Ext.emptyFn};var j=function(l){return l.failure?function(m){l.failure.call(l.scope||window,i(l,m))}:Ext.emptyFn};var i=function(l,r){var n={},p,m,o;try{p=r.getAllResponseHeaders();Ext.each(p.replace(/\r\n/g,"\n").split("\n"),function(s){m=s.indexOf(":");if(m>=0){o=s.substr(0,m).toLowerCase();if(s.charAt(m+1)==" "){++m}n[o]=s.substr(m+1)}})}catch(q){}return{responseText:r.responseText,responseXML:r.responseXML,argument:l.argument,status:r.status,statusText:r.statusText,getResponseHeader:function(s){return n[s.toLowerCase()]},getAllResponseHeaders:function(){return p}}};return{request:function(s,p,l,q,m){var r={method:s,parameters:q||"",timeout:l.timeout,onSuccess:k(l),onFailure:j(l)};if(m){var n=m.headers;if(n){r.requestHeaders=n}if(m.xmlData){s=(s?s:(m.method?m.method:"POST"));if(!n||!n["Content-Type"]){r.contentType="text/xml"}r.postBody=m.xmlData;delete r.parameters}if(m.jsonData){s=(s?s:(m.method?m.method:"POST"));if(!n||!n["Content-Type"]){r.contentType="application/json"}r.postBody=typeof m.jsonData=="object"?Ext.encode(m.jsonData):m.jsonData;delete r.parameters}}new Ajax.Request(p,r)},formRequest:function(p,o,m,q,l,n){new Ajax.Request(o,{method:Ext.getDom(p).method||"POST",parameters:Form.serialize(p)+(q?"&"+q:""),timeout:m.timeout,onSuccess:k(m),onFailure:j(m)})},isCallInProgress:function(l){return false},abort:function(l){return false},serializeForm:function(l){return Form.serialize(l.dom||l)}}}();Ext.lib.Anim=function(){var i={easeOut:function(k){return 1-Math.pow(1-k,2)},easeIn:function(k){return 1-Math.pow(1-k,2)}};var j=function(k,l){return{stop:function(m){this.effect.cancel()},isAnimated:function(){return this.effect.state=="running"},proxyCallback:function(){Ext.callback(k,l)}}};return{scroll:function(n,l,p,q,k,m){var o=j(k,m);n=Ext.getDom(n);if(typeof l.scroll.to[0]=="number"){n.scrollLeft=l.scroll.to[0]}if(typeof l.scroll.to[1]=="number"){n.scrollTop=l.scroll.to[1]}o.proxyCallback();return o},motion:function(n,l,o,p,k,m){return this.run(n,l,o,p,k,m)},color:function(n,l,o,p,k,m){return this.run(n,l,o,p,k,m)},run:function(m,v,r,u,n,x,w){var l={};for(var q in v){switch(q){case"points":var t,z,s=Ext.fly(m,"_animrun");s.position();if(t=v.points.by){var y=s.getXY();z=s.translatePoints([y[0]+t[0],y[1]+t[1]])}else{z=s.translatePoints(v.points.to)}l.left=z.left+"px";l.top=z.top+"px";break;case"width":l.width=v.width.to+"px";break;case"height":l.height=v.height.to+"px";break;case"opacity":l.opacity=String(v.opacity.to);break;default:l[q]=String(v[q].to);break}}var p=j(n,x);p.effect=new Effect.Morph(Ext.id(m),{duration:r,afterFinish:p.proxyCallback,transition:i[u]||Effect.Transitions.linear,style:l});return p}}}();function f(i){if(!e){e=new Ext.Element.Flyweight()}e.dom=i;return e}Ext.lib.Region=function(k,m,i,j){this.top=k;this[1]=k;this.right=m;this.bottom=i;this.left=j;this[0]=j};Ext.lib.Region.prototype={contains:function(i){return(i.left>=this.left&&i.right<=this.right&&i.top>=this.top&&i.bottom<=this.bottom)},getArea:function(){return((this.bottom-this.top)*(this.right-this.left))},intersect:function(n){var k=Math.max(this.top,n.top);var m=Math.min(this.right,n.right);var i=Math.min(this.bottom,n.bottom);var j=Math.max(this.left,n.left);if(i>=k&&m>=j){return new Ext.lib.Region(k,m,i,j)}else{return null}},union:function(n){var k=Math.min(this.top,n.top);var m=Math.max(this.right,n.right);var i=Math.max(this.bottom,n.bottom);var j=Math.min(this.left,n.left);return new Ext.lib.Region(k,m,i,j)},constrainTo:function(i){this.top=this.top.constrain(i.top,i.bottom);this.bottom=this.bottom.constrain(i.top,i.bottom);this.left=this.left.constrain(i.left,i.right);this.right=this.right.constrain(i.left,i.right);return this},adjust:function(k,j,i,m){this.top+=k;this.left+=j;this.right+=m;this.bottom+=i;return this}};Ext.lib.Region.getRegion=function(m){var o=Ext.lib.Dom.getXY(m);var k=o[1];var n=o[0]+m.offsetWidth;var i=o[1]+m.offsetHeight;var j=o[0];return new Ext.lib.Region(k,n,i,j)};Ext.lib.Point=function(i,j){if(Ext.isArray(i)){j=i[1];i=i[0]}this.x=this.right=this.left=this[0]=i;this.y=this.top=this.bottom=this[1]=j};Ext.lib.Point.prototype=new Ext.lib.Region();if(Ext.isIE){function c(){var i=Function.prototype;delete i.createSequence;delete i.defer;delete i.createDelegate;delete i.createCallback;delete i.createInterceptor;window.detachEvent("onunload",c)}window.attachEvent("onunload",c)}})();