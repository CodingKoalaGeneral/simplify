.class LConstantPropgationTest;
.super Ljava/lang/Object;

.method public static getIntegerMethod()I
  .locals 2
  new-instance v0, Ljava/lang/Integer;
  const/4 v1, 0x1
  nop
  nop
  invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
  invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
  move-result v0
  nop
  return v0
.end method


.method public static invokeIntegerMethods()I
  .locals 2
  invoke-static {}, LConstantPropgationTest;->getIntegerMethod()I
  move-result v0
  nop
  return v0
.end method