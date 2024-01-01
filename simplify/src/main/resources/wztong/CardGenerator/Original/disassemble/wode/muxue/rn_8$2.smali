.class Lwode/muxue/rn_8$2;
.super Ljava/lang/Object;
.source "rn_8.java"

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
.field final synthetic this$0:Lwode/muxue/rn_8;

.field final synthetic val$rn_30:Lrn_34/rn_35/rn_36/rn_973;

.field final synthetic val$rn_31:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwode/muxue/rn_8;Lrn_34/rn_35/rn_36/rn_973;Ljava/lang/String;)V
    .locals 0

    #@0
    .line 166
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
    .line 167
    iget-object v0, p0, Lwode/muxue/rn_8$2;->val$rn_30:Lrn_34/rn_35/rn_36/rn_973;

    #@2
    iget-object v1, p0, Lwode/muxue/rn_8$2;->val$rn_31:Ljava/lang/String;

    #@4
    const-string v2, "TIAMOmuxue  QQ:428663305"

    #@6
    const/4 v3, 0x0

    #@7
    const/16 v4, 0x1770

    #@9
    const-string v5, "UTF-8"

    #@b
    invoke-virtual/range {v0 .. v5}, Lrn_34/rn_35/rn_36/rn_973;->rn_1013(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 168
    iget-object v1, p0, Lwode/muxue/rn_8$2;->this$0:Lwode/muxue/rn_8;

    #@11
    new-instance v2, Lwode/muxue/rn_8$2$1;

    #@13
    invoke-direct {v2, p0, v0}, Lwode/muxue/rn_8$2$1;-><init>(Lwode/muxue/rn_8$2;Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, v2}, Lwode/muxue/rn_8;->runOnUiThread(Ljava/lang/Runnable;)V

    #@19
    .line 180
    return-void
.end method
