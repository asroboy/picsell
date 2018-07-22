<div class="form-group">
    <g:set var="image_resource" value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(itemInstance?.id, itemInstance.class.simpleName)?.id, params: [s: '238h9uhh3'])}"/>
    <img id="blah" src="${image_resource?: resource(dir: 'images', file: 'blank_image.png')}" style="width: 100%; height: auto"/>
    <input type="file" name="file" id="imgInp" class="form-control" />
</div>