在网页上添加 `.moc3` 格式的Live2d模型

[Demo](https://live2dv3demo.hclonely.com/)

# 使用

在你的网页`</body>`标签之前添加一下内容：
```
<!-- 位置可自定义 -->
<div class="Canvas" style="position: fixed; right: 10px; bottom: 10px;" id="L2dCanvas"></div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"> </script>
<script src="https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3/js/live2dcubismcore.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/pixi.js@4.6.1/dist/pixi.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3/live2dv3.min.js"></script>
<script>
    $(document).ready(() => {
        new l2dViewer({
            basePath: 'https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3/',// 模型根目录
            modelName: 'biaoqiang_3',// 模型名称
            width: 500,
            height: 300
        })
    })
</script>
```