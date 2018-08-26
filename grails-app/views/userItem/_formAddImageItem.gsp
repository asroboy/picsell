<div class="form-group">
    <g:set var="image_resource"
           value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id, params: [s: '238h9uhh3'])}"/>
    <img id="blah" src="${image_resource ?: resource(dir: 'images', file: 'blank_image.png')}"
         style="width: 100%; height: auto"/>
    <input type="file" name="file" id="imgInp" class="form-control" onchange="AlertFilesize();"
           accept="image/*"/>

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