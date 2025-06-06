# Flutter Clean Architecture

[中文](README.ZH.md) | [English](README.md)

这是一个脚手架类型的项目，使用Riverpod实现了简洁的架构来进行状态管理的应用程序。该应用程序以干净的代码和体系结构为重点构建，使其易于维护和
延伸。它使用Riverpod进行状态管理。

## 主要特点

- [x] 应用程序的结构遵循简洁的 使代码库易于浏览和理解。
- [x] Riverpod 用于管理应用程序状态。
- [x] 主题切换：用户可在明暗主题之间切换，增强用户体验。
- [x] 语言切换：应用程序支持多种语言。
- [x] 网络请求： 该应用程序支持使用 Dio 的网络请求。
- [x] 应用程序使用 freezed 和 json_annotation 库来简化序列化和反序列化 JSON 数据。
- [x] 使用 shared_preferences 来存储用户首选项，如 选择的主题和语言。
- [x] 使用 AutoRoute 管理应用程序的路由。

## 架构描述

![Clean Architecture](arch.png)

依据 DDD 设计思想，以及洋葱架构分层的代码组织方式，进行了 Clean Architecture
架构设计，将应用大致分为三层领域：domain、data、presentation。不同项目所划分的层次可能会有所不同，但是核心思想大致相同。通过合理的结构层次划分将应应用的各个部分之间的耦合度降低，便于维护和扩展。

在这个架构中，所划分的这些层并不是堆叠在一起的；相反，它们类似于洋葱的层。每一层都可以访问它的内层或自己同级的层，但是不能访问外层。这种结构使得应用的各个部分之间的耦合度降低，便于维护和扩展。

### Domain

Domain 层是应用的核心层，包含了应用的业务逻辑和领域模型。不依赖于任何其他层。Domain，应当是一个独立的纯
Dart 模块， 层包大致含了以下内容：

- Models：模型，包含了应用的数据模型。
- Repositories：领域仓库，定义了应用与数据层之间的接口。
- Use cases：用例，包含了应用的核心业务逻辑，它无需知道数据源的具体实现，无论数据源来自哪里，这是因为这些具体的实现细节都已经被抽象出了接口并由数据层来实现。

### Data

Data 层是应用的数据层，负责与数据源进行交互。它包含了以下内容：

- Entity：实体模型，与 Models 不同，Entity 是与数据源相关的模型。
- Data sources：数据源，负责与数据源进行交互。
- Repositories：数据仓库，实现了 Domain 层定义的接口。

### Presentation

Presentation 层是应用的表示层，负责与用户进行交互。这里才是真正编写 Flutter 组件和状态管理。它包含了以下内容：

- UI：用户界面，包含了应用的界面元素。
- View models：视图模型，负责管理界面的状态和业务逻辑。
- State management：状态管理，负责管理应用的状态。

> 在这里不仅仅是可以使用 riverpod 还可以使用其他的状态管理库，比如 provider、Bloc等等。