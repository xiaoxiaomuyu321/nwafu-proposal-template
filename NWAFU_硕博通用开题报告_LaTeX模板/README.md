# 西北农林科技大学硕博通用开题报告 LaTeX 模板

本模板由用户提供的 Word/PDF 封面进行测量复刻，并结合论文模板整理正文格式。

## 1. 硕士 / 博士切换
只需修改：

```tex
settings/degree.tex
```

博士：

```tex
\def\ReportDegreeType{doctor}
```

硕士：

```tex
\def\ReportDegreeType{master}
```

切换后会同步改变：
- `nwafuthesis` 文档类型（doctor/master）
- 封面“博士研究生学位论文 / 硕士研究生学位论文”
- 正文页眉“博士研究生开题报告 / 硕士研究生开题报告”

## 2. 基本信息
修改：

```tex
settings/info.tex
```

填写年级、题目、英文题目、学院、一级学科、姓名学号、导师、开题论证组及日期。

## 3. 正文
正文位于 `contents/`：
- `01-basis.tex` 选题依据
- `02-content.tex` 研究内容及拟解决的关键问题
- `03-scheme.tex` 研究方案及可行性分析
- `04-outcomes.tex` 预期成果、创新之处及社会效益
- `05-schedule-budget.tex` 工作进度安排及经费预算

## 4. 编译
推荐 XeLaTeX：

```bash
latexmk -xelatex main.tex
```

Windows 上安装有 SimSun、SimHei、DengXian Light、Times New Roman 时，封面字体与原 Word 最接近；其他环境会自动使用开源字体回退。
