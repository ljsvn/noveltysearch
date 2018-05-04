Jpdl = {
	svgns : "http://www.w3.org/2000/svg",
	linkns : "http://www.w3.org/1999/xlink",
	vmlns : "urn:schemas-microsoft-com:vml",
	officens : "urn:schemas-microsoft-com:office:office",
	installVml : function() {
		if (Jpdl.isVml) {
			document.attachEvent("onreadystatechange", function() {
				var $ = document;
				if ($.readyState == "complete") {
					if (!$.namespaces["v"])
						$.namespaces.add("v", Jpdl.vmlns);
					if (!$.namespaces["o"])
						$.namespaces.add("o", Jpdl.officens)
				}
			});
			var $ = document.createStyleSheet();
			$.cssText = "v\\:*{behavior:url(#default#VML)}"
					+ "o\\:*{behavior:url(#default#VML)}"
		}
	},
	seed : 0,
	id : function() {
		return "_jpdl_" + this.seed++;
	},
	onReady : function($) {
		window.onload = function() {
			$();
		}
	},
	debug : function($) {
		if (!Jpdl.debugDiv) {
			Jpdl.debugDiv = document.createElement("textarea");
			Jpdl.debugDiv.rows = 10;
			document.body.appendChild(Jpdl.debugDiv)
		}
		Jpdl.debugDiv.value += "\n" + $;
	},
	getInt : function(_) {
		_ += "";
		_ = _.replace(/px/, "");
		var $ = parseInt(_, 10);
		return isNaN($) ? 0 : $;
	},
	extend : function() {
		var _ = function($) {
			for ( var _ in $)
				this[_] = $[_]
		}, $ = Object.prototype.constructor;
		return function(F, C, A) {
			if (typeof C == "object") {
				A = C;
				C = F;
				F = A.constructor != $ ? A.constructor : function() {
					C.apply(this, arguments);
				};
			}
			var D = function() {
			}, E, B = C.prototype;
			D.prototype = B;
			E = F.prototype = new D();
			E.constructor = F;
			F.superclass = B;
			if (B.constructor == $)
				B.constructor = C;
			E.override = _;
			Jpdl.override(F, A);
			return F;
		}
	}(),
	override : function(A, $) {
		if ($) {
			var _ = A.prototype;
			for ( var B in $)
				_[B] = $[B];
			if (Jpdl.isIE && $.toString != A.toString)
				_.toString = $.toString;
		}
	},
	apply : function($, _, B) {
		if (B)
			Jpdl.apply($, B);
		if ($ && _ && typeof _ == "object")
			for ( var A in _)
				$[A] = _[A];
		return $;
	},
	applyIf : function($, _) {
		if ($ && _)
			for ( var A in _)
				if (typeof $[A] == "undefined")
					$[A] = _[A];
		return $;
	}
};
(function() {
	var C = navigator.userAgent.toLowerCase(), $ = C.indexOf("opera") > -1, F = (/webkit|khtml/)
			.test(C), D = !$ && C.indexOf("msie") > -1, _ = !$
			&& C.indexOf("msie 7") > -1, E = !F && C.indexOf("gecko") > -1, B = D
			|| _, A = !B;
	Jpdl.isSafari = F;
	Jpdl.isIE = D;
	Jpdl.isIE7 = _;
	Jpdl.isGecko = E;
	Jpdl.isVml = B;
	Jpdl.isSvg = A;
	if (B)
		Jpdl.installVml();
	Jpdl.applyIf(Array.prototype, {
		indexOf : function(_) {
			for ( var A = 0, $ = this.length; A < $; A++)
				if (this[A] == _)
					return A;
			return -1;
		},
		remove : function(_) {
			var $ = this.indexOf(_);
			if ($ != -1)
				this.splice($, 1);
			return this;
		}
	})
})();
Jpdl.geom = {};
Jpdl.geom.Point = function(_, $) {
	this.x = _;
	this.y = $;
};
Jpdl.geom.Line = function(A, B, $, _) {
	this.x1 = A;
	this.y1 = B;
	this.x2 = $;
	this.y2 = _;
};
Jpdl.geom.Line.prototype.getX1 = function() {
	return this.x1
};
Jpdl.geom.Line.prototype.getX2 = function() {
	return this.x2
};
Jpdl.geom.Line.prototype.getY1 = function() {
	return this.y1;
};
Jpdl.geom.Line.prototype.getY2 = function() {
	return this.y2;
};
Jpdl.geom.Line.prototype.getK = function() {
	return (this.y2 - this.y1) / (this.x2 - this.x1);
};
Jpdl.geom.Line.prototype.getD = function() {
	return this.y1 - this.getK() * this.x1;
};
Jpdl.geom.Line.prototype.isParallel = function(A) {
	var _ = this.x1, $ = this.x2;
	if ((Math.abs(_ - $) < 0.01) && (Math.abs(A.getX1() - A.getX2()) < 0.01))
		return true;
	else if ((Math.abs(_ - $) < 0.01)
			&& (Math.abs(A.getX1() - A.getX2()) > 0.01))
		return false;
	else if ((Math.abs(_ - $) > 0.01)
			&& (Math.abs(A.getX1() - A.getX2()) < 0.01))
		return false;
	else
		return Math.abs(this.getK() - A.getK()) < 0.01;
};
Jpdl.geom.Line.prototype.isSameLine = function(A) {
	if (this.isParallel(A)) {
		var _ = A.getK(), $ = A.getD();
		if (Math.abs(this.x1 * _ + $ - this.y1) < 0.01)
			return true;
		else
			return false;
	} else
		return false;
};
Jpdl.geom.Line.prototype.contains = function(D) {
	var B = this.x1, F = this.y1, $ = this.x2, A = this.y2, H = D.x, C = D.y, G = (B - $)
			* (B - $) + (F - A) * (F - A), E = (H - B) * (H - B) + (C - F)
			* (C - F), _ = (H - $) * (H - $) + (C - A) * (C - A);
	return G > E && G > _
};
Jpdl.geom.Line.prototype.getCrossPoint = function(B) {
	if (this.isParallel(B))
		return null;
	var F, A;
	if (Math.abs(this.x1 - this.x2) < 0.01) {
		F = this.x1;
		A = B.getK() * F + B.getD();
	} else if (Math.abs(B.getX1() - B.getX2()) < 0.01) {
		F = B.getX1();
		A = this.getD();
	} else {
		var _ = this.getK(), E = B.getK(), $ = this.getD(), D = B.getD();
		F = (D - $) / (_ - E);
		A = _ * F + $;
	}
	var C = new Jpdl.geom.Point(F, A);
	if (B.contains(C) && this.contains(C))
		return C;
	else
		return null;
};
Jpdl.geom.Rect = function(B, A, $, _) {
	this.x = B;
	this.y = A;
	this.w = $;
	this.h = _;
};
Jpdl.geom.Rect.prototype.getCrossPoint = function(C) {
	var D = null, _ = new Jpdl.geom.Line(this.x, this.y, this.x + this.w,
			this.y);
	D = _.getCrossPoint(C);
	if (D != null)
		return D;
	var B = new Jpdl.geom.Line(this.x, this.y + this.h, this.x + this.w, this.y
			+ this.h);
	D = B.getCrossPoint(C);
	if (D != null)
		return D;
	var A = new Jpdl.geom.Line(this.x, this.y, this.x, this.y + this.h);
	D = A.getCrossPoint(C);
	if (D != null)
		return D;
	var $ = new Jpdl.geom.Line(this.x + this.w, this.y, this.x + this.w, this.y
			+ this.h);
	D = $.getCrossPoint(C);
	return D;
};
Jpdl.ActivityMap = {
	activityBasePath : "css/images/48/",
	start : {
		nodeName : "start",
		url : "start_event_empty.png"
	},
	end : {
		nodeName : "end",
		url : "end_event_terminate.png"
	},
	cancel : {
		nodeName : "cancel",
		url : "end_event_cancel.png"
	},
	error : {
		nodeName : "error",
		url : "end_event_error.png"
	},
	state : {
		nodeName : "state",
		url : null
	},
	hql : {
		nodeName : "hql",
		url : null
	},
	sql : {
		nodeName : "sql",
		url : null
	},
	java : {
		nodeName : "java",
		url : null
	},
	script : {
		nodeName : "script",
		url : null
	},
	esb : {
		nodeName : "esb",
		url : null
	},
	task : {
		nodeName : "task",
		url : null
	},
	decision : {
		nodeName : "decision",
		url : "gateway_exclusive.png"
	},
	fork : {
		nodeName : "fork",
		url : "gateway_parallel.png"
	},
	join : {
		nodeName : "join",
		url : "gateway_parallel.png"
	}
};
Jpdl.Model = function($) {
	$ = $ ? $ : {};
	this.el = $.id ? document.getElementById($.id) : document.body;
	this.x = Jpdl.getInt(this.el.style.left);
	this.y = Jpdl.getInt(this.el.style.top);
	this.w = Jpdl.getInt(this.el.style.width);
	this.h = Jpdl.getInt(this.el.style.height);
	this.nodes = {};
	this.selections = [];
	this.multiSelection = false;
	this.x1 = 0;
	this.y1 = 0;
	this.x2 = 0;
	this.y2 = 0;
	document.onmousedown = this.mouseDown;
	document.onmousemove = this.mouseMove;
	document.onmouseup = this.mouseUp;
	document.onkeydown = this.keyDown;
	document.onkeyup = this.keyUp;
	this.dragType = "none";
	this.activePalette = "select";
	this.changePalette(this.activePalette);
	Jpdl.model = this;
	Jpdl.ModelDecorator.render(this);
	this.tempRect = new Jpdl.TempRect();
	this.tempRect.render();
	this.tempRect.hide();
	this.tempEdge = new Jpdl.TempEdge();
	this.tempEdge.render();
	this.tempEdge.hide(); 
};
Jpdl.Model.prototype = {
	add : function($) {
		$.model = this;
		$.render();
		this.nodes[$.getId()] = $;
	},
	remove : function($) {
		$.remove();
		delete this.nodes[$.getId()];
	},
	getXY : function(A) {
		var _ = window.event ? window.event : A, $ = {};
		if (typeof window.pageYOffset != "undefined") {
			$.x = window.pageXOffset;
			$.y = window.pageYOffset;
		} else if (typeof document.compatMode != "undefined"
				&& document.compatMode != "BackCompat") {
			$.x = document.documentElement.scrollLeft;
			$.y = document.documentElement.scrollTop
		} else if (typeof document.body != "undefined") {
			$.x = document.body.scrollLeft;
			$.y = document.body.scrollTop;
		}
		return {
			x : (_.clientX + $.x - Jpdl.model.x)-400,
			y : (_.clientY + $.y - Jpdl.model.y)-80
		}
	},
	getTarget : function($) {
		return Jpdl.isIE ? window.event.srcElement : $.target
	},
	mouseDown : function(A) {
		var _ = Jpdl.model.getXY(A), $ = Jpdl.model.getTarget(A);
		Jpdl.model.select(_, $);
		Jpdl.model.startMove(_, $);
	},
	mouseMove : function(B) {
		var A = window.event ? window.event : B, _ = Jpdl.model.getXY(B), $ = Jpdl.model
				.getTarget(B);
		if (Jpdl.model.dragType != "none") {
			Jpdl.model.move(_); 
			if(window.event)//蒲小龙add ，本来是A.returnValue = false;A.preventDefault();
            {
				A.returnValue = false;
				}else{//蒲小龙add
					A.preventDefault();
				}  
		}
	},
	mouseUp : function(A) {
		var _ = Jpdl.model.getXY(A), $ = Jpdl.model.getTarget(A);
		if (Jpdl.model.dragType != "none")
			Jpdl.model.endMove(_, $);
	},
	keyDown : function(_) {
		var $ = window.event ? window.event : _;
		if ($.ctrlKey)
			Jpdl.model.multiSelection = true;
		if ($.keyCode == 46)
			Jpdl.model.removeSelection();
		else if ($.keyCode == 65) {
			Jpdl.model.selectAll();
			$.returnValue = false;
		}
	},
	keyUp : function(_) {
		var $ = window.event ? window.event : _;
		if ($.keyCode == 17)
			Jpdl.model.multiSelection = false;
	},
	startMove : function(B, A) {
		if (A.tagName == "SPAN" && /^paletteItem\-.+$/.test(A.className)) {
			var C = A.className.replace("paletteItem-", "");
			this.changePalette(C);
			if (C != "select" && C != "marquee" && C != "transition") {
				this.dragType = "palette";
				this.tempRect.update(0, 0, 0, 0);
				this.tempRect.show();
				return;
			}
		}
		for ( var $ = 0; $ < this.selections.length; $++) {
			var _ = this.selections[$];
			if (_.getId() == A.getAttribute("id") && _.el.tagName != "line"
					&& _.el.tagName != "polyline") {
				if (this.activePalette == "transition") {
					this.dragType = "transition";
					this.tempEdge
							.update(_.x + _.w / 2, _.y + _.h / 2, B.x, B.y);
					this.tempEdge.show();
				} else
					this.dragType = "selectNode";
				return
			}
		}
		this.dragType = "marquee";
		this.tempRect.update(0, 0, 0, 0);
		this.tempRect.show();
	},
	move : function(B) {
		if (this.dragType == "selectNode") {
			var _ = B.x - this.x1, C = B.y - this.y1;
			for ( var $ = 0; $ < this.selections.length; $++) {
				var A = this.selections[$];
				A.move(_, C);
			}
		} else if (this.dragType == "marquee")
			this.tempRect
					.update(this.x1, this.y1, B.x - this.x1, B.y - this.y1);
		else if (this.dragType == "transition"){
			this.tempEdge.update(this.tempEdge.x1, this.tempEdge.y1, B.x, B.y); 
		}
			
		else if (this.dragType == "palette")
			this.tempRect.update(B.x - 24, B.y - 24, 48, 48);
	},
	endMove : function(F, E) {
		if (this.dragType == "selectNode") {
			this.dragType = "none";
			var B = F.x - this.x1, G = F.y - this.y1;
			for ( var _ = 0; _ < this.selections.length; _++) {
				var C = this.selections[_];
				C.moveEnd(B, G);
			}
		} else if (this.dragType == "marquee") {
			this.dragType = "none";
			this.tempRect.hide();
		} else if (this.dragType == "transition") { 
			this.dragType = "none";
			this.tempEdge.hide();
			var D = this.nodes[E.getAttribute("id")];
			if (D && D != this.selections[0]){  
				this.add(new Jpdl.Edge(this.selections[0], D));
			}
		} else if (this.dragType == "palette") {
			this.dragType = "none";
			this.tempRect.hide();
			var A = Jpdl.ActivityMap[this.activePalette], $ = {};
			Jpdl.apply($, A);
			$.x = F.x - 24;
			$.y = F.y - 24;
			if ($.url == null)
				this.add(new Jpdl.Node($));
			else {
				$.url = Jpdl.ActivityMap.activityBasePath + $.url;
				this.add(new Jpdl.ImageNode($));
			}
		}
	},
	select : function(B, A) {
		this.x1 = B.x;
		this.y1 = B.y;
		var $ = A.getAttribute("id"), _ = this.nodes[$]; 
		if (_)
			_.toggle();
	},
	removeSelection : function() {
		var _ = this.selections;
		for (i = _.length - 1; i >= 0; i--) {
			var $ = _[i];
			$.remove();
		}
		this.selections = [];
	},
	selectAll : function() {
		if (this.multiSelection)
			for ( var $ in this.nodes) {
				var _ = this.nodes[$];
				if (!_.selected)
					_.select();
			}
	},
	changePalette : function($) {
		var _ = document.getElementById(this.activePalette);
		_.style.background = "white";
		this.activePalette = $;
		_ = document.getElementById(this.activePalette);
		_.style.background = "#CCCCCC";
	}
};
Jpdl.ModelDecorator = {
	render : function($) {
		if (Jpdl.isVml) {
			Jpdl.installVml();
			document.onselectstart = function() {
				return false;
			};
			this.renderVml($);
		} else
			this.renderSvg($);
	},
	renderVml : function($) {
		$.root = $.el;
	},
	renderSvg : function(C) {
		var B = C.el.ownerDocument.createElementNS(Jpdl.svgns, "svg");
		B.setAttribute("id", Jpdl.id());
		B.setAttribute("width", C.w);
		B.setAttribute("height", C.h);
		C.root = B;
		C.el.appendChild(B);
		var _ = B.ownerDocument.createElementNS(Jpdl.svgns, "defs");
		B.appendChild(_);
		var A = B.ownerDocument.createElementNS(Jpdl.svgns, "marker");
		A.setAttribute("id", "markerArrow");
		A.setAttribute("markerWidth", 4);
		A.setAttribute("markerHeight", 4);
		A.setAttribute("refX", 4);
		A.setAttribute("refY", 2);
		A.setAttribute("orient", "auto");
		var $ = B.ownerDocument.createElementNS(Jpdl.svgns, "path");
		$.setAttribute("d", "M 0 0 L 4 2 L 0 4 z");
		$.setAttribute("stroke", "blue");
		$.setAttribute("fill", "blue");
		A.appendChild($);
		_.appendChild(A);
	}
};
Jpdl.Shape = function($) {
	$ = $ ? $ : {};
	Jpdl.applyIf($, {
		x : 0,
		y : 0,
		w : 48,
		h : 48,
		x1 : 0,
		y1 : 0,
		x2 : 10,
		y2 : 10,
		points : [ [ 0, 20 ], [ 50, 0 ], [ 100, 20 ] ],
		fromId:'',
		toId:'',
		nodeType:'',
		selected : true
	});
	Jpdl.applyIf(this, $);
};
Jpdl.extend(Jpdl.Shape, Object, {
	render : function() {
		if (!this.el)
			if (Jpdl.isVml) {
				this.renderVml();
				this.onRenderVml();
			} else {
				this.renderSvg();
				this.onRenderSvg();
			}
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("nodeWorkName", ""); 
		this.el.setAttribute("assignUserPk", ""); 
		this.el.setAttribute("assignUserName", ""); 
		this.el.setAttribute("assignOrgPk", ""); 
		this.el.setAttribute("assignOrgName", ""); 
		this.el.setAttribute("processNodeType", "");   
		this.el.setAttribute("nodeType", this.nodeName);
		Jpdl.model.root.appendChild(this.el);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "black");
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer");
		this.el.setAttribute("nodeWorkName", ""); 
		this.el.setAttribute("assignUserPk", ""); 
		this.el.setAttribute("assignUserName", ""); 
		this.el.setAttribute("assignOrgPk", ""); 
		this.el.setAttribute("assignOrgName", ""); 
		this.el.setAttribute("processNodeType", ""); 
		this.el.setAttribute("nodeType", this.nodeName);  
		Jpdl.model.root.appendChild(this.el);
	},
	getId : function() {
		return this.el.getAttribute("id");
	},
	remove : function() {
		Jpdl.model.root.removeChild(this.el);
	},
	show : function() {
		this.el.style.display = "";
	},
	hide : function() {
		this.el.style.display = "none";
	},
	select : function() {
		if (!Jpdl.model.multiSelection) {
			var A = Jpdl.model.selections;
			Jpdl.model.selections = [];
			for ( var $ = A.length - 1; $ >= 0; $--) {
				var _ = A[$];
				_.deselect();
			}
		}
		this.selected = true;
		Jpdl.model.selections.push(this);
		this.onSelect();
	},
	onSelect : function() { 
	},
	deselect : function() {
		this.selected = false;
		Jpdl.model.selected = null;
		this.onDeselect();
		var _ = Jpdl.model.selections;
		for (i = _.length - 1; i >= 0; i--) {
			var $ = _[i];
			if ($.getId() == this.getId()) {
				_.splice(i, 1);
				break;
			}
		}
	},
	toggle : function() {
		if (!this.selected || !Jpdl.model.multiSelection)
			this.select();
	},
	onSelect : function() {
		if (Jpdl.isVml){
			this.onSelectVml();
		} 
		else{
			this.onSelectSvg(); 
		}
		onclickEl(this.el); 
	},
	onSelectVml : function() {
		this.el.setAttribute("fillcolor", "red");
	},
	onSelectSvg : function() {
		this.el.setAttribute("fill", "red");
	},
	onDeselect : function() {
		if (Jpdl.isVml)
			this.onDeselectVml();
		else
			this.onDeselectSvg();
	},
	onDeselectVml : function() {
		this.el.setAttribute("fillcolor", "white")
	},
	onDeselectSvg : function() {
		this.el.setAttribute("fill", "white")
	},
	move : function($, _) {
		if (Jpdl.isVml) {
			this.moveVml($, _);
			if (Jpdl.model.dragType == "selectNode")
				this.el.style.cursor = "move";
			else
				this.el.style.cursor = "pointer";
		} else {
			this.moveSvg($, _);
			if (Jpdl.model.dragType == "selectNode")
				this.el.setAttribute("cursor", "move");
			else
				this.el.setAttribute("cursor", "pointer")
		}
	},
	moveVml : function($, _) {
	},
	moveSvg : function($, _) {
	},
	moveEnd : function($, _) {
	}
});
Jpdl.Rect = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("v:rect");
		$.style.left = this.x + "px";
		$.style.top = this.y + "px";
		$.style.width = this.w + "px";
		$.style.height = this.h + "px";
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "rect");
		$.setAttribute("x", this.x + "px");
		$.setAttribute("y", this.y + "px");
		$.setAttribute("width", this.w + "px");
		$.setAttribute("height", this.h + "px");
		this.el = $;
	},
	moveVml : function($, _) {
		this.el.style.left = this.x + $ + "px";
		this.el.style.top = this.y + _ + "px";
	},
	moveSvg : function($, _) {
		this.el.setAttribute("x", this.x + $);
		this.el.setAttribute("y", this.y + _);
	},
	moveEnd : function($, _) {
		this.move($, _);
		this.x += $;
		this.y += _;
	}
});
Jpdl.RoundRect = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("v:roundrect");
		$.style.left = this.x + "px";
		$.style.top = this.y + "px";
		$.style.width = this.w + "px";
		$.style.height = this.h + "px";
		$.setAttribute("arcsize", 0.2); 
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "rect");
		$.setAttribute("x", this.x + "px");
		$.setAttribute("y", this.y + "px");
		$.setAttribute("width", this.w + "px");
		$.setAttribute("height", this.h + "px");
		$.setAttribute("rx", 10);
		$.setAttribute("ry", 10);
		this.el = $;
	},
	moveVml : function($, _) {
		this.el.style.left = this.x + $ + "px";
		this.el.style.top = this.y + _ + "px";
	},
	moveSvg : function($, _) {
		this.el.setAttribute("x", this.x + $);
		this.el.setAttribute("y", this.y + _);
	},
	moveEnd : function($, _) {
		this.x += $;
		this.y += _;
	}
});
Jpdl.Circle = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("v:oval");
		$.style.left = this.x - this.r + "px";
		$.style.top = this.y - this.r + "px";
		$.style.width = this.r * 2 + "px";
		$.style.height = this.r * 2 + "px";
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "circle");
		$.setAttribute("cx", this.x);
		$.setAttribute("cy", this.y);
		$.setAttribute("r", this.r);
		this.el = $;
	},
	moveVml : function($, _) {
		this.el.style.left = this.x - this.r + $ + "px";
		this.el.style.top = this.y - this.r + _ + "px"
	},
	moveSvg : function($, _) {
		this.el.setAttribute("cx", this.x + $);
		this.el.setAttribute("cy", this.y + _)
	},
	moveEnd : function($, _) {
		this.move($, _);
		this.x += $;
		this.y += _
	}
});
Jpdl.Line = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("v:line");
		$.setAttribute("from", this.x1 + "," + this.y1);
		$.setAttribute("to", this.x2 + "," + this.y2);
		$.setAttribute("fromId", this.fromId);
		$.setAttribute("toId", this.toId);
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "line");
		$.setAttribute("x1", this.x1 + "px");
		$.setAttribute("y1", this.y1 + "px");
		$.setAttribute("x2", this.x2 + "px");
		$.setAttribute("y2", this.y2 + "px");
		$.setAttribute("y2", this.y2 + "px"); 
		$.setAttribute("fromId", this.fromId);
		$.setAttribute("toId", this.toId);
		this.el = $;
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("strokeweight", 2);
		this.el.setAttribute("strokecolor", "blue");
		Jpdl.model.root.appendChild(this.el);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "blue");
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer"); 
		Jpdl.model.root.appendChild(this.el);
	},
	moveVml : function(_, B) {
		var A = (this.x1 + _) + "," + (this.y1 + B), $ = (this.x2 + _) + ","
				+ (this.y2 + B);
		this.el.setAttribute("from", A);
		this.el.setAttribute("to", $);
		
	},
	moveSvg : function($, _) {
		this.el.setAttribute("x1", this.x1 + $ + "px");
		this.el.setAttribute("y1", this.y1 + _ + "px");
		this.el.setAttribute("x2", this.x2 + $ + "px");
		this.el.setAttribute("y2", this.y2 + _ + "px");
	},
	moveEnd : function($, _) {
		this.move($, _);
		this.x1 += $;
		this.y1 += _;
		this.x2 += $;
		this.y2 += _;
	},
	onSelectVml : function() {
		this.el.setAttribute("strokeweight", "4");
		this.el.setAttribute("strokecolor", "green");
	},
	onSelectSvg : function() {
		this.el.setAttribute("stroke-width", "4");
		this.el.setAttribute("stroke", "green");
	},
	onDeselectVml : function() {
		this.el.setAttribute("strokeweight", "2");
		this.el.setAttribute("strokecolor", "blue");
	},
	onDeselectSvg : function() {
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("stroke", "blue");
	}
});
Jpdl.Polyline = Jpdl.extend(Jpdl.Shape, {
	getPoint : function(_, C) {
		var A = "";
		for ( var $ = 0; $ < this.points.length; $++) {
			var B = this.points[$];
			A += (B[0] + _) + "," + (B[1] + C) + " "
		}
		return A;
	},
	renderVml : function() {
		var $ = document.createElement("v:polyline");
		$.setAttribute("points", this.getPoint(0, 0));
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "polyline");
		$.setAttribute("points", this.getPoint(0, 0));
		this.el = $;
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("strokeweight", 2);
		this.el.setAttribute("strokecolor", "blue");
		Jpdl.model.root.appendChild(this.el);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "blue");
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer");
		Jpdl.model.root.appendChild(this.el);
	},
	moveVml : function($, _) {
		this.el.points.value = this.getPoint($, _);
	},
	moveSvg : function($, _) {
		this.el.setAttribute("points", this.getPoint($, _));
	},
	moveEnd : function(_, B) {
		this.move(_, B);
		for ( var $ = 0; $ < this.points.length; $++) {
			var A = this.points[$];
			A[0] += _;
			A[1] += B;
		}
	},
	onSelectVml : function() {
		this.el.setAttribute("strokeweight", "4");
		this.el.setAttribute("strokecolor", "green");
	},
	onSelectSvg : function() {
		this.el.setAttribute("stroke-width", "4");
		this.el.setAttribute("stroke", "green");
	},
	onDeselectVml : function() {
		this.el.setAttribute("strokeweight", "2");
		this.el.setAttribute("strokecolor", "blue");
	},
	onDeselectSvg : function() {
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("stroke", "blue");
	}
});
Jpdl.Image = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("img");
		$.style.left = this.x + "px";
		$.style.top = this.y + "px";
		$.setAttribute("src", this.url);
		$.setAttribute("nodeType", $.nodeName);
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "image");
		$.setAttribute("x", this.x + "px");
		$.setAttribute("y", this.y + "px");
		$.setAttribute("width", "48px");
		$.setAttribute("height", "48px");
		$.setAttribute("nodeType", this.nodeName);
		$.setAttributeNS(Jpdl.linkns, "xlink:href", this.url);
		this.el = $;
	},
	moveVml : function($, _) {
		this.el.style.left = this.x + $ + "px";
		this.el.style.top = this.y + _ + "px";
	},
	moveSvg : function($, _) {
		this.el.setAttribute("x", this.x + $);
		this.el.setAttribute("y", this.y + _);
	},
	moveEnd : function($, _) {
		this.move($, _);
		this.x += $;
		this.y += _;
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		Jpdl.model.root.appendChild(this.el);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("cursor", "pointer");
		Jpdl.model.root.appendChild(this.el);
	}
});
Jpdl.Text = Jpdl.extend(Jpdl.Shape, {
	renderVml : function() {
		var $ = document.createElement("v:textbox");
		$.style.left = this.x + "px";
		$.style.top = this.y + "px";
		$.innerHTML = this.text;
		this.el = $;
	},
	renderSvg : function() {
		var $ = document.createElementNS(Jpdl.svgns, "text");
		$.setAttribute("x", this.x + "px");
		$.setAttribute("y", this.y + "px");
		$.textContent = this.text;
		this.el = $;
	},
	moveVml : function($, _) {
		this.el.style.left = this.x + $ + "px";
		this.el.style.top = this.y + _ + "px";
		if (Jpdl.model.dragType == "none") {
			this.x += $;
			this.y += _;
		}
	},
	moveSvg : function($, _) {
		this.el.setAttribute("x", this.x + $);
		this.el.setAttribute("y", this.y + _);
		if (Jpdl.model.dragType == "none") {
			this.x += $;
			this.y += _;
		}
	}
});
Jpdl.Node = Jpdl.extend(Jpdl.RoundRect, {
	constructor : function($) {
		this.outputs = [];
		this.incomes = [];
		Jpdl.Node.superclass.constructor.call(this, $);
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("strokecolor", "blue");
		this.el.setAttribute("strokeweight", "2"); 
		this.el.setAttribute("nodeWorkName", ""); 
		this.el.setAttribute("assignUserPk", ""); 
		this.el.setAttribute("assignUserName", ""); 
		this.el.setAttribute("assignOrgPk", ""); 
		this.el.setAttribute("assignOrgName", ""); 
		this.el.setAttribute("processNodeType", ""); 
		this.el.setAttribute("nodeType", this.nodeName); 
		Jpdl.model.root.appendChild(this.el);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "blue");
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer"); 
		this.el.setAttribute("nodeWorkName", ""); 
		this.el.setAttribute("assignUserPk", ""); 
		this.el.setAttribute("assignUserName", ""); 
		this.el.setAttribute("assignOrgPk", ""); 
		this.el.setAttribute("assignOrgName", ""); 
		this.el.setAttribute("processNodeType", ""); 
		this.el.setAttribute("nodeType", this.nodeName);
		Jpdl.model.root.appendChild(this.el); 
		
	},
	move : function(A, B) {
		Jpdl.ImageNode.superclass.move.call(this, A, B);
		for ( var $ = 0; $ < this.incomes.length; $++) {
			var _ = this.incomes[$];
			_.refresh();
		}
		for ($ = 0; $ < this.outputs.length; $++) {
			_ = this.outputs[$];
			_.refresh();
		}
	},
	moveEnd : function(A, B) {
		Jpdl.ImageNode.superclass.moveEnd.call(this, A, B);
		for ( var $ = 0; $ < this.incomes.length; $++) {
			var _ = this.incomes[$];
			_.refresh();
		}
		for ($ = 0; $ < this.outputs.length; $++) {
			_ = this.outputs[$];
			_.refresh();
		}
	},
	remove : function() {
		for ( var $ = this.outputs.length - 1; $ >= 0; $--) {
			var _ = this.outputs[$];
			_.remove();
		}
		for ($ = this.incomes.length - 1; $ >= 0; $--) {
			_ = this.incomes[$];
			_.remove();
		}
		Jpdl.model.root.removeChild(this.el);
	}
});
Jpdl.ImageNode = Jpdl.extend(Jpdl.Image, {
	constructor : function($) {
		this.outputs = [];
		this.incomes = [];
		Jpdl.ImageNode.superclass.constructor.call(this, $);
	},
	move : function(A, B) {
		Jpdl.ImageNode.superclass.move.call(this, A, B);
		for ( var $ = 0; $ < this.incomes.length; $++) {
			var _ = this.incomes[$];
			_.refresh();
		}
		for ($ = 0; $ < this.outputs.length; $++) {
			_ = this.outputs[$];
			_.refresh();
		}
	},
	moveEnd : function(A, B) {
		Jpdl.ImageNode.superclass.moveEnd.call(this, A, B);
		for ( var $ = 0; $ < this.incomes.length; $++) {
			var _ = this.incomes[$];
			_.refresh();
		}
		for ($ = 0; $ < this.outputs.length; $++) {
			_ = this.outputs[$];
			_.refresh();
		}
	},
	remove : function() {
		for ( var $ = this.outputs.length - 1; $ >= 0; $--) {
			var _ = this.outputs[$];
			_.remove();
		}
		for ($ = this.incomes.length - 1; $ >= 0; $--) {
			_ = this.incomes[$];
			_.remove()
		}
		Jpdl.model.root.removeChild(this.el);
	}
});
Jpdl.Edge = Jpdl.extend(Jpdl.Line, {
	constructor : function(_, $) {
		// alert(_.el.getAttribute("id"));
		// alert($.el.getAttribute("id"));
		this.from = _;
		this.to = $;
		this.fromId=_.el.getAttribute("id");
		this.toId=$.el.getAttribute("id");
		this.from.outputs.push(this);
		this.to.incomes.push(this);
		this.calculate();
		Jpdl.Edge.superclass.constructor.call(this, {});
	},
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("strokeweight", 2);
		this.el.setAttribute("strokecolor", "blue"); 
		this.el.setAttribute("nodeType", this.el.nodeName);  
		Jpdl.model.root.appendChild(this.el);
		this.stroke = document.createElement("v:stroke");
		this.el.appendChild(this.stroke);
		this.stroke.setAttribute("endArrow", "Classic");
		
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "blue");
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer");
		this.el.setAttribute("marker-end", "url(#markerArrow)");
		this.el.setAttribute("nodeType", this.el.nodeName);
		Jpdl.model.root.appendChild(this.el);
	},
	calculate : function() {
		var B = new Jpdl.geom.Line(this.from.x + this.from.w / 2, this.from.y
				+ this.from.h / 2, this.to.x + this.to.w / 2, this.to.y
				+ this.to.h / 2), A = new Jpdl.geom.Rect(this.from.x,
				this.from.y, this.from.w, this.from.h), _ = new Jpdl.geom.Rect(
				this.to.x, this.to.y, this.to.w, this.to.h), $ = A
				.getCrossPoint(B), C = _.getCrossPoint(B);
		this.x1 = $.x;
		this.y1 = $.y;
		this.x2 = C.x;
		this.y2 = C.y;
	},
	update : function(A, B, $, _) {
		this.x1 = A;
		this.y1 = B;
		this.x2 = $;
		this.y2 = _;
		if (Jpdl.isVml)
			this.updateVml();
		else
			this.updateSvg();
	},
	updateVml : function() {
		this.el.setAttribute("from", this.x1 + "," + this.y1);
		this.el.setAttribute("to", this.x2 + "," + this.y2);
	},
	updateSvg : function() {
		this.el.setAttribute("x1", this.x1 + "px");
		this.el.setAttribute("y1", this.y1 + "px");
		this.el.setAttribute("x2", this.x2 + "px");
		this.el.setAttribute("y2", this.y2 + "px");
	},
	refresh : function() {
		this.calculate();
		this.update(this.x1, this.y1, this.x2, this.y2);
	},
	remove : function() {
		var $ = this.from.outputs.indexOf(this);
		this.from.outputs.splice($, 1);
		var _ = this.to.incomes.indexOf(this);
		this.to.incomes.splice(_, 1);
		Jpdl.model.root.removeChild(this.el);
	}
});
Jpdl.TempRect = Jpdl.extend(Jpdl.Rect, {
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "normal";
		this.el.setAttribute("fillcolor", "#F6F6F6");
		Jpdl.model.root.appendChild(this.el);
		this.stroke = document.createElement("v:stroke");
		this.el.appendChild(this.stroke);
		this.stroke.setAttribute("strokecolor", "black");
		this.stroke.setAttribute("dashstyle", "dot");
		this.name = document.createElement("v:name");
		this.el.appendChild(this.name);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "#F6F6F6");
		this.el.setAttribute("stroke", "black"); 
		this.el.setAttribute("stroke-width", "1");
		this.el.setAttribute("cursor", "normal");
		this.el.setAttribute("stroke-dasharray", "2");
		Jpdl.model.root.appendChild(this.el);
	},
	update : function(B, A, $, _) {
		this.x = B;
		this.y = A;
		this.w = $;
		this.h = _;
		if (Jpdl.isVml)
			this.updateVml();
		else
			this.updateSvg();
	},
	updateVml : function() {
		this.el.style.left = this.x + "px";
		this.el.style.top = this.y + "px";
		this.el.style.width = this.w + "px";
		this.el.style.height = this.h + "px";
	},
	updateSvg : function() {
		this.el.setAttribute("x", this.x + "px");
		this.el.setAttribute("y", this.y + "px");
		this.el.setAttribute("width", this.w + "px");
		this.el.setAttribute("height", this.h + "px");
	}
});
Jpdl.TempEdge = Jpdl.extend(Jpdl.Line, {
	onRenderVml : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.style.position = "absolute";
		this.el.style.cursor = "pointer";
		this.el.setAttribute("strokeweight", 2);
		this.el.setAttribute("strokecolor", "red");
		Jpdl.model.root.appendChild(this.el);
		this.stroke = document.createElement("v:stroke");
		this.el.appendChild(this.stroke);
		this.stroke.setAttribute("strokecolor", "black");
		this.stroke.setAttribute("dashstyle", "dot");
		this.stroke.setAttribute("endArrow", "Classic");
		this.name = document.createElement("v:name");
		this.el.appendChild(this.name);
	},
	onRenderSvg : function() {
		this.el.setAttribute("id", Jpdl.id());
		this.el.setAttribute("fill", "white");
		this.el.setAttribute("stroke", "red"); 
		this.el.setAttribute("stroke-width", "2");
		this.el.setAttribute("cursor", "pointer");
		this.el.setAttribute("stroke-dasharray", "2");
		this.el.setAttribute("marker-end", "url(#markerArrow)");
		Jpdl.model.root.appendChild(this.el);
	},
	update : function(A, B, $, _) {
		this.x1 = A;
		this.y1 = B;
		this.x2 = $;
		this.y2 = _;
		if (Jpdl.isVml)
			this.updateVml();
		else
			this.updateSvg()
	},
	updateVml : function() {
		this.el.setAttribute("from", this.x1 + "," + this.y1);
		this.el.setAttribute("to", this.x2 + "," + this.y2);
	},
	updateSvg : function() {
		this.el.setAttribute("x1", this.x1 + "px");
		this.el.setAttribute("y1", this.y1 + "px");
		this.el.setAttribute("x2", this.x2 + "px");
		this.el.setAttribute("y2", this.y2 + "px");
	}
})