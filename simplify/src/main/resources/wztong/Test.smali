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

.method public static helloWorld()V
    .locals 5
    .prologue
    .line 9
    const/16 v2, 0x10
    new-array v0, v2, [B
    fill-array-data v0, :array_0
    .line 10
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;
    move-object v2,v0
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    .line 12
    .local v1, "output":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "helloWorld(): "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    .line 13
    return-void
    .line 9
    nop
    :array_0
    .array-data 1
        0x61t
        0x47t
        0x56t
        0x73t
        0x62t
        0x47t
        0x38t
        0x73t
        0x64t
        0x32t
        0x39t
        0x79t
        0x62t
        0x47t
        0x51t
        0x68t
    .end array-data
.end method
