<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/9/2018
  Time: 9:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red" style="width: 100%">New Item</div>
        </div>

    </div>

    <div class="row">

        <div class="col-lg-12">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${mItemInstance}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${mItemInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                    error="${error}"/></li>
                        </g:eachError>
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </g:hasErrors>

            <g:uploadForm url="[action: 'mSaveItem']">
                <div class="row">
                    <div class="col-lg-4">
                        %{--<div style="margin-bottom: 2rem">--}%
                        %{--<fieldset class="form">--}%
                        <g:render template="formAddImageItem"/>
                        %{--</fieldset>--}%
                        %{--</div>--}%
                    </div>

                    <div class="col-lg-1"></div>

                    <div class="col-lg-7">
                        <div><p><b>Please fill the column correctly, or we can't process the upload to gallery</b></p>
                        </div>
                        <g:render template="formAddItem"/>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save btn btn-sm btn-danger"
                                            value="${message(code: 'default.button.submit_now.label', default: 'Submit now')}"/>
                            <a href="${createLink(action: 'index')}" class="btn btn-sm btn-danger"
                               style="text-align: left">Cancel</a>
                        </fieldset>

                    </div>
                </div>

            </g:uploadForm>
        </div>
        <!-- /.col-lg-3 -->


        <div class="col-lg-5">

            %{--<div style="margin-left: 20px; margin-bottom: 50px">--}%

            %{--<fieldset class="form">--}%

            %{--</fieldset>--}%

            %{--</div>--}%

        </div>

        <div class="col-lg-2">
            <div class="row">
                <div style="margin-left: 20px; margin-bottom: 50px">

                    %{--<img src="${resource(dir: 'images', file: 'background.jpeg')}" style="width: 100%"/>--}%
                    %{--<br/>--}%

                </div>

            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->

</div>
<!-- /.container -->

<script>
    function fixExifOrientation($img) {
        $img.on('load', function() {
            EXIF.getData($img[0], function() {
                console.log('Exif=', EXIF.getTag(this, "Orientation"));
                switch(parseInt(EXIF.getTag(this, "Orientation"))) {
                    case 2:
                        $img.addClass('flip'); break;
                    case 3:
                        $img.addClass('rotate-180'); break;
                    case 4:
                        $img.addClass('flip-and-rotate-180'); break;
                    case 5:
                        $img.addClass('flip-and-rotate-270'); break;
                    case 6:
                        $img.addClass('rotate-90'); break;
                    case 7:
                        $img.addClass('flip-and-rotate-90'); break;
                    case 8:
                        $img.addClass('rotate-270'); break;
                }
            });
        });
    }
</script>


<script>
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {

        readURL(this);
    });

    function AlertFilesize() {
        if (window.ActiveXObject) {
            var fso = new ActiveXObject("Scripting.FileSystemObject");
            var filepath = document.getElementById('imgInp').value;
            var thefile = fso.getFile(filepath);
            var sizeinbytes = thefile.size;


        } else {
            var thefile = document.getElementById('imgInp').files[0];
            var sizeinbytes = thefile.size;
        }

        var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
        fSize = sizeinbytes;
        var currentSize = fSize;

        i = 0;
        while (fSize > 900) {
            fSize /= 1024;
            console.log("fsize : " + fSize);
            i++;
        }

        console.log(i);
        var size = (Math.round(fSize * 100) / 100);
        if (i < 2) {
            alert('Your file size must be at least 4 MB, your current size is ' + size + ' ' + fSExt[i]);
            document.getElementById("imgInp").value = "";
        } else {
            if (size < 4) {
                alert('Your file size must be at least 4 MB, your current size is ' + size + ' ' + fSExt[i]);
                document.getElementById("imgInp").value = "";
            }
        }

        var img = document.getElementById('blah');
        img.onload = function () {
            fixExifOrientation($('#blah'));
            document.getElementById("original_size").value = 'M';

            console.log("Width", img.naturalWidth);
            console.log("Height", img.naturalHeight)
            var h = img.naturalHeight;
            var w = img.naturalWidth;
            var dimOrig = w + " x " + h;
            var dimL = w + "x" + h;
            var dimElemL = document.getElementById("dim-l");
            dimElemL.innerHTML = "Dimension : " + dimL;
            console.log("Dimension : ", dimL);
            document.getElementById("form-l").innerHTML = '<input type="text" name="group_size_l" value="L"  style="display: none"/>' +
                    '<input type="text" name="image_dim_l" value="' + dimL + '"style="display: none" />';
            jQuery("#size-label").show();
            jQuery("#size-l").show();


            var dimM = parseInt((w * 80 / 100)) + "x" + parseInt(h * 80 / 100)
            var dimElemM = document.getElementById("dim-m");
            dimElemM.innerHTML = "Dimension : " + dimM;
            console.log("Dimension : ", dimM);
            document.getElementById("form-m").innerHTML = '<input type="text" name="group_size_m" value="M" style="display: none"/>'+
                    '<input type="text" name="image_dim_m" value="' + dimM + '" style="display: none"/>';
            jQuery("#size-m").show();

            var dimS = parseInt(w * 40 / 100) + "x" + parseInt(h * 40 / 100)
            var dimElemS = document.getElementById("dim-s");
            dimElemS.innerHTML = "Dimension : " + dimS;
            console.log("Dimension : ", dimS);
            document.getElementById("form-s").innerHTML = '<input type="text" name="group_size_s" value="S" style="display: none"/>' +
                    '<input type="text" name="image_dim_s" value="' + dimS + '" style="display: none"/>';
            jQuery("#size-s").show();


        }
//        var poll = setInterval(function () {
//            if (img.naturalWidth) {
//                clearInterval(poll);
//
//            }
//        }, 10);

    }

</script>
</body>
</html>