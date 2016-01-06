<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CutAvatar.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Posrchev-裁剪头像</title>

    <script src="!js/jquery-1.4.1.min.js" type="text/javascript"></script>

    <script src="!js/cutpic.js" type="text/javascript"></script>

    <script src="!js/uploadify-v2.1.4/jquery.uploadify.v2.1.4.min.js" type="text/javascript"></script>

    <script src="!js/uploadify-v2.1.4/swfobject.js" type="text/javascript"></script>

    <link href="!css/Main.css" rel="stylesheet" type="text/css" />
    <link href="!css/uploadify.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript"> 
        var imageWidth = 300;
        var imageHeiht = 300;
                
        $(function(){                                              
 			$('#uploadify').uploadify({
 			      'uploader': '/!js/uploadify-v2.1.4/uploadify.swf',
                  'script': '/Handler/UploadAvatarHandler.ashx',                              
                  'cancelImg': '/!js/uploadify-v2.1.4/cancel.png',
                  'folder'    : '/Temp',                            
                  'queueID': 'fileQueue',
                  'auto': true,
                  'multi': false,      
                  'method' : 'get',                      
                  'fileExt': '*.jpg;*.png',
                  'fileDesc': '请选择jpg , png文件...',                  
                  'scriptData': null,
                  'sizeLimit'   : 2097152,
                  'onComplete': function (event, queueID, fileObj, response, data) {
                     if (response.indexOf('Temp') != -1) {
                                                                       
                         $("#bgDiv img").remove();                      //移除截图区里image标签
                         $("#btnSave").show();                          //保存按钮显示                    
                         var result = response.split('$');              //得返回参数
                         
                         var maxVal = 0;                           
                         if(result[1] > result[2])
                         {
                            maxVal = result[2];                            
                         }
                         else
                         {
                            maxVal = result[1];
                         }                        
                         $("#maxVal").val(maxVal);                     //设置截图区大小
                         
                         $("#hidImageUrl").val(result[0]);             //上传路径存入隐藏域
                      
                         ShowImg(result[0],result[1],result[2]);       //在截图区显示
                         
                         $("#uploadify").uploadifySettings('scriptData',{'LastImgUrl':$('#hidImageUrl').val()});		  //更新参数
                                                   
                     }
                     else {
                        alert(response);
                     }
                  }
             });	
             
             
             $("#btnSave").click(function(){                                       
                $.ajax({                    
                    type: "POST",                                   
                    url: "/Handler/CutAvatarHandler.ashx",                      
                    data: {imgUrl:$('#hidImageUrl').val(),pointX:$("#x").val(),pointY:$("#y").val(),maxVal:$("#maxVal").val()},                                                                                         
                    success: function(msg) {     
                        if (msg.indexOf('User') != -1) {
                            $("#imgCut").attr("src",msg);     
                        }
                        else
                        {
                            alert("error");
                        }                                                                              
                    },                    
                    error: function(xhr, msg, e) {                        
                        alert("error");                    
                    }                
                 });     
             });                                                  
        });
        
        
                        
        function ShowImg(imagePath,imgWidth,imgHeight) {           
            var imgPath = imagePath != "" ? imagePath : "!images/ef_pic.jpg";           
            var ic = new ImgCropper("bgDiv", "dragDiv", imgPath, imgWidth, imgHeight, null);
        }                                  
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="fl avatarbg">
        <div class="avatarboxbar">
            <div id="bgDiv">
                <div id="dragDiv">
                </div>
            </div>
        </div>
    </div>
    <div class="avatarthumb">
        <asp:Image ID="imgCut" ImageUrl="/!images/blank_pic.jpg" runat="server" />
    </div>
    <br />
    <div class="uploadimg">
        <div class="upload">
            <div class="uploadswf">
                <input type="file" name="uploadify" id="uploadify" />
            </div>
            <br />
            <p id="fileQueue">
            </p>
        </div>
    </div>
    <input id="btnSave" type="button" value="保存" style="display: none;" />
    <input id="x" runat="server" type="hidden" value="0" />
    <input id="y" runat="server" type="hidden" value="0" />
    <input id="hidImageUrl" type="hidden" value="" />
    <input id="maxVal" runat="server" type="hidden" value="100" />
    </form>
</body>
</html>
