> 本项目基于[AzurLaneL2DViewer](https://github.com/alg-wiki/AzurLaneL2DViewer)修改

在网页上添加 `.moc3` 格式的Live2d模型

Add a Live2d model in the format of `.moc3` to your web page

[Demo](https://live2dv3demo.hclonely.com/)

# 使用(Usage)

在你的网页`</body>`标签之前添加以下内容：

Add the following before the `</body>` tag of your web page: 

```
<!-- 位置可自定义 | Location can be customized -->
<div class="Canvas" style="position: fixed; right: 10px; bottom: 10px;z-index: 99999999" id="L2dCanvas"></div>

<!-- 依赖JS | Dependent JS -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"> </script>
<script src="https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3/js/live2dcubismcore.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/pixi.js@4.6.1/dist/pixi.min.js"></script>

<!-- live2dv3.js -->
<script src="https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3@1.1.0/live2dv3.min.js"></script>

<!-- 加载Live2d模型 | Load Live2d model -->
<script>
    window.onload = () => {
        new l2dViewer({
            el: document.getElementById('L2dCanvas'), // 要添加Live2d的元素 | To add Live2d elements
            basePath: 'https://cdn.jsdelivr.net/gh/HCLonely/Live2dV3/assets', // 模型根目录 | Model root directory
            modelName: 'biaoqiang_3', // 模型名称 | Model name
            width: 500,
            height: 300
        })
    }
</script>
```
