---
name: image-reader
description: >
  图片识别与理解工具。调用豆包多模态模型（doubao-seed-2.0-pro）分析图片内容，支持 OCR 文字提取和图片描述。
  当用户发送截图、图片，需要识别图片中的文字或理解图片内容时使用此 skill。
compatibility:
  requires:
    - Python 3
    - openai>=1.0.0
    - pyyaml>=6.0
---

# Image Reader Skill

图片识别与理解工具，调用豆包多模态模型分析图片内容。

---

## 功能

- **文字提取 (OCR)**：从图片中提取文字内容，适用于文档、截图、海报、菜单等
- **图片描述**：生成图片的详细描述，适用于照片、插画、表情包、UI 界面等
- **通用分析**：根据图片类型自动选择合适的分析方式

---

## API 配置

| 项目 | 内容 |
|------|------|
| API 地址 | `https://ark.cn-beijing.volces.com/api/coding/v3` |
| 模型 | `doubao-seed-2.0-pro` |
| 认证 | API Key（已在 config.yaml 中配置）|

---

## 使用方式

### 命令行

```bash
# 通用分析
python image_reader.py /path/to/image.png

# 提取文字（OCR）
python image_reader.py /path/to/image.png -p "提取图片中的所有文字内容"

# 描述图片
python image_reader.py /path/to/image.png -p "详细描述这张图片的内容"
```

### OpenClaw Skill 调用

安装后可通过自然语言调用：

```yaml
分析这张图片
提取图片中的文字
描述一下这个截图
```

---

## 返回结果

- **文字图片**：返回提取的全部文字内容，保持原有格式
- **非文字图片**：返回详细的场景描述，包括物体、人物、颜色、风格等
- **混合内容**：同时提供文字提取和视觉描述

---

## 技术细节

- 使用 OpenAI 兼容 API 调用豆包多模态模型
- 图片编码为 base64 后传输
- 系统提示词会根据图片类型自动选择合适的分析策略