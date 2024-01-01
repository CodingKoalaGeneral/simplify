.class Lwode/muxue/rn_8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwode/muxue/rn_8;->rn_27(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lwode/muxue/rn_8;

.field final val$rn_30:Lrn_34/rn_35/rn_36/rn_973;

.field final val$rn_31:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwode/muxue/rn_8;Lrn_34/rn_35/rn_36/rn_973;Ljava/lang/String;)V
    .locals 0

    #@0
    iput-object p1, p0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@2
    iput-object p2, p0, Lwode/muxue/rn_8$2;->val$rn_30:Lrn_34/rn_35/rn_36/rn_973;

    #@4
    iput-object p3, p0, Lwode/muxue/rn_8$2;->val$rn_31:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    const/4 v3, 0x0

    #@1
    const-string v0, "\u06e0\u06e8\u06e2"

    #@3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    move-object v1, v3

    #@8
    move v2, v0

    #@9
    :goto_0
    sparse-switch v2, :sswitch_data_0

    #@c
    goto :goto_0

    #@d
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@10
    move-result v0

    #@11
    if-gtz v0, :cond_1

    #@13
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@16
    const-string v0, "\u06e5\u06e1\u06e8"

    #@18
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    move v2, v0

    #@1d
    goto :goto_0

    #@1e
    :sswitch_1
    iget-object v0, p0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@20
    new-instance v2, Lwode/muxue/rn_8$2$1;

    #@22
    invoke-direct {v2, p0, v1}, Lwode/muxue/rn_8$2$1;-><init>(Lwode/muxue/rn_8$2;Ljava/lang/String;)V

    #@25
    invoke-virtual {v0, v2}, Lwode/muxue/rn_8;->runOnUiThread(Ljava/lang/Runnable;)V

    #@28
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@2b
    move-result v0

    #@2c
    if-ltz v0, :cond_0

    #@2e
    const-string v0, "\u06e1\u06df\u06e8"

    #@30
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    move v2, v0

    #@35
    goto :goto_0

    #@36
    :cond_0
    const-string v0, "\u06e8\u06e6\u06e1"

    #@38
    goto :goto_2

    #@39
    :cond_1
    const-string v0, "\u06e0\u06e8\u06e2"

    #@3b
    goto :goto_1

    #@3c
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@3e
    iget-object v0, p0, Lwode/muxue/rn_8$2;->val$rn_30:Lrn_34/rn_35/rn_36/rn_973;

    #@40
    iget-object v1, p0, Lwode/muxue/rn_8$2;->val$rn_31:Ljava/lang/String;

    #@42
    const-string v2, "TIAMOmuxue  QQ:428663305"

    #@44
    const/16 v4, 0x1770

    #@46
    const-string v5, "UTF-8"

    #@48
    invoke-virtual/range {v0 .. v5}, Lrn_34/rn_35/rn_36/rn_973;->rn_1013(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    const-string v1, "\u06e1\u06df\u06e8"

    #@4e
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@51
    move-result v2

    #@52
    move-object v1, v0

    #@53
    goto :goto_0

    #@54
    :sswitch_3
    return-void

    #@55
    nop

    #@56
    :sswitch_data_0
    .sparse-switch
        0xdcc2 -> :sswitch_0
        0x1aabda -> :sswitch_2
        0x1aae8a -> :sswitch_1
        0x1ac9a3 -> :sswitch_3
    .end sparse-switch
.end method
