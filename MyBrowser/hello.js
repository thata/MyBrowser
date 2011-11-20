function highlight(element, word) {
    var nodes = element.childNodes;
    for (var i = 0; i < nodes.length; i++) {
        var node = nodes[i];
        if (node.nodeType == 1 && node.getAttribute("class") != "highlight") {
            // 要素内を走査する
            // ただし、ハイライト済みの要素は無視する
            highlight(node, word);
        } else if (node.nodeType == 3) {
            var text = node.data;
            if (new RegExp("\\b" + word + "\\b").test(text)) {
                var newText = text.split(word).join("<span class=\"highlight\">" + word + "</span>");
                jQuery(node).replaceWith(newText);
            }
        }
    }
}

// css
var style = document.createElement("style");
style.appendChild(document.createTextNode(".highlight { background: yellow; }"));
document.head.appendChild(style);


//function highlight(element, word) {
//    var nodes = element.childNodes;
//    for (var i = 0; i < nodes.length; i++) {
//        var node = nodes[i];
//        if (node.nodeType == 1 && node.getAttribute("class") != "highlight") {
//            // 要素内を走査する
//            // ただし、ハイライト済みの要素は無視する
//            highlight(node, word);
//        } else if (node.nodeType == 3) {
//            var text = node.data;
//            if (new RegExp("\\b" + word + "\\b").test(text)) {
//                var newText = text.split(word).join("<span class=\"highlight\">" + word + "</span>");
//                var e = node;
//                var parent = e.parentElement;
//                console.log(node);
//                console.log(newText);
//                console.log(parent);
////                parent.replaceChild(e, e);
//                node.innerHdata = newText;
////                // jQuery(node).replaceWith(newText);
////                var e = node;
////                var parent = e.parentElement;
////                var ne = newText;
////                parent.replaceChild(ne, e); 
//            }
//        }
//    }
//}
