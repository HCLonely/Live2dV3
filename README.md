> 本项目基于[AzurLaneL2DViewer](https://github.com/alg-wiki/AzurLaneL2DViewer)修改

在网页上添加 `.moc3` 格式的Live2d模型

[Demo](https://live2dv3demo.hclonely.com/)

# 使用(Usage)

在你的网页`</body>`标签之前添加以下内容：

```
<!------ 位置可自定义 ------>
<div class="Canvas" style="position: fixed; right: 10px; bottom: 10px;z-index: 99999999" id="L2dCanvas"></div>

<!------ 依赖 JS | Dependent JS ------>
<!---- 可选 | Optional ---->
<!-- 兼容低版本浏览器 | Compatible with low-level browsers -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"> </script>
<!-- 音频播放兼容 | Audio playback compatible -->
<script src="https://cdn.jsdelivr.net/npm/howler@2.1.3/dist/howler.min.js"></script>
<!---- 必需 | Required ---->
<script src="https://cubism.live2d.com/sdk-web/cubismcore/live2dcubismcore.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/pixi.js@4.6.1/dist/pixi.min.js"></script>
<!-- live2dv3.js -->
<script src="https://cdn.jsdelivr.net/npm/live2dv3@1.2.2/live2dv3.min.js"></script>

<!------ 加载Live2d模型 | Load Live2d model ------>
<script>
    window.onload = () => {
        new l2dViewer({
            el: document.getElementById('L2dCanvas'),
            basePath: 'https://cdn.jsdelivr.net/npm/live2dv3@latest/assets',
            modelName: 'biaoqiang_3',
            sounds: [
                'sounds/demo.mp3', // 相对路径是相对于模型文件夹
                'https://cdn.jsdelivr.net/npm/live2dv3@latest/assets/biaoqiang_3/sounds/demo.mp3' // 也可以是网址
            ]
        })
    }
</script>
```

# 参数

| 参数 | 类型 | 描述 | 默认 |
| :-----: | :-----: | :-----: | :-----: |
| `el` | [必需] DOM 对象或 jQuery 对象 | 要挂载Live2d模型的元素, 支持DOM选择器和jQuery选择器，例：`document.getElementById('L2dCanvas')`或`document.querySelector('#L2dCanvas')`或`$('#L2dCanvas')` | `null` |
| `basePath` | [必需] String | 模型根目录 | `null` |
| `modelName` | [必需] String | 模型目录 | `null` |
| `width` | [可选] Number | Canvas宽度，单位: `px` | `500` |
| `height` | [可选] Number | Canvas高度，单位: `px` | `300` |
| `sizeLimit` | [可选] Boolean | 当窗口大小小于设置的宽或高时不加载模型 | `false` |
| `mobileLimit` | [可选] Boolean | 移动端不加载模型 | `false` |
| `sounds` | [可选] Array | 触摸播放声音， 留空则不播放 | `null` |

# 方法

## loadModel(`modelName`?)

重新加载/更换模型
