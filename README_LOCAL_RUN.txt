本地运行说明
============

不要直接双击 index.html。
浏览器用 file:// 打开本地网页时，可能会拦截 GLB 模型加载或 Save 保存功能。

推荐启动方式：

Mac：
  双击 start.command

Windows：
  双击 start.bat

Linux：
  在终端运行 ./start.sh

启动脚本会开启本地服务，并自动打开：
  http://localhost:5173/

使用网页时，请保持启动脚本打开的终端窗口不要关闭。

如果无法启动，请先安装 Python 3，再重新运行启动脚本。
在本地服务运行时，网页里的 Save 按钮会把调整结果保存到 scene-config.json。
