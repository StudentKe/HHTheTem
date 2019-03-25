## What's this

HHTheTem是淮海工学院非官方的本科毕业论文的LaTeX模板.用于帮助淮海工学院本科毕业生高效完成论文写作过程中的排版格式等问题，大大减少在做毕业设计时的排版格式的工作量，以便将有限的精力用于写出内容更充实，质量更高的论文.

---

## Learn from
模板编辑和说明写作参考：
- 武汉大学黄正华老师
- 延安大学赵驰同学

---

## How To Use

****本人的工作环境为MacOS 10.14.2 故安装和配置工作都在此环境下完成，精力与能力有限，不再此介绍Windows和Linux下的安装和配置说明.（Windows下的安装和配置请移步参考:[延安大学本科毕业论文Latex模板2019](https://github.com/MLZC/YAUthesis)）****

### 安装

#### 下载MacTex安装包,有两种方式:
- [官网下载](http://tug.org/mactex/mactex-download.html)
- [清华大学镜像站下载](https://mirrors.tuna.tsinghua.edu.cn/ctan/systems/mac/mactex/)

在这里建议使用清华大学镜像站下载。
![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0id1kv68tj31s210mk1m.jpg)

#### 然后就是漫长的等待.....

=_= ||| 学校网速可真快...

![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0id33cus0j312m0auq42.jpg)


下载完成之后双击安装即可，大约需要6G空间。

![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0if3aua6xj30yg0oc43p.jpg)

安装完成.

![IMAGE](quiver-image-url/7740D3208508E55CA0A37447213ABB56.jpg =1322x380)

### 配置VSCode 


打开VSCode，安装LaTeX Workshop扩展
![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0ifyoitfgj30co0f875o.jpg)

![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0ig0jubp7j311e07et9w.jpg)

打开VSCode的配置界面

键盘键入 `command+p`，在上方弹出的搜索框输入`settings`

![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0igvra501j30sc03sjrn.jpg)

配置如下json:
```json
{
    "latex-workshop.latex.tools": [
	    {
	        "name": "xelatex",
	        "command": "xelatex",
	        "args": [
	          "-synctex=1",
	          "-interaction=nonstopmode",
	          "-file-line-error",
	          "%DOC%"
        	]
        },
		{
	        "name": "pdflatex",
	        "command": "pdflatex",
	        "args": [
	          "-synctex=1",
	          "-interaction=nonstopmode",
	          "-file-line-error",
	          "%DOC%"
	        ]
	    },
	    {
	        "name": "bibtex",
	        "command": "bibtex",
	        "args": [
	          "%DOCFILE%"
	    	]
	    }
	],
	"latex-workshop.latex.recipes": [
		{
			"name": "xelatex",
			"tools": [
				"xelatex"
			]
		},
		{
			"name": "xe->bib->xe->xe",
			"tools": [
				"xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
			]
		},
		{
			"name": "latexmk",
			"tools": [
				"latexmk"
			]
		},
		{
			"name": "BibTeX",
			"tools": [
				"bibtex"
			]
		},
		{
			"name": "pdflatex -> bibtex -> pdflatex*2",
			"tools": [
				"pdflatex",
				"bibtex",
				"pdflatex",
				"pdflatex"
			]
		},
		{
			"name": "xelatex -> bibtex -> xelatex*2",
			"tools": [
				"xelatex",
				"bibtex",
				"xelatex",
				"xelatex"
			]
		},
		
],

}
```

保存.

随便打开一个tex文件,在右上角点击:![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0igwa1pe0j305q03ua9v.jpg)即可实时预览.

结果:

![](http://ww1.sinaimg.cn/large/006Uvlfagy1g0igy59escj32801e0trh.jpg)


## 待做模板:

- [ ] ~~毕业设计(论文)选题表 ~~ 表格排版实在是迷 放弃！
- [ ] ~~毕业设计(论文)任务书 网络151 王佩科~~表格排版实在是迷 放弃！
- [x] 开题答辩

---



# HHTheTem
