<div class="form-group">
    <div class="sub-part1" style="margin-bottom: 10px">
        <label for="vidPreview">Upload Media ${mediaTypeName ?: "Images"}</label>
    </div>


    <label for="vidPreview">Video Preview</label>
    <input type="file" name="file" id="vidPreview" class="form-control"
           accept="video/*" required/>
    <div id="container_video" style="margin-top: 15px">
        <video src="" width="100%" height="auto" controls></video>
    </div>
</div>

<div class="form-group-sm">
    <label for="fileAfterEffect">After Effect Files (zipped in .zip format)</label>
    <input type="file" name="fileAfterEffect" id="fileAfterEffect" class="form-control"
           accept=".zip"/>
</div>

<script>

    $("#vidPreview").change(function (evt) {
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
