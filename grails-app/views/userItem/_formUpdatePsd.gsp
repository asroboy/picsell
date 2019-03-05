<div class="form-group">
    <div class="sub-part1" style="margin-bottom: 10px;">
        <label for="imgInp">Upload Media ${mediaTypeName}</label>
    </div>

    <img id="blah" src="${image_resource ?: resource(dir: 'images', file: 'blank_image.png')}"
         style="width: 100%; height: auto"/>
    <input type="file" name="file" id="imgInp" class="form-control inputImage"
           accept="image/*" required/>

</div>

<div class="form-group-sm">
    <label for="filePsd">PSD File</label>
    <input type="file" name="filePsd" id="filePsd" class="form-control"
           accept=".psd" required/>
</div>

<script>
    $("#imgInp").change(function () {
        readURL(this);
    });
</script>