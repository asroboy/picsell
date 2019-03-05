<div class="form-group">
    <div class="sub-part1" style="margin-bottom: 10px">
        <label for="vidInp">Upload Media ${mediaTypeName ?: "Images"}</label>
    </div>

    %{--<img id="blah" src="${image_resource ?: resource(dir: 'images', file: 'blank_image.png')}"--}%
    %{--style="width: 100%; height: auto"/>--}%


    <input type="file" name="file" id="vidInp" class="form-control"
           accept="video/*" required/>

    <div id="container_video" style="margin-top: 15px">
        <video src="" width="100%" height="auto" controls></video>
    </div>
</div>

<script>

    $("#vidInp").change(function (evt) {
        console.log("halo");
        var fileReader = new FileReader();
        fileReader.onload = function (file) {
            var fileContent = file.target.result;
            document.getElementById("container_video").innerHTML = '<video src="' + fileContent + '" width="100%" height="auto" controls></video>';
        }
// Get the selected video from Dialog
        fileReader.readAsDataURL(this.files[0]);

    });
</script>
