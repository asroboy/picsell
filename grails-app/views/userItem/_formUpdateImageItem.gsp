<div class="form-group">
    <div class="sub-part1" style="margin-bottom: 10px">
        <label for="imgInp">Upload Media ${mediaTypeName?:"Images"}</label>
    </div>

    <img id="blah" src="${image_resource ?: resource(dir: 'images', file: 'blank_image.png')}"
         style="width: 100%; height: auto"/>
    <input type="file" name="file" id="imgInp" class="form-control" onchange="AlertFilesize();"
           accept="image/*" required/>

</div>

<div>
    <div id="size-label" class="my-4 label-red" style="width: 100%; display: none;">This item will included in several group size below</div>
    <input id="original_size" type="text" name="original_size" value="L" style="display: none"/>
    <div id="form-l"></div>
    <div id="size-l" class="card bg-danger" style="display: none;">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Size : <strong>L</strong></li>
            <li id="dim-l" class="list-group-item">Dimension :</li>
        </ul>
    </div>
    <div id="form-m"></div>
    <div id="size-m" class="card bg-warning" style="margin-top: 10px; display: none">

        <ul class="list-group list-group-flush">
            <li class="list-group-item">Size : <strong>M</strong></li>
            <li id="dim-m" class="list-group-item">Dimension :</li>
        </ul>
    </div>

    <div id="form-s"></div>
    <div id="size-s" class="card bg-success" style="margin-top: 10px; display: none">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Size : <strong>S</strong></li>
            <li id="dim-s" class="list-group-item">Dimension :</li>
        </ul>
    </div>
</div>

<script>
    $("#imgInp").change(function () {
        readURL(this);
    });
</script>