<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="UTF-8">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="UTF-8">
    <title>谢香大笨蛋</title>
    <link rel="stylesheet" href="js/kindeditor/themes/default/default.css">
    <script type="text/javascript" src="js/kindeditor/kindeditor-all.js"></script>
    <script type="text/javascript" src="js/kindeditor/lang/zh-CN.js"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
           var editor = K.editor({
               allowFileManager :true,
               uploadJson:'upload'
           });

           editor = K.create('textarea[name="feel"]',{
               uploadJson:'upload'
           });
           K('#J_selectImage').click(function () {
              editor.loadPlugin('multiimage',function () {
                 editor.plugin.multiImageDialog({
                    clickFn:function (urlList) {
                        var div = K('#J_imageView');
                        div.html('');
                        K.each(urlList,function (i,data) {
                            div.append('<img src="'+data.url+'" width="50" height="50" />');
                            div.append('<input type="hidden" name="imgs" value="'+data.url+'" />');
                        });
                        editor.hideDialog();
                    }
                 });
              });
           });
        });
    </script>
</head>
<body>
    <form action="insert" method="post">
        标题：<input type="text" name="title" /> <br/>
        图片：<input type="button" id="J_selectImage" value="批量上传" />
        <div id="J_imageView"></div>
        感受：<textarea name="feel" style="width:700px;height: 200px;visibility: hidden;"><span style="color:#E53333;font-size:16px;"><strong>男儿当自强<img src="http://192.168.43.45:8080/feel_war_exploded/js/kindeditor/plugins/emoticons/images/105.gif" border="0" alt="" /></strong></span></textarea>
        <input type="submit" value="发布">
    </form>
</body>
</html>

