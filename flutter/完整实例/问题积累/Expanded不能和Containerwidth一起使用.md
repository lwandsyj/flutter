1. Expanded 不能和Container width 一起使用不然会报错

    The following assertion was thrown while applying parent data.:
    I/flutter ( 7806): Incorrect use of ParentDataWidget.
    I/flutter ( 7806): The ParentDataWidget Expanded(flex: 1) wants to apply ParentData of type FlexParentData to a
    I/flutter ( 7806): RenderObject, which has been set up to accept ParentData of incompatible type ParentData.
    I/flutter ( 7806): Usually, this means that the Expanded widget has the wrong ancestor RenderObjectWidget. Typically,
    I/flutter ( 7806): Expanded widgets are placed directly inside Flex widgets.